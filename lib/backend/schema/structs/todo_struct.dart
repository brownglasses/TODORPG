// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodoStruct extends BaseStruct {
  TodoStruct({
    String? title,
    String? description,
    DateTime? endDate,
    double? difficulty,
    LabelStruct? label,
    DateTime? completionDate,
    bool? completion,
    int? id,
  })  : _title = title,
        _description = description,
        _endDate = endDate,
        _difficulty = difficulty,
        _label = label,
        _completionDate = completionDate,
        _completion = completion,
        _id = id;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "difficulty" field.
  double? _difficulty;
  double get difficulty => _difficulty ?? 0.0;
  set difficulty(double? val) => _difficulty = val;

  void incrementDifficulty(double amount) => difficulty = difficulty + amount;

  bool hasDifficulty() => _difficulty != null;

  // "label" field.
  LabelStruct? _label;
  LabelStruct get label => _label ?? LabelStruct();
  set label(LabelStruct? val) => _label = val;

  void updateLabel(Function(LabelStruct) updateFn) {
    updateFn(_label ??= LabelStruct());
  }

  bool hasLabel() => _label != null;

  // "CompletionDate" field.
  DateTime? _completionDate;
  DateTime? get completionDate => _completionDate;
  set completionDate(DateTime? val) => _completionDate = val;

  bool hasCompletionDate() => _completionDate != null;

  // "Completion" field.
  bool? _completion;
  bool get completion => _completion ?? false;
  set completion(bool? val) => _completion = val;

  bool hasCompletion() => _completion != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static TodoStruct fromMap(Map<String, dynamic> data) => TodoStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        endDate: data['endDate'] as DateTime?,
        difficulty: castToType<double>(data['difficulty']),
        label: data['label'] is LabelStruct
            ? data['label']
            : LabelStruct.maybeFromMap(data['label']),
        completionDate: data['CompletionDate'] as DateTime?,
        completion: data['Completion'] as bool?,
        id: castToType<int>(data['id']),
      );

  static TodoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TodoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'endDate': _endDate,
        'difficulty': _difficulty,
        'label': _label?.toMap(),
        'CompletionDate': _completionDate,
        'Completion': _completion,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'difficulty': serializeParam(
          _difficulty,
          ParamType.double,
        ),
        'label': serializeParam(
          _label,
          ParamType.DataStruct,
        ),
        'CompletionDate': serializeParam(
          _completionDate,
          ParamType.DateTime,
        ),
        'Completion': serializeParam(
          _completion,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static TodoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TodoStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
        difficulty: deserializeParam(
          data['difficulty'],
          ParamType.double,
          false,
        ),
        label: deserializeStructParam(
          data['label'],
          ParamType.DataStruct,
          false,
          structBuilder: LabelStruct.fromSerializableMap,
        ),
        completionDate: deserializeParam(
          data['CompletionDate'],
          ParamType.DateTime,
          false,
        ),
        completion: deserializeParam(
          data['Completion'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TodoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TodoStruct &&
        title == other.title &&
        description == other.description &&
        endDate == other.endDate &&
        difficulty == other.difficulty &&
        label == other.label &&
        completionDate == other.completionDate &&
        completion == other.completion &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        description,
        endDate,
        difficulty,
        label,
        completionDate,
        completion,
        id
      ]);
}

TodoStruct createTodoStruct({
  String? title,
  String? description,
  DateTime? endDate,
  double? difficulty,
  LabelStruct? label,
  DateTime? completionDate,
  bool? completion,
  int? id,
}) =>
    TodoStruct(
      title: title,
      description: description,
      endDate: endDate,
      difficulty: difficulty,
      label: label ?? LabelStruct(),
      completionDate: completionDate,
      completion: completion,
      id: id,
    );
