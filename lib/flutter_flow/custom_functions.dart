import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTime getCurrentDate() {
  // get current  date without time
  return DateTime.now().subtract(Duration(
    hours: DateTime.now().hour,
    minutes: DateTime.now().minute,
    seconds: DateTime.now().second,
    milliseconds: DateTime.now().millisecond,
    microseconds: DateTime.now().microsecond,
  ));
}

DateTime weekstartDate() {
  // get this week start date without time
  DateTime now = DateTime.now();
  int weekDay = now.weekday;
  DateTime weekStart = now.subtract(Duration(days: weekDay - 0));
  return DateTime(weekStart.year, weekStart.month, weekStart.day);
}

DateTime getWeekEndDate() {
  // get the saturaday date of  this week without time
  DateTime now = DateTime.now();
  int daysUntilSaturday = DateTime.saturday - now.weekday;
  if (daysUntilSaturday <= 0) {
    daysUntilSaturday += 7;
  }
  DateTime saturday = now.add(Duration(days: daysUntilSaturday));
  return DateTime(saturday.year, saturday.month, saturday.day);
}

DateTime? getStartWeekDate() {
  // get sunday date of this week without time
  DateTime now = DateTime.now();
  int daysSinceSunday = now.weekday % 7;
  DateTime sunday = now.subtract(Duration(days: daysSinceSunday));
  return DateTime(sunday.year, sunday.month, sunday.day);
}

DateTime getDayDate() {
  // get this day date only
  return DateTime.now().subtract(Duration(
      hours: DateTime.now().hour,
      minutes: DateTime.now().minute,
      seconds: DateTime.now().second));
}

DateTime? getnexttDayDaye() {
  // get tomorow date  without time
  final now = DateTime.now();
  final tomorrow = DateTime(now.year, now.month, now.day + 1);
  return tomorrow;
}
