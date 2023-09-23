import 'dart:convert';
import 'package:equatable/equatable.dart';

class ZikrText extends Equatable {
  final int id;
  final int titleId;
  final int subZikrId;
  final int order;
  final String body;
  final String source;
  final String fadl;
  final int count;
  final String footnote;

  const ZikrText({
    required this.id,
    required this.titleId,
    required this.subZikrId,
    required this.order,
    required this.body,
    required this.source,
    required this.fadl,
    required this.count,
    required this.footnote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'titleId': titleId,
      'subZikrId': subZikrId,
      'order': order,
      'body': body,
      'source': source,
      'fadl': fadl,
      'count': count,
      'footnote': footnote,
    };
  }

  factory ZikrText.fromMap(Map<String, dynamic> map) {
    return ZikrText(
      id: map['id'] as int,
      titleId: map['titleId'] as int,
      subZikrId: map['subZikrId'] as int,
      order: map['order'] as int,
      body: map['body'] as String,
      source: (map['source'] as String?) ?? "",
      fadl: (map['fadl'] as String?) ?? "",
      count: map['count'] as int,
      footnote: (map['footnote'] as String?) ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory ZikrText.fromJson(String source) =>
      ZikrText.fromMap(json.decode(source) as Map<String, dynamic>);

  ZikrText copyWith({
    int? id,
    int? titleId,
    int? subZikrId,
    int? order,
    String? body,
    String? source,
    String? fadl,
    int? count,
    String? footnote,
  }) {
    return ZikrText(
      id: id ?? this.id,
      titleId: titleId ?? this.titleId,
      subZikrId: subZikrId ?? this.subZikrId,
      order: order ?? this.order,
      body: body ?? this.body,
      source: source ?? this.source,
      fadl: fadl ?? this.fadl,
      count: count ?? this.count,
      footnote: footnote ?? this.footnote,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      titleId,
      subZikrId,
      order,
      body,
      source,
      count,
      fadl,
      footnote,
    ];
  }
}
