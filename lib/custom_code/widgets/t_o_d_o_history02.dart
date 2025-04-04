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

import 'package:intl/intl.dart'; // 날짜 포맷용

class TODOHistory02 extends StatefulWidget {
  const TODOHistory02({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<TODOHistory02> createState() => _TODOHistory02State();
}

class _TODOHistory02State extends State<TODOHistory02> {
  DateTime _focusedMonth = DateTime.now();
  DateTime? _selectedDate;

  // 샘플 TODO 완료 데이터
  final Map<DateTime, List<String>> todoRecords = {
    DateTime(2025, 4, 1): ['책 읽기', '명상'],
    DateTime(2025, 4, 3): ['운동', 'Flutter 공부'],
    DateTime(2025, 4, 7): ['게임 개발', '회의 준비', '일기 쓰기'],
  };

  List<String> getTodosFor(DateTime date) {
    final key = DateTime(date.year, date.month, date.day);
    return todoRecords[key] ?? [];
  }

  int getTodoCount(DateTime date) => getTodosFor(date).length;

  Color getColorForCount(int count) {
    final base = const Color(0xFF8B4513); // 갈색
    if (count == 0) return Colors.transparent;
    double opacity = (count / 5).clamp(0.2, 1.0);
    return base.withOpacity(opacity);
  }

  List<Widget> buildWeekdayLabels(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;
    final weekdays = {
          'ko': ['일', '월', '화', '수', '목', '금', '토'],
          'en': ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
          'ja': ['日', '月', '火', '水', '木', '金', '土'],
          'de': ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'],
        }[locale] ??
        ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    return weekdays.map((label) => Center(child: Text(label))).toList();
  }

  List<Widget> buildCalendarCells() {
    final year = _focusedMonth.year;
    final month = _focusedMonth.month;
    final firstDay = DateTime(year, month, 1);
    final daysInMonth = DateUtils.getDaysInMonth(year, month);
    final startWeekday = firstDay.weekday % 7;

    List<Widget> cells = [];

    for (int i = 0; i < startWeekday; i++) {
      cells.add(Container()); // 빈 셀
    }

    for (int day = 1; day <= daysInMonth; day++) {
      final currentDate = DateTime(year, month, day);
      final todos = getTodosFor(currentDate);
      final color = getColorForCount(todos.length);

      cells.add(
        GestureDetector(
          onTap: () => setState(() => _selectedDate = currentDate),
          child: Container(
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: _selectedDate == currentDate
                    ? Colors.amber
                    : Colors.transparent,
                width: 2,
              ),
            ),
            child: Center(
              child: Text('$day', style: const TextStyle(fontSize: 12)),
            ),
          ),
        ),
      );
    }

    return cells;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          // 👇 월 타이틀 + 이전/다음 달 버튼
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_left),
                onPressed: () {
                  setState(() {
                    _focusedMonth = DateTime(
                      _focusedMonth.year,
                      _focusedMonth.month - 1,
                    );
                    _selectedDate = null;
                  });
                },
              ),
              Text(
                DateFormat.yMMMM(Localizations.localeOf(context).toString())
                    .format(_focusedMonth),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.arrow_right),
                onPressed: () {
                  setState(() {
                    _focusedMonth = DateTime(
                      _focusedMonth.year,
                      _focusedMonth.month + 1,
                    );
                    _selectedDate = null;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 8),

          // 요일 헤더
          GridView.count(
            crossAxisCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: buildWeekdayLabels(context),
          ),
          const SizedBox(height: 4),

          // 날짜 셀
          GridView.count(
            crossAxisCount: 7,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: buildCalendarCells(),
          ),
          const SizedBox(height: 12),

          // 선택한 날짜의 TODO 리스트
          if (_selectedDate != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMd(Localizations.localeOf(context).toString())
                      .format(_selectedDate!),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 6),
                ...getTodosFor(_selectedDate!).map((todo) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          const Icon(Icons.check,
                              size: 16, color: Colors.brown),
                          const SizedBox(width: 6),
                          Expanded(child: Text(todo)),
                        ],
                      ),
                    )),
              ],
            ),
        ],
      ),
    );
  }
}
