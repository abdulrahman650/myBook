// import 'dart:convert';
//
// import 'package:mybook/features/home/data/panelization_summary.dart';
// import 'package:mybook/features/home/data/raeding_modes.dart';
//
// import 'image_links.dart';
// import 'industory_identifier.dart';
// //
// // VolumeInfo volumeInfoFromJson(String str) => VolumeInfo.fromJson(json.decode(str));
// // String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());
// // class VolumeInfo {
// //   VolumeInfo({
// //     String? title,
// //     List<String>? authors,
// //     String? publishedDate,
// //     List<IndustryIdentifiers>? industryIdentifiers,
// //     ReadingModes? readingModes,
// //     num? pageCount,
// //     String? printType,
// //     List<String>? categories,
// //     String? maturityRating,
// //     bool? allowAnonLogging,
// //     String? contentVersion,
// //     PanelizationSummary? panelizationSummary,
// //     ImageLinks? imageLinks,
// //     String? language,
// //     String? previewLink,
// //     String? infoLink,
// //     String? canonicalVolumeLink,}){
// //     _title = title;
// //     _authors = authors;
// //     _publishedDate = publishedDate;
// //     _industryIdentifiers = industryIdentifiers;
// //     _readingModes = readingModes;
// //     _pageCount = pageCount;
// //     _printType = printType;
// //     _categories = categories;
// //     _maturityRating = maturityRating;
// //     _allowAnonLogging = allowAnonLogging;
// //     _contentVersion = contentVersion;
// //     _panelizationSummary = panelizationSummary;
// //     _imageLinks = imageLinks;
// //     _language = language;
// //     _previewLink = previewLink;
// //     _infoLink = infoLink;
// //     _canonicalVolumeLink = canonicalVolumeLink;
// //   }
// //
// //   VolumeInfo.fromJson(dynamic json) {
// //     _title = json['title'];
// //     _authors = (json['authors'] as List<dynamic>?)?.cast<String>();
// //     _publishedDate = json['publishedDate'];
// //     if (json['industryIdentifiers'] != null) {
// //       _industryIdentifiers = [];
// //       json['industryIdentifiers'].forEach((v) {
// //         _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
// //       });
// //     }
// //     _readingModes = json['readingModes'] != null ? ReadingModes.fromJson(json['readingModes']) : null;
// //     _pageCount = json['pageCount'];
// //     _printType = json['printType'];
// //     _categories = (json['categories']as List<dynamic>?)?.cast<String>() ;
// //     _maturityRating = json['maturityRating'];
// //     _allowAnonLogging = json['allowAnonLogging'];
// //     _contentVersion = json['contentVersion'];
// //     _panelizationSummary = json['panelizationSummary'] != null ? PanelizationSummary.fromJson(json['panelizationSummary']) : null;
// //     _imageLinks = json['imageLinks'] != null ? ImageLinks.fromJson(json['imageLinks']) : null;
// //     _language = json['language'];
// //     _previewLink = json['previewLink'];
// //     _infoLink = json['infoLink'];
// //     _canonicalVolumeLink = json['canonicalVolumeLink'];
// //   }
// //   String? _title;
// //   List<dynamic>? _authors;
// //   String? _publishedDate;
// //   List<IndustryIdentifiers>? _industryIdentifiers;
// //   ReadingModes? _readingModes;
// //   num? _pageCount;
// //   String? _printType;
// //   List<dynamic>? _categories;
// //   String? _maturityRating;
// //   bool? _allowAnonLogging;
// //   String? _contentVersion;
// //   PanelizationSummary? _panelizationSummary;
// //   ImageLinks? _imageLinks;
// //   String? _language;
// //   String? _previewLink;
// //   String? _infoLink;
// //   String? _canonicalVolumeLink;
// //   VolumeInfo copyWith({  String? title,
// //     List<String>? authors,
// //     String? publishedDate,
// //     List<IndustryIdentifiers>? industryIdentifiers,
// //     ReadingModes? readingModes,
// //     num? pageCount,
// //     String? printType,
// //     List<String>? categories,
// //     String? maturityRating,
// //     bool? allowAnonLogging,
// //     String? contentVersion,
// //     PanelizationSummary? panelizationSummary,
// //     ImageLinks? imageLinks,
// //     String? language,
// //     String? previewLink,
// //     String? infoLink,
// //     String? canonicalVolumeLink,
// //   }) => VolumeInfo(  title: title ?? _title,
// //     authors: authors?? _authors,
// //     publishedDate: publishedDate ?? _publishedDate,
// //     industryIdentifiers: industryIdentifiers ?? _industryIdentifiers,
// //     readingModes: readingModes ?? _readingModes,
// //     pageCount: pageCount ?? _pageCount,
// //     printType: printType ?? _printType,
// //     categories: categories ?? _categories,
// //     maturityRating: maturityRating ?? _maturityRating,
// //     allowAnonLogging: allowAnonLogging ?? _allowAnonLogging,
// //     contentVersion: contentVersion ?? _contentVersion,
// //     panelizationSummary: panelizationSummary ?? _panelizationSummary,
// //     imageLinks: imageLinks ?? _imageLinks,
// //     language: language ?? _language,
// //     previewLink: previewLink ?? _previewLink,
// //     infoLink: infoLink ?? _infoLink,
// //     canonicalVolumeLink: canonicalVolumeLink ?? _canonicalVolumeLink,
// //   );
// //   String? get title => _title;
// //   List<dynamic>? get authors => _authors;
// //   String? get publishedDate => _publishedDate;
// //   List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;
// //   ReadingModes? get readingModes => _readingModes;
// //   num? get pageCount => _pageCount;
// //   String? get printType => _printType;
// //   List<dynamic>? get categories => _categories;
// //   String? get maturityRating => _maturityRating;
// //   bool? get allowAnonLogging => _allowAnonLogging;
// //   String? get contentVersion => _contentVersion;
// //   PanelizationSummary? get panelizationSummary => _panelizationSummary;
// //   ImageLinks? get imageLinks => _imageLinks;
// //   String? get language => _language;
// //   String? get previewLink => _previewLink;
// //   String? get infoLink => _infoLink;
// //   String? get canonicalVolumeLink => _canonicalVolumeLink;
// //
// //   Map<String, dynamic> toJson() {
// //     final map = <String, dynamic>{};
// //     map['title'] = _title;
// //     map['authors'] = _authors;
// //     map['publishedDate'] = _publishedDate;
// //     if (_industryIdentifiers != null) {
// //       map['industryIdentifiers'] = _industryIdentifiers?.map((v) => v.toJson()).toList();
// //     }
// //     if (_readingModes != null) {
// //       map['readingModes'] = _readingModes?.toJson();
// //     }
// //     map['pageCount'] = _pageCount;
// //     map['printType'] = _printType;
// //     map['categories'] = _categories;
// //     map['maturityRating'] = _maturityRating;
// //     map['allowAnonLogging'] = _allowAnonLogging;
// //     map['contentVersion'] = _contentVersion;
// //     if (_panelizationSummary != null) {
// //       map['panelizationSummary'] = _panelizationSummary?.toJson();
// //     }
// //     if (_imageLinks != null) {
// //       map['imageLinks'] = _imageLinks?.toJson();
// //     }
// //     map['language'] = _language;
// //     map['previewLink'] = _previewLink;
// //     map['infoLink'] = _infoLink;
// //     map['canonicalVolumeLink'] = _canonicalVolumeLink;
// //     return map;
// //   }
// //
// // }
// class VolumeInfo {
//   final String? title;
//   final List<String>? authors;
//   final String? publishedDate;
//   final List<IndustryIdentifiers>? industryIdentifiers;
//   final ReadingModes? readingModes;
//   final int? pageCount;
//   final String? printType;
//   final List<String>? categories;
//   final String? maturityRating;
//   final bool? allowAnonLogging;
//   final String? contentVersion;
//   final PanelizationSummary? panelizationSummary;
//   final ImageLinks? imageLinks;
//   final String? language;
//   final String? previewLink;
//   final String? infoLink;
//   final String? canonicalVolumeLink;
//
//   VolumeInfo({
//     this.title,
//     this.authors,
//     this.publishedDate,
//     this.industryIdentifiers,
//     this.readingModes,
//     this.pageCount,
//     this.printType,
//     this.categories,
//     this.maturityRating,
//     this.allowAnonLogging,
//     this.contentVersion,
//     this.panelizationSummary,
//     this.imageLinks,
//     this.language,
//     this.previewLink,
//     this.infoLink,
//     this.canonicalVolumeLink,
//   });
//
//   factory VolumeInfo.fromJson(Map<String, dynamic> json) {
//     return VolumeInfo(
//       title: json['title'],
//       authors: (json['authors'] as List?)?.cast<String>(),
//       publishedDate: json['publishedDate'],
//       industryIdentifiers: (json['industryIdentifiers'] as List?)
//           ?.map((e) => IndustryIdentifiers.fromJson(e))
//           .toList(),
//       readingModes: json['readingModes'] != null
//           ? ReadingModes.fromJson(json['readingModes'])
//           : null,
//       pageCount: json['pageCount'],
//       printType: json['printType'],
//       categories: (json['categories'] as List?)?.cast<String>(),
//       maturityRating: json['maturityRating'],
//       allowAnonLogging: json['allowAnonLogging'],
//       contentVersion: json['contentVersion'],
//       panelizationSummary: json['panelizationSummary'] != null
//           ? PanelizationSummary.fromJson(json['panelizationSummary'])
//           : null,
//       imageLinks: json['imageLinks'] != null
//           ? ImageLinks.fromJson(json['imageLinks'])
//           : null,
//       language: json['language'],
//       previewLink: json['previewLink'],
//       infoLink: json['infoLink'],
//       canonicalVolumeLink: json['canonicalVolumeLink'],
//     );
//   }
//
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'authors': authors,
//       'publishedDate': publishedDate,
//       'industryIdentifiers':
//       industryIdentifiers?.map((e) => e.toJson()).toList(),
//       'readingModes': readingModes?.toJson(),
//       'pageCount': pageCount,
//       'printType': printType,
//       'categories': categories,
//       'maturityRating': maturityRating,
//       'allowAnonLogging': allowAnonLogging,
//       'contentVersion': contentVersion,
//       'panelizationSummary': panelizationSummary?.toJson(),
//       'imageLinks': imageLinks?.toJson(),
//       'language': language,
//       'previewLink': previewLink,
//       'infoLink': infoLink,
//       'canonicalVolumeLink': canonicalVolumeLink,
//     };
//   }
//
//   VolumeInfo copyWith({
//     String? title,
//     List<String>? authors,
//     String? publishedDate,
//     List<IndustryIdentifiers>? industryIdentifiers,
//     ReadingModes? readingModes,
//     int? pageCount,
//     String? printType,
//     List<String>? categories,
//     String? maturityRating,
//     bool? allowAnonLogging,
//     String? contentVersion,
//     PanelizationSummary? panelizationSummary,
//     ImageLinks? imageLinks,
//     String? language,
//     String? previewLink,
//     String? infoLink,
//     String? canonicalVolumeLink,
//   }) {
//     return VolumeInfo(
//       title: title ?? this.title,
//       authors: authors ?? this.authors,
//       publishedDate: publishedDate ?? this.publishedDate,
//       industryIdentifiers:
//       industryIdentifiers ?? this.industryIdentifiers,
//       readingModes: readingModes ?? this.readingModes,
//       pageCount: pageCount ?? this.pageCount,
//       printType: printType ?? this.printType,
//       categories: categories ?? this.categories,
//       maturityRating: maturityRating ?? this.maturityRating,
//       allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
//       contentVersion: contentVersion ?? this.contentVersion,
//       panelizationSummary:
//       panelizationSummary ?? this.panelizationSummary,
//       imageLinks: imageLinks ?? this.imageLinks,
//       language: language ?? this.language,
//       previewLink: previewLink ?? this.previewLink,
//       infoLink: infoLink ?? this.infoLink,
//       canonicalVolumeLink:
//       canonicalVolumeLink ?? this.canonicalVolumeLink,
//     );
//   }
// }
