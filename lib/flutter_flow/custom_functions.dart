import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

int calculateDDay(DateTime targetDate) {
  DateTime today = DateTime.now();
  DateTime todayOnlyDate =
      DateTime(today.year, today.month, today.day); // 시간 정보 제거
  DateTime targetOnlyDate =
      DateTime(targetDate.year, targetDate.month, targetDate.day);

  Duration difference = targetOnlyDate.difference(todayOnlyDate);
  return difference.inDays;
}
