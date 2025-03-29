import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'app_illustration_div_model.dart';
export 'app_illustration_div_model.dart';

class AppIllustrationDivWidget extends StatefulWidget {
  const AppIllustrationDivWidget({super.key});

  @override
  State<AppIllustrationDivWidget> createState() =>
      _AppIllustrationDivWidgetState();
}

class _AppIllustrationDivWidgetState extends State<AppIllustrationDivWidget> {
  late AppIllustrationDivModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppIllustrationDivModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/47c5ca12-d933-4840-ab90-4aad95b899fb.png',
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 60.0,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
