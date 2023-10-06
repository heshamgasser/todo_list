import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/models/task_model.dart';

class FirebaseFunctions {
  static CollectionReference<TaskModel> getCollection() {
    return FirebaseFirestore.instance
        .collection('To Do Tasks')
        .withConverter<TaskModel>(
          fromFirestore: (snapshot, options) =>
              TaskModel.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );
  }

  static Future<void> addTaskToFireStore(TaskModel task) async {
    var collection = getCollection();
    var docRef = collection.doc();
    task.id = docRef.id;
    docRef.set(task);
  }

  static Stream<QuerySnapshot<TaskModel>> getTaskFromFireStore(DateTime selectedDate) {
    var collection = getCollection();
    return collection.where('date', isEqualTo: selectedDate.microsecondsSinceEpoch).snapshots();
  }

  static Future<void> deleteTaskFromFireBase(String id) {
   return getCollection().doc(id).delete();
  }

  static Future<void> updateTaskInFireBase(String id, TaskModel updatedTask) {
    return getCollection().doc(id).update(updatedTask.toJson());
  }

}
