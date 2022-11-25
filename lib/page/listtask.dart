import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:proyecto_moviles/page/edittask.dart';
import 'package:proyecto_moviles/page/addtask.dart';
import 'package:proyecto_moviles/models/task.dart';
import 'package:proyecto_moviles/page/login.dart';
import 'package:flutter/material.dart';

import '../services/firebase_crud.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {
  final Stream<QuerySnapshot> collectionReference = FirebaseCrud.readTask();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 40, 10, 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      'https://www.hotelbooqi.com/wp-content/uploads/2021/12/128-1280406_view-user-icon-png-user-circle-icon-png.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SelectionArea(
                            child: Text(
                              'Nombre de usuario',
                              textAlign: TextAlign.start,
                            )),
                        const SelectionArea(
                            child: Text(
                              'Correo',
                              textAlign: TextAlign.start,
                            )),
                        IconButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil<dynamic>(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (BuildContext context) => LoginPage(),
                              ),
                              (route) =>
                                false,
                            );
                          },
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        title: const Text('List of Task'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => AddTask(),
                ),
                (route) =>
                    false,
              );
            },
            icon: const Icon(
              Icons.app_registration,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: StreamBuilder(
        stream: collectionReference,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListView(
                children: snapshot.data!.docs.map((e) {
                  return Card(
                      child: Column(children: [
                        ListTile(
                          title: Text(e["title"]),
                          subtitle: Container(
                            child: (Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Subtitle: " + e['subtitle'],
                                    style: const TextStyle(fontSize: 14)),
                              ],
                            )),
                          ),
                        ),
                        //Checkbox(value: e['done'], onChanged: (bool) {} ),
                        ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(5.0),
                                primary: const Color.fromARGB(255, 143, 133, 226),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              child: const Text('Edit'),
                              onPressed: () {
                               Navigator.pushAndRemoveUntil<dynamic>(
                                  context,
                                  MaterialPageRoute<dynamic>(
                                    builder: (BuildContext context) => EditPage(
                                      task: Task(
                                          uid: e.id,
                                          title: e["title"],
                                          subtitle: e["subtitle"]
                                      ),
                                    ),
                                  ),
                                  (route) =>
                                    false, //if you want to disable back feature set to false
                                );
                              },
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(5.0),
                                primary: const Color.fromARGB(255, 143, 133, 226),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              child: const Text('Delete'),
                              onPressed: () async {
                                var response =
                                await FirebaseCrud.deleteTask(docId: e.id);
                                if (response.code != 200) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          content:
                                          Text(response.message.toString()),
                                        );
                                      });
                                }
                              },
                            ),
                          ],
                        ),
                      ]));
                }).toList(),
              ),
            );
          }

          return Container();
        },
      ),
    );
  }
}