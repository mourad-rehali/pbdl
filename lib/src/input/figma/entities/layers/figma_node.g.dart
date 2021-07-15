// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'figma_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FigmaNode _$FigmaNodeFromJson(Map<String, dynamic> json) {
  return FigmaNode(
    json['name'] as String,
    json['visible'] as bool ?? true,
    json['type'] as String,
    json['pluginData'],
    json['sharedPluginData'],
    UUID: json['id'] as String,
    prototypeNodeUUID: json['transitionNodeID'] as String,
    transitionDuration: json['transitionDuration'] as num,
    transitionEasing: json['transitionEasing'] as String,
  )
    ..boundaryRectangle = json['boundaryRectangle'] == null
        ? null
        : FigmaRect.fromJson(json['boundaryRectangle'] as Map<String, dynamic>)
    ..child = json['child'] == null
        ? null
        : FigmaNode.fromJson(json['child'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FigmaNodeToJson(FigmaNode instance) => <String, dynamic>{
      'id': instance.UUID,
      'name': instance.name,
      'type': instance.type,
      'pluginData': instance.pluginData,
      'sharedPluginData': instance.sharedPluginData,
      'boundaryRectangle': instance.boundaryRectangle,
      'child': instance.child,
      'visible': instance.isVisible,
      'transitionNodeID': instance.prototypeNodeUUID,
      'transitionDuration': instance.transitionDuration,
      'transitionEasing': instance.transitionEasing,
    };
