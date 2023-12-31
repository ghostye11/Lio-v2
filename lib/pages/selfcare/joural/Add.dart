import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/colors.dart';

import 'package:project/pages/selfcare/joural/model/user_models.dart';

class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
        backgroundColor: primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                  labelText: 'Enter title', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                  labelText: 'Enter description', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  //addtaskToFirebase();
                  firestoreHelper
                      .create(UserModel(
                          title: titleController.text,
                          description: descriptionController.text))
                      .then((value) => {Navigator.pop(context)});
                },
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Colors.pink;
                })),
                child: Text("Add Task"))
          ],
        ),
      ),
    );
  }
}

class firestoreHelper {
  static Stream<List<UserModel>> read() {
    final userCollection = FirebaseFirestore.instance.collection("journal");
    return userCollection.snapshots().map((QuerySnapshot) =>
        QuerySnapshot.docs.map((e) => UserModel.fromSnapShot(e)).toList());
  }

  static Future create(UserModel user) async {
    final userCollection = FirebaseFirestore.instance.collection("journal");

    final uid = userCollection.doc().id;
    final docRef = userCollection.doc(uid);

    final newUser = UserModel(
      id: uid,
      title: user.title,
      description: user.description,
    ).toJson();

    try {
      await docRef.set(newUser);
    } catch (e) {
      print("some error occured");
    }
  }

  static Future update(UserModel user) async {
    final userCollection = FirebaseFirestore.instance.collection("journal");

    final docRef = userCollection.doc(user.id);

    final newUser = UserModel(
      id: user.id,
      title: user.title,
      description: user.description,
    ).toJson();

    try {
      await docRef.update(newUser);
    } catch (e) {
      print("some error occured");
    }
  }

  static Future delete(UserModel user) async {
    final userCollection = FirebaseFirestore.instance.collection("journal");

    final docRef = userCollection.doc(user.id).delete();
  }
}
