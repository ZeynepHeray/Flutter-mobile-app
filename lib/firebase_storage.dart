import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

Reference  get firebaseStorage => FirebaseStorage.instance.ref();

class FirabaseStorageService extends GetxService {
  Future<String?> GetImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }
    try {
      var urlRef =firebaseStorage
      .child("flower").child('${imgName.toLowerCase()}.jpeg');
      var imgUrl = await urlRef.getDownloadURL();
      return imgUrl;
    } catch (e) {
      return null;
    }
  }
}   