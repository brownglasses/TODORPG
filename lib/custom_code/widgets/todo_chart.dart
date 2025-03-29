// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class TodoChart extends StatefulWidget {
  const TodoChart({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<TodoChart> createState() => _TodoChartState();
}

class _TodoChartState extends State<TodoChart> {
  // 1) 예시 데이터 (하드코딩)
  //  - 필요한 경우, Widget의 파라미터로 받아올 수 있습니다.
  final Map<String, int> rawData = {
    '개인 생산성': 102,
    '업무 및 프로젝트': 50,
    '학습 및 자기개발': 80,
    '가사 및 생활관리': 60,
    '건강 및 웰빙': 20,
    '여행 준비': 70,
    '재무 및 소비관리': 30,
    '개발 작업': 10,
    '창작활동': 60,
    '기타': 50,
  };

  @override
  Widget build(BuildContext context) {
    // 2) 총합 계산
    final totalCount = rawData.values.fold(0, (sum, value) => sum + value);

    // 3) 내림차순 정렬
    final sortedData = rawData.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return Container(
      // 전달받은 width, height 적용 (null이면 자동 크기)
      width: widget.width,
      height: widget.height,
      // 그래프가 길어질 수 있으니 스크롤 가능하도록 ListView 사용
      child: ListView.builder(
        itemCount: sortedData.length,
        itemBuilder: (context, index) {
          final category = sortedData[index].key;
          final count = sortedData[index].value;
          // 퍼센트(%) 계산
          final percentage =
              (totalCount == 0) ? 0.0 : (count / totalCount) * 100;

          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                // 왼쪽: 카테고리명
                Expanded(
                  flex: 3,
                  child: Text(
                    category,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // 중앙: 그래프
                Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      // 그래프 배경
                      Container(
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      // count가 0이면 barWidth=0 → 막대가 표시되지 않음
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final barWidth = (count == 0 || totalCount == 0)
                              ? 0.0
                              : constraints.maxWidth * (count / totalCount);

                          return Container(
                            height: 20,
                            width: barWidth,
                            decoration: BoxDecoration(
                              color: _getBarColor(index),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                // 오른쪽: (완료 횟수, 퍼센트)
                Expanded(
                  flex: 3,
                  child: Text(
                    '${count}건, ${percentage.toStringAsFixed(1)}%',
                    textAlign: TextAlign.right,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // 막대 색상 지정 (인덱스에 따라 순환)
  Color _getBarColor(int index) {
    final colors = [
      Colors.indigo,
      Colors.blue,
      Colors.deepPurple,
      Colors.teal,
      Colors.green,
      Colors.orange,
      Colors.brown,
      Colors.pink,
      Colors.redAccent,
      Colors.blueGrey,
    ];
    return colors[index % colors.length];
  }
}
