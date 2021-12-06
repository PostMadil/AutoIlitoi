import 'dart:developer';

import 'package:auto_ilitoi/src/actions/firebase_actions/index.dart';
import 'package:auto_ilitoi/src/actions/index.dart';
import 'package:auto_ilitoi/src/models/index.dart';
import 'package:auto_ilitoi/src/presentation/mixins/dialog/dialog_mixin.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with DialogMixin {
  String _email = '';
  String _password = '';
  bool isLoading = false;
  bool hideInput = true;

  void _response(AppAction action) {
    if (action is LoginSuccessful) {
      //Navigator.pushNamedAndRemoveUntil(context, AppRoutes.home, (route) => false);
    } else if (action is LoginError) {
      showError(context, 'Login error', action.error.toString());
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SafeArea(child: Form(
        child: Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 120,
                      width: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/logo_black.png'), fit: BoxFit.fitWidth),
                      ),
                    ),
                    Container(
                      width: 600,
                      height: 300,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter email',
                              filled: true,
                              fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: (Colors.blueGrey[50])!),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: (Colors.blueGrey[50])!),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (String value) {
                              _email = value;
                            },
                            validator: (String? value) {
                              if (!EmailValidator.validate(value!)) {
                                log('Invalid email');
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.visibility_off_outlined,
                                  color: hideInput == true ? Colors.deepPurple : Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    hideInput = !hideInput;
                                  });
                                },
                              ),
                              filled: true,
                              fillColor: Colors.blueGrey[50],
                              labelStyle: TextStyle(fontSize: 12),
                              contentPadding: EdgeInsets.only(left: 30),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: (Colors.blueGrey[50])!),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: (Colors.blueGrey[50])!),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: hideInput,
                            onChanged: (String value) {
                              _password = value;
                            },
                            validator: (String? value) {
                              if (value!.length < 6) {
                                return 'Password too short';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 40),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: (Colors.deepPurple[100])!,
                                  spreadRadius: 10,
                                  blurRadius: 20,
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  child: Center(
                                      child: isLoading == false ? Text("Sign In") : CircularProgressIndicator())),
                              onPressed: () {
                                final FormState? form = Form.of(context);
                                if (form != null) {
                                  if (form.validate()) {
                                    setState(() {
                                      isLoading = true;
                                    });
                                    StoreProvider.of<AppState>(context).dispatch(Login(
                                      email: _email,
                                      password: _password,
                                      response: _response,
                                    ));
                                  }
                                } else {
                                  log('Form not found');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurple,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
