import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'calendar_model.dart';
export 'calendar_model.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
    required this.onClicked,
  });

  final Future Function(DateTime selectedDateTime)? onClicked;

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  late CalendarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: FlutterFlowCalendar(
          color: FlutterFlowTheme.of(context).primary,
          iconColor: FlutterFlowTheme.of(context).secondaryText,
          weekFormat: false,
          weekStartsMonday: false,
          rowHeight: 48.0,
          onChange: (DateTimeRange? newSelectedDate) async {
            if (_model.calendarSelectedDay == newSelectedDate) {
              return;
            }
            _model.calendarSelectedDay = newSelectedDate;
            await widget.onClicked?.call(
              _model.calendarSelectedDay!.start,
            );
            safeSetState(() {});
          },
          titleStyle: FlutterFlowTheme.of(context).titleLarge.override(
                fontFamily: 'DOSMyungho',
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
          dayOfWeekStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                fontFamily: 'DOSMyungho',
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
          dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'DOSMyungho',
                fontSize: 10.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
          selectedDateStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'DOSMyungho',
                color: FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 10.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
          inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'DOSMyungho',
                fontSize: 10.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
          locale: FFLocalizations.of(context).languageCode,
        ),
      ),
    );
  }
}
