import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageFunctions {
  static FirebaseStorageFunctions instance = FirebaseStorageFunctions();

  final storage =
      FirebaseStorage.instanceFor(bucket: "gs://news-6edf8.appspot.com");
}
