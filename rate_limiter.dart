import 'dart:async';

/// A Senior-level challenge: Implementing a custom Async Rate Limiter.
/// This prevents a stream from emitting more than one event per 'window'.
class RateLimiter<T> extends StreamTransformerBase<T, T> {
  final Duration window;

  RateLimiter(this.window);

  @override
  Stream<T> bind(Stream<T> stream) {
    StreamSubscription<T>? subscription;
    late StreamController<T> controller;
    DateTime? lastEmitted;

    controller = StreamController<T>(
      onListen: () {
        subscription = stream.listen(
          (data) {
            final now = DateTime.now();
            
            // Logic: Only emit if the 'window' duration has passed
            if (lastEmitted == null || now.difference(lastEmitted!) > window) {
              lastEmitted = now;
              controller.add(data);
            }
          },
          onError: controller.addError,
          onDone: controller.close,
          cancelOnError: true,
        );
      },
      onPause: () => subscription?.pause(),
      onResume: () => subscription?.resume(),
      onCancel: () => subscription?.cancel(),
    );

    return controller.stream;
  }
}

void main() async {
  // 1. Create a stream that fires every 100ms
  final fastStream = Stream.periodic(
    const Duration(milliseconds: 100), 
    (i) => "Event $i"
  ).take(10);

  print("🚀 Starting Rate Limited Stream (1 event per 500ms)...");

  // 2. Apply the custom transformer
  final limitedStream = fastStream.transform(RateLimiter(const Duration(milliseconds: 500)));

  // 3. Listen to results
  await for (final event in limitedStream) {
    print("⏰ Emitted: $event at ${DateTime.now().second}.${DateTime.now().millisecond}");
  }
  
  print("✅ Done.");
}