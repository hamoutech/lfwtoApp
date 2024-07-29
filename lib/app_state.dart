import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _notificationMatchOn =
          prefs.getBool('ff_notificationMatchOn') ?? _notificationMatchOn;
    });
    _safeInit(() {
      _notificationActuOn =
          prefs.getBool('ff_notificationActuOn') ?? _notificationActuOn;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _notificationMatchOn = true;
  bool get notificationMatchOn => _notificationMatchOn;
  set notificationMatchOn(bool value) {
    _notificationMatchOn = value;
    prefs.setBool('ff_notificationMatchOn', value);
  }

  bool _notificationActuOn = true;
  bool get notificationActuOn => _notificationActuOn;
  set notificationActuOn(bool value) {
    _notificationActuOn = value;
    prefs.setBool('ff_notificationActuOn', value);
  }

  bool _viewmore = false;
  bool get viewmore => _viewmore;
  set viewmore(bool value) {
    _viewmore = value;
  }

  bool _menuActive = false;
  bool get menuActive => _menuActive;
  set menuActive(bool value) {
    _menuActive = value;
  }

  DateTime? _currentDate;
  DateTime? get currentDate => _currentDate;
  set currentDate(DateTime? value) {
    _currentDate = value;
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
