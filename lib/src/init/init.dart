import 'dart:developer';

import 'package:auto_ilitoi/src/actions/firebase_actions/client_actions/index.dart';
import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/data/firebase_api.dart';
import 'package:auto_ilitoi/src/epics/app_epics.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/reducer/reducer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  log('I was called :3');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyB9W8YFnY5dAm2Z9NiL7tPYtbYQlsIoHfg',
      appId: '1:447107770115:web:b92b92944f4537868f6b36',
      messagingSenderId: '447107770115',
      projectId: 'autoilitoi',
    ),
  );

  log('I was called x2 :3');
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  final FirebaseApi _firebaseApi = FirebaseApi(auth: auth, firestore: firestore);

  final AppEpics epics = AppEpics(firebaseApi: _firebaseApi);

  final AppState initialState = AppState.initialState();
  final Store<AppState> store = Store<AppState>(reducer, initialState: initialState, middleware: <Middleware<AppState>>[
    EpicMiddleware<AppState>(epics.epics),
  ]);
  store.dispatch(const InitializeApp());
  store.dispatch(const GetClients());

  return store;
}
