// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LabelStruct extends BaseStruct {
  LabelStruct({
    Color? color,
    String? title,
  })  : _color = color,
        _title = title;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static LabelStruct fromMap(Map<String, dynamic> data) => LabelStruct(
        color: getSchemaColor(data['color']),
        title: data['title'] as String?,
      );

  static LabelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LabelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static LabelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LabelStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LabelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LabelStruct && color == other.color && title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([color, title]);
}

LabelStruct createLabelStruct({
  Color? color,
  String? title,
}) =>
    LabelStruct(
      color: color,
      title: title,
    );
