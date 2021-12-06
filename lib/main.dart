import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'src/presentation/mixins/init_mixin.dart';

void main() => runApp(const CarPartsDB());

class CarPartsDB extends StatefulWidget {
  const CarPartsDB({Key? key}) : super(key: key);

  @override
  _CarPartsDBState createState() => _CarPartsDBState();
}

class _CarPartsDBState extends State<CarPartsDB> with InitMixin<CarPartsDB> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Store<AppState>>(
      future: future,
      builder: (BuildContext context, AsyncSnapshot<Store<AppState>> snapshot) {
        if (snapshot.hasData) {
          final Store<AppState> store = snapshot.data!;

          return StoreProvider<AppState>(
            store: store,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Patron',
              theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'ProximaNova'),
              routes: AppRoutes.routes,
            ),
          );
        } else {
          if (snapshot.hasError) {
            throw snapshot.error!;
          } else
            return MaterialApp(
              title: 'Patron',
              theme: ThemeData(fontFamily: 'ProximaNova'),
              home: Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      SizedBox(
                        width: 300,
                        height: 300,
                        child: CircularProgressIndicator(),
                      ),
                      Text(
                        'CarPartsDB',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.w700,
                          fontSize: 64,
                          letterSpacing: 0.2,
                          color: Colors.amberAccent,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.blue,
                              offset: Offset(2, 2),
                              blurRadius: 0.8,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
        }
      },
    );
  }
}
