import '/components/app_illustration_div_widget.dart';
import '/components/top_character_status_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'character_page_widget.dart' show CharacterPageWidget;
import 'package:flutter/material.dart';

class CharacterPageModel extends FlutterFlowModel<CharacterPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopCharacterStatusComponent component.
  late TopCharacterStatusComponentModel topCharacterStatusComponentModel;
  // Model for AppIllustrationDiv component.
  late AppIllustrationDivModel appIllustrationDivModel;

  @override
  void initState(BuildContext context) {
    topCharacterStatusComponentModel =
        createModel(context, () => TopCharacterStatusComponentModel());
    appIllustrationDivModel =
        createModel(context, () => AppIllustrationDivModel());
  }

  @override
  void dispose() {
    topCharacterStatusComponentModel.dispose();
    appIllustrationDivModel.dispose();
  }
}
