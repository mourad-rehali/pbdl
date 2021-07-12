import 'package:pbdl/src/pbdl/pbdl_font_descriptor.dart';
import 'package:pbdl/src/pbdl/pbdl_paragraph_style.dart';

import 'pbdl_color.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pbdl_text_style.g.dart';

@JsonSerializable()
class PBDLTextStyle {
  PBDLColor fontColor;
  String weight;
  PBDLFontDescriptor fontDescriptor;
  PBDLParagraphStyle paragraphStyle;

  PBDLTextStyle({
    this.fontColor,
    this.weight,
    this.paragraphStyle,
  });

  @override
  factory PBDLTextStyle.fromJson(Map<String, dynamic> json) =>
      _$PBDLTextStyleFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PBDLTextStyleToJson(this);
}
