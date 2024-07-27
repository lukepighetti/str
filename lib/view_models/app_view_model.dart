import 'package:flutter/material.dart';
import 'package:str/models/app_model.dart';

class AppViewModel extends ValueNotifier<AppModel> {
  AppViewModel() : super(AppModel.create());
}
