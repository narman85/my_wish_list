import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String content;
  String price;
  String todoId;
  Timestamp dateCreated;
  bool done;

  TodoModel(
    this.content,
    this.todoId,
    this.dateCreated,
    this.done,
    this.price,
  );

  TodoModel.fromDocumentSnapshot(
    DocumentSnapshot documentSnapshot,
  ) {
    price = documentSnapshot.data()['price'];
    todoId = documentSnapshot.id;
    content = documentSnapshot.data()["content"];
    dateCreated = documentSnapshot.data()["dateCreated"];
    done = documentSnapshot.data()["done"];
  }
}
