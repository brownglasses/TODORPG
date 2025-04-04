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

class StarRating extends StatefulWidget {
  const StarRating({
    super.key,
    this.width,
    this.height,
    required this.starSize,
    required this.starColor,
    required this.rating,
  });

  final double? width;
  final double? height;
  final double starSize;
  final Color starColor;
  final int rating;

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          widget.rating.clamp(0, 5),
          (index) => Icon(
            Icons.star_rounded,
            size: widget.starSize,
            color: widget.starColor,
          ),
        ),
      ),
    );
  }
}
