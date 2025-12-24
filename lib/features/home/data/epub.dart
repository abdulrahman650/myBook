// import 'dart:convert';
//
// Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
// String epubToJson(Epub data) => json.encode(data.toJson());
// class Epub {
//   Epub({
//     bool? isAvailable,
//     String? downloadLink,}){
//     _isAvailable = isAvailable;
//     _downloadLink = downloadLink;
//   }
//
//   Epub.fromJson(dynamic json) {
//     _isAvailable = json['isAvailable'];
//     _downloadLink = json['downloadLink'];
//   }
//   bool? _isAvailable;
//   String? _downloadLink;
//   Epub copyWith({  bool? isAvailable,
//     String? downloadLink,
//   }) => Epub(  isAvailable: isAvailable ?? _isAvailable,
//     downloadLink: downloadLink ?? _downloadLink,
//   );
//   bool? get isAvailable => _isAvailable;
//   String? get downloadLink => _downloadLink;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['isAvailable'] = _isAvailable;
//     map['downloadLink'] = _downloadLink;
//     return map;
//   }
//
// }