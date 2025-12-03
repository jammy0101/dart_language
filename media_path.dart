/// Base value object for any media path (URL or relative storage path).
abstract class MediaPath {
  final String value;
  const MediaPath(this.value);

  bool get isAbsolute;
  bool get isRelative;
}
