import 'package:flutter/material.dart';
import 'package:str/models/app_model.dart';
import 'package:str/models/thing_model.dart';

class AppViewModel extends ValueNotifier<AppModel> {
  AppViewModel() : super(AppModel.create());

  void setThingIfEmpty(int n, ThingModel thing) {
    assert(n >= 1 && n <= 5, "There is a maximum of five things");

    value = value.copyWith(
      thing1: n == 1 && value.thing1 == null ? thing : null,
      thing2: n == 2 && value.thing2 == null ? thing : null,
      thing3: n == 3 && value.thing3 == null ? thing : null,
      thing4: n == 4 && value.thing4 == null ? thing : null,
      thing5: n == 5 && value.thing5 == null ? thing : null,
    );
  }

  void updateThing(ThingModel thing) {
    value = value.copyWith(
      thing1: value.thing1?.id == thing.id ? thing : null,
      thing2: value.thing2?.id == thing.id ? thing : null,
      thing3: value.thing3?.id == thing.id ? thing : null,
      thing4: value.thing4?.id == thing.id ? thing : null,
      thing5: value.thing5?.id == thing.id ? thing : null,
      history: {
        for (final x in value.history)
          if (x.thing.id == thing.id) x.copyWith(thing: thing),
      },
    );
  }
}
