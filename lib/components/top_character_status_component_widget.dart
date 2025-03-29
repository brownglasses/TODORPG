import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_character_status_component_model.dart';
export 'top_character_status_component_model.dart';

class TopCharacterStatusComponentWidget extends StatefulWidget {
  const TopCharacterStatusComponentWidget({super.key});

  @override
  State<TopCharacterStatusComponentWidget> createState() =>
      _TopCharacterStatusComponentWidgetState();
}

class _TopCharacterStatusComponentWidgetState
    extends State<TopCharacterStatusComponentWidget> {
  late TopCharacterStatusComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopCharacterStatusComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/photo2pixel_download_(6).png',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/DevSprint_2025_(1).png',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 2.0, 10.0, 2.0),
                        child: Text(
                          '쎼쎼',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.settings_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/icon_hp.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 200.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFCA2A5C),
                      ),
                    ),
                  ].divide(SizedBox(width: 2.0)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/icon_mp.png',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 200.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A75CA),
                      ),
                    ),
                  ].divide(SizedBox(width: 2.0)),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ].divide(SizedBox(width: 20.0)),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Level 9',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'DungGeunMo',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                    useGoogleFonts: false,
                  ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/icon_dmg.png',
                    width: 25.0,
                    height: 25.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '전투력 20',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DungGeunMo',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ].divide(SizedBox(width: 2.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/icon_dmg.png',
                    width: 25.0,
                    height: 25.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '30',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'DungGeunMo',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ].divide(SizedBox(width: 2.0)),
            ),
          ],
        ),
      ],
    );
  }
}
