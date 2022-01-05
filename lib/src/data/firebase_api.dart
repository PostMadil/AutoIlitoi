import 'dart:developer';

import 'package:auto_ilitoi/src/models/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
  Future<String> deleteOrder(String id) async {
    final CollectionReference ordersList = _firestore.collection('orders');
    try {
      await ordersList.doc(id).delete();
    } catch (e) {
      log(e.toString());
    }
    return id;
  }
  Future<List<Client>> getClients() async {
    final CollectionReference clientsList = _firestore.collection('clients');
    final List<Client> clients = <Client>[];
    try{
      await clientsList.orderBy('name',descending: false).get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print(element.data);
          clients.add(Client.fromJson(element.data()));
        });
      });
    }catch(e) {
      print(e);
    }
    return clients;
  }

  Future<Client> createClient({required String name, required String phoneNumber}) async {
    final CollectionReference clientsList = _firestore.collection('clients');
    String docId = clientsList.doc().id;
    final Client newClient = Client.fromData(id: docId, name: name, phoneNumber: phoneNumber);
    try{
      clientsList.doc(docId).set(newClient.json);
    } catch(e) {
      print(e);
    }
    return newClient;
  }

  Future<void> updateClient(Client client) async {
    final CollectionReference clientsList = _firestore.collection('clients');

    try{
      await clientsList.doc(client.id).update(client.json);
    }catch(e) {
      print(e);
    }
  }

  Future<Client> deleteClient(Client client,List<Order> orders) async {
    final  CollectionReference clientsList = _firestore.collection('clients');
    final CollectionReference ordersList = _firestore.collection('orders');
    try {
      orders.forEach((element)  async {
        if(element.clientId != null && element.clientId != ''){
          if(element.clientId == client.id){
             await ordersList.doc(element.id).delete();
          }
        }
      });
      await clientsList.doc(client.id).delete();
    } catch (e) {
      log(e.toString());
    }
    return client;
  }

  Future<void> forgotPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
