class ImageHelper {
  /// Fix image url for Flutter Web (http -> https)
  static String fixUrl(String? url) {
    if (url == null || url.isEmpty) return '';
    if (url.startsWith('http://')) {
      return url.replaceFirst('http://', 'https://');
    }
    return url;
  }
  /// Check if image url is valid
  static bool isValid(String? url) {
    return url != null && url.trim().isNotEmpty;
  }
}
