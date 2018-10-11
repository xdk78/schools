import 'dart:math' as m;

// From https://gist.github.com/kevmoo/8784c4fca25b4a2cd17101586deecaa0
String generateUuidv4() {
  var rnd = new m.Random.secure();

  var bytes = new List<int>.generate(16, (_) => rnd.nextInt(256));
  bytes[6] = (bytes[6] & 0x0F) | 0x40;
  bytes[8] = (bytes[8] & 0x3f) | 0x80;

  var chars = bytes
      .map((b) => b.toRadixString(16).padLeft(2, '0'))
      .join()
      .toUpperCase();

  return '${chars.substring(0, 8)}-${chars.substring(8, 12)}-'
      '${chars.substring(12, 16)}-${chars.substring(16, 20)}-${chars.substring(20, 32)}';
}