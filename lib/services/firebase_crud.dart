import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _Collection = _firestore.collection('Task');

class FirebaseCrud {
  static Future<Response> addTask({
    required bool done,
    required String title,
    required String subtitle,
  }) async {
    Response response = Response();
    DocumentReference documentReference =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "done": done,
      "title": title,
      "subtitle": subtitle
    };

    await documentReference
    .set(data)
    .whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    })
    .catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> updateTask({
    required bool done,
    required String title,
    required String subtitle,
    required String docId,
  })async {
    Response response = Response();
    DocumentReference documentReference =
        _Collection.doc();

    Map<String, dynamic> data = <String, dynamic>{
      "done": done,
      "title": title,
      "subtitle": subtitle
    };

    await documentReference
    .update(data)
    .whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully updated Task";
    })
    .catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Future<Response> deleteTask({
    required String docId,
  })async {
    Response response = Response();
    DocumentReference documentReference =
        _Collection.doc(docId);

    await documentReference
    .delete()
    .whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully deleted Task";
    })
    .catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }

  static Stream<QuerySnapshot> readTask() {
    CollectionReference notesItemCollection =
        _Collection;

    return notesItemCollection.snapshots();
  }
}