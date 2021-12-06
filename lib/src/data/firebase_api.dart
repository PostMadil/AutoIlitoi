import 'dart:developer';

import 'package:auto_ilitoi/src/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseApi {
  FirebaseApi({required FirebaseAuth auth, required FirebaseFirestore firestore})
      : _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser?> getCurrentUser() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      return null;
    }

    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore //
        .doc('users/${user.uid}')
        .get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> login({required String email, required String password}) async {
    log('email: $email; password: $password');

    final UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    log('Auth result is: $result');
    final DocumentSnapshot<Map<String, dynamic>> snapshot = await _firestore.doc('users/${result.user!.uid}').get();
    final AppUser user = AppUser.fromJson(snapshot.data());

    return user;
  }

  Future<List<Order>> getOrders() async {
    final CollectionReference ordersList = _firestore.collection('orders');

    final List<Order> orders = <Order>[];

    try {
      await ordersList.orderBy('dateTime', descending: true).get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print(element.data());
          orders.add(Order.fromJson(element.data()));
        });
      });
    } catch (e) {
      print(e);
    }

    return orders;
  }

  Future<void> createOrder(OrderDetails details, List<CarPart> items) async {
    final CollectionReference ordersList = _firestore.collection('orders');
    String docId = ordersList.doc().id;

    try {
      String date = DateTime.now().toString();
      log(docId);
      final Order newOrder = Order.fromData(id: docId, details: details, items: items, dateTime: date);
      ordersList.doc(docId).set(newOrder.json);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<Order> updateOrder(Order order) async {
    final CollectionReference ordersList = _firestore.collection('orders');
    try {
      await ordersList.doc(order.id).update(order.json);
    } catch (e) {
      log(e.toString());
    }
    return order;
  }

  Future<void> forgotPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
