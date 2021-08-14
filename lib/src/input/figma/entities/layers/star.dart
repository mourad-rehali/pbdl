import 'package:json_annotation/json_annotation.dart';
import 'package:pbdl/src/input/figma/entities/style/figma_style.dart';
import 'package:pbdl/src/input/figma/helper/figma_asset_processor.dart';
import 'package:pbdl/src/input/figma/helper/figma_rect.dart';
import 'package:pbdl/src/pbdl/pbdl_image.dart';
import 'package:pbdl/src/pbdl/pbdl_node.dart';

import '../abstract_figma_node_factory.dart';
import 'figma_node.dart';
import 'vector.dart';

part 'star.g.dart';

@JsonSerializable()
class FigmaStar extends FigmaVector implements AbstractFigmaNodeFactory {
  @override
  String type = 'STAR';
  FigmaStar({
    String name,
    bool visible,
    String type,
    pluginData,
    sharedPluginData,
    layoutAlign,
    constraints,
    boundaryRectangle,
    size,
    fills,
    strokes,
    strokeWeight,
    strokeAlign,
    styles,
    String transitionNodeID,
    num transitionDuration,
    String transitionEasing,
  }) : super(
          name: name,
          visible: visible,
          type: type,
          pluginData: pluginData,
          sharedPluginData: sharedPluginData,
          layoutAlign: layoutAlign,
          constraints: constraints,
          boundaryRectangle: boundaryRectangle == null
              ? null
              : FigmaRect.fromJson(boundaryRectangle),
          size: size,
          strokes: strokes,
          strokeWeight: strokeWeight,
          strokeAlign: strokeAlign,
          styles: styles,
          transitionNodeID: transitionNodeID,
          transitionDuration: transitionDuration,
          transitionEasing: transitionEasing,
        );
  @override
  FigmaNode createFigmaNode(Map<String, dynamic> json) =>
      FigmaStar.fromJson(json);
  factory FigmaStar.fromJson(Map<String, dynamic> json) =>
      _$FigmaStarFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$FigmaStarToJson(this);

  @override
  Future<PBDLNode> interpretNode() {
    imageReference = FigmaAssetProcessor().processImage(UUID);
    return Future.value(PBDLImage(
      imageReference: imageReference,
      UUID: UUID,
      boundaryRectangle: boundaryRectangle.interpretFrame(),
      isVisible: isVisible,
      name: name,
      prototypeNodeUUID: transitionNodeID,
    ));
  }

  @override
  Map<String, dynamic> toPBDF() => toJson();
}
