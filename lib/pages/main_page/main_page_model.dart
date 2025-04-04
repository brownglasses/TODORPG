import '/components/top_character_status_component/top_character_status_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopCharacterStatusComponent component.
  late TopCharacterStatusComponentModel topCharacterStatusComponentModel;

  @override
  void initState(BuildContext context) {
    topCharacterStatusComponentModel =
        createModel(context, () => TopCharacterStatusComponentModel());
  }

  @override
  void dispose() {
    topCharacterStatusComponentModel.dispose();
  }
}
