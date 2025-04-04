// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:gif/gif.dart'; // gif 패키지 필요

Future<void> showGifDialogAction(
  BuildContext context,
  double width,
  double height,
  String gifUrl,
) async {
  final controller = GifController(vsync: Navigator.of(context));

  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        content: SizedBox(
          width: width,
          height: height,
          child: Gif(
            controller: controller,
            autostart: Autostart.no,
            image: NetworkImage(gifUrl),
            onFetchCompleted: () {
              controller.reset();
              controller.forward();

              // GIF 길이만큼 재생 후 모달 닫기
              Future.delayed(const Duration(milliseconds: 3400), () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              });
            },
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  ).then((_) {
    // 캐시 삭제
    NetworkImage(gifUrl).evict().then((_) {
      debugPrint('GIF 캐시 삭제됨');
    });
  });
}
