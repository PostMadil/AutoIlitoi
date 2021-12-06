import 'dart:async';
import 'dart:developer';

import 'package:auto_ilitoi/src/init/init.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';

mixin InitMixin<S extends StatefulWidget> on State<S> {
  final Completer<Store<AppState>> _completer = Completer<Store<AppState>>();

  @override
  void initState() {
    super.initState();
    _initStore();
  }

  Future<void> _initStore() async {
    log('I am initing the state :3');
    final List<dynamic> result = await Future.wait<dynamic>(<Future<void>>[
      init(),
      Future<void>.delayed(const Duration(seconds: 2)),
    ]);

    _completer.complete(result[0] as Store<AppState>);
  }

  Future<Store<AppState>> get future => _completer.future;
}
