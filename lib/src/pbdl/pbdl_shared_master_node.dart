import 'package:pbdl/src/pbdl/pbdl_node.dart';
import 'package:pbdl/src/pbdl/pbdl_override_property.dart';
import 'abstract_pbdl_node_factory.dart';
import 'pbdl_group_node.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pbdl_shared_master_node.g.dart';

@JsonSerializable(explicitToJson: true)
class PBDLSharedMasterNode extends PBDLNode
    implements PBDLNodeFactory, PBDLGroupNode {
  String symbolID;

  List<PBDLOverrideProperty> overrideProperties;

  @override
  List<PBDLNode> children = [];

  @override
  final type = 'shared_master';

  PBDLSharedMasterNode({
    String UUID,
    this.overrideProperties,
    String name,
    bool isVisible,
    boundaryRectangle,
    style,
    String prototypeNodeUUID,
    bool hasClickThrough,
    groupLayout,
    booleanOperation,
    exportOptions,
    isFixedToViewport,
    isFlippedHorizontal,
    isFlippedVertical,
    isLocked,
    layerListExpandedType,
    presetDictionary,
    bool allowsOverrides,
    nameIsFixed,
    resizingConstraint,
    resizingType,
    horizontalRulerData,
    bool hasBackgroundColor,
    rotation,
    sharedStyleID,
    shouldBreakMaskChain,
    hasClippingMask,
    clippingMaskMode,
    userInfo,
    maintainScrollPosition,
    bool includeBackgroundColorInExport,
    int changeIdentifier,
    String this.symbolID,
    bool includeBackgroundColorInInstance,
    verticalRulerData,
    bool resizesContent,
    bool includeInCloudUpload,
    bool isFlowHome,
    List parameters,
    this.children,
  }) : super(
          UUID,
          name,
          isVisible,
          boundaryRectangle,
          style,
          prototypeNodeUUID,
        );

  @override
  PBDLNode createPBDLNode(Map<String, dynamic> json) =>
      PBDLSharedMasterNode.fromJson(json);
  factory PBDLSharedMasterNode.fromJson(Map<String, dynamic> json) =>
      _$PBDLSharedMasterNodeFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PBDLSharedMasterNodeToJson(this);
}