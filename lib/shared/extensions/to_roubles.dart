extension FormatToSpaced on num {
  String formatToSpaced() {
    var parts = toString().split(".");
    parts[0] = parts[0].replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), " ");
    return parts.join(".");
  }
}
