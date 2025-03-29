import '/components/app_illustration_div_widget.dart';
import '/components/bottom_bar_widget.dart';
import '/components/top_character_status_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopCharacterStatusComponent component.
  late TopCharacterStatusComponentModel topCharacterStatusComponentModel;
  // Model for AppIllustrationDiv component.
  late AppIllustrationDivModel appIllustrationDivModel;
  // Model for BottomBar component.
  late BottomBarModel bottomBarModel;

  @override
  void initState(BuildContext context) {
    topCharacterStatusComponentModel =
        createModel(context, () => TopCharacterStatusComponentModel());
    appIllustrationDivModel =
        createModel(context, () => AppIllustrationDivModel());
    bottomBarModel = createModel(context, () => BottomBarModel());
  }

  @override
  void dispose() {
    topCharacterStatusComponentModel.dispose();
    appIllustrationDivModel.dispose();
    bottomBarModel.dispose();
  }
}
