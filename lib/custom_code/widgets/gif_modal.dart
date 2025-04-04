// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:gif/gif.dart'; // gif 패키지 import

class GifModal extends StatefulWidget {
  const GifModal({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<GifModal> createState() => _GifModalState();
}

class _GifModalState extends State<GifModal>
    with SingleTickerProviderStateMixin {
  late GifController _gifController;

  @override
  void initState() {
    super.initState();
    _gifController = GifController(vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // GIF가 로드되면 처음부터 재생
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _gifController.reset();
      _gifController.forward();
    });
  }

  @override
  void dispose() {
    _gifController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 200,
      height: widget.height ?? 200,
      child: Gif(
        controller: _gifController,
        autostart: Autostart.no, // 수동으로 재생 시작
        image: NetworkImage(
          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/todorpg-w9bil7/assets/k3jvglbnfn8g/TODO02-ezgif.com-video-to-gif-converter.gif',
        ),
        fit: BoxFit.contain,
      ),
    );
  }
}
