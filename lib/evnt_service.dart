import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EvntService extends ChangeNotifier {
  final evntCollection = FirebaseFirestore.instance.collection('hopetail');

  Future<QuerySnapshot> read(String dummyttle) async {
    // 행사리스트 가져오기 가져오기
    return evntCollection.where('title', isNotEqualTo: dummyttle).get();
  }
}
