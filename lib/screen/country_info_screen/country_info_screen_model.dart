import '/component/loading_animation/loading_animation_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'country_info_screen_widget.dart' show CountryInfoScreenWidget;
import 'package:flutter/material.dart';

class CountryInfoScreenModel extends FlutterFlowModel<CountryInfoScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Loading_Animation component.
  late LoadingAnimationModel loadingAnimationModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loadingAnimationModel = createModel(context, () => LoadingAnimationModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loadingAnimationModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
