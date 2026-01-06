import 'dart:async';
import 'dart:isolate';
import 'dart:math';

// 1. Define Message Types using Records & Sealed Classes
sealed class WorkerMessage {}
class ResultMessage extends WorkerMessage {
  final int input;
  final int result;
  ResultMessage(this.input, this.result);
}

void main() async {
  final receivePort = ReceivePort();
  
  // Start a worker isolate
  print('--- Starting Worker Isolate ---');
  final isolate = await Isolate.spawn(workerTask, receivePort.sendPort);

  // 2. Using Pattern Matching to handle incoming stream data
  receivePort.listen((message) {
    switch (message) {
      case (int input, int output): 
        print('✅ Processed: $input -> $output');
      case "READY":
        print('🚀 Worker is ready for commands.');
      case "ERROR":
        print('⚠️ Worker encountered an error.');
      default:
        print('❓ Unknown message format');
    }
  });

  // Simulate sending data to the worker (in a real app, you'd send via another SendPort)
  print('--- System Initialized ---');
}

// 3. The Background Worker Logic
void workerTask(SendPort mainSendPort) {
  // Signal to main isolate that we are ready
  mainSendPort.send("READY");

  // Simulate some heavy computation
  Timer.periodic(Duration(seconds: 1), (timer) {
    final input = Random().nextInt(100);
    final result = input * 2; // Simulated "work"
    
    // Send back a Record (Dart 3 feature)
    mainSendPort.send((input, result));
  });
}