import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loading_animation_widget.dart' show LoadingAnimationWidget;
import 'package:flutter/material.dart';

class LoadingAnimationModel extends FlutterFlowModel<LoadingAnimationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RiveAnimation widget.
  final riveAnimationAnimationsList = [
    '',
  ];
  List<FlutterFlowRiveController> riveAnimationControllers = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    for (var name in riveAnimationAnimationsList) {
      riveAnimationControllers.add(FlutterFlowRiveController(
        name,
      ));
    }
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
