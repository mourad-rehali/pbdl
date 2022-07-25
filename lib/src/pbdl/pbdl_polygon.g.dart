// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pbdl_polygon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PBDLPolygon _$PBDLPolygonFromJson(Map<String, dynamic> json) {
  return PBDLPolygon(
    UUID: json['UUID'] as String,
    boundaryRectangle: json['boundaryRectangle'] == null
        ? null
        : PBDLBoundaryBox.fromJson(
            json['boundaryRectangle'] as Map<String, dynamic>),
    isVisible: json['isVisible'] as bool,
    name: json['name'] as String,
    style: json['style'] == null
        ? null
        : PBDLStyle.fromJson(json['style'] as Map<String, dynamic>),
    child: json['child'] == null
        ? null
        : PBDLNode.fromJson(json['child'] as Map<String, dynamic>),
    prototypeNodeUUID: json['prototypeNodeUUID'] as String,
    layoutMainAxisSizing:
        PBDLNode.parentLayoutFromString(json['layoutMainAxisSizing'] as String),
    layoutCrossAxisSizing: PBDLNode.parentLayoutFromString(
        json['layoutCrossAxisSizing'] as String),
  )
    ..constraints = json['constraints'] == null
        ? null
        : PBDLConstraints.fromJson(json['constraints'] as Map<String, dynamic>)
    ..pbdlType = json['pbdlType'] as String;
}

Map<String, dynamic> _$PBDLPolygonToJson(PBDLPolygon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('UUID', instance.UUID);
  writeNotNull('layoutMainAxisSizing',
      _$ParentLayoutSizingEnumMap[instance.layoutMainAxisSizing]);
  writeNotNull('layoutCrossAxisSizing',
      _$ParentLayoutSizingEnumMap[instance.layoutCrossAxisSizing]);
  writeNotNull('name', instance.name);
  writeNotNull('isVisible', instance.isVisible);
  writeNotNull('boundaryRectangle', instance.boundaryRectangle?.toJson());
  writeNotNull('style', instance.style?.toJson());
  writeNotNull('prototypeNodeUUID', instance.prototypeNodeUUID);
  writeNotNull('constraints', instance.constraints?.toJson());
  val['pbdlType'] = instance.pbdlType;
  val['child'] = instance.child?.toJson();
  return val;
}

const _$ParentLayoutSizingEnumMap = {
  ParentLayoutSizing.INHERIT: 'INHERIT',
  ParentLayoutSizing.STRETCH: 'STRETCH',
  ParentLayoutSizing.NONE: 'NONE',
};
