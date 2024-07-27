import 'package:shared_preferences/shared_preferences.dart';
import 'package:str/view_models/app_view_model.dart';

final di = _Dependencies();

class _Dependencies {
  Future<void> initialize() async {
    prefs = await SharedPreferences.getInstance();
  }

  late final SharedPreferences prefs;

  final appViewModel = AppViewModel();
}
