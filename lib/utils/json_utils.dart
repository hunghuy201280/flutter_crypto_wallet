import 'dart:ui';

class JsonUtils {
  static Color colorFromJson(json) {
    return Color(json);
  }

  static int colorToJson(Color color) {
    return color.value;
  }
}
