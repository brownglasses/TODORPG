import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _label = prefs
              .getStringList('ff_label')
              ?.map((x) {
                try {
                  return LabelStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _label;
    });
    _safeInit(() {
      _TODO = prefs
              .getStringList('ff_TODO')
              ?.map((x) {
                try {
                  return TodoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _TODO;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<LabelStruct> _label = [];
  List<LabelStruct> get label => _label;
  set label(List<LabelStruct> value) {
    _label = value;
    prefs.setStringList('ff_label', value.map((x) => x.serialize()).toList());
  }

  void addToLabel(LabelStruct value) {
    label.add(value);
    prefs.setStringList('ff_label', _label.map((x) => x.serialize()).toList());
  }

  void removeFromLabel(LabelStruct value) {
    label.remove(value);
    prefs.setStringList('ff_label', _label.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLabel(int index) {
    label.removeAt(index);
    prefs.setStringList('ff_label', _label.map((x) => x.serialize()).toList());
  }

  void updateLabelAtIndex(
    int index,
    LabelStruct Function(LabelStruct) updateFn,
  ) {
    label[index] = updateFn(_label[index]);
    prefs.setStringList('ff_label', _label.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLabel(int index, LabelStruct value) {
    label.insert(index, value);
    prefs.setStringList('ff_label', _label.map((x) => x.serialize()).toList());
  }

  List<TodoStruct> _TODO = [];
  List<TodoStruct> get TODO => _TODO;
  set TODO(List<TodoStruct> value) {
    _TODO = value;
    prefs.setStringList('ff_TODO', value.map((x) => x.serialize()).toList());
  }

  void addToTODO(TodoStruct value) {
    TODO.add(value);
    prefs.setStringList('ff_TODO', _TODO.map((x) => x.serialize()).toList());
  }

  void removeFromTODO(TodoStruct value) {
    TODO.remove(value);
    prefs.setStringList('ff_TODO', _TODO.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTODO(int index) {
    TODO.removeAt(index);
    prefs.setStringList('ff_TODO', _TODO.map((x) => x.serialize()).toList());
  }

  void updateTODOAtIndex(
    int index,
    TodoStruct Function(TodoStruct) updateFn,
  ) {
    TODO[index] = updateFn(_TODO[index]);
    prefs.setStringList('ff_TODO', _TODO.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTODO(int index, TodoStruct value) {
    TODO.insert(index, value);
    prefs.setStringList('ff_TODO', _TODO.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
