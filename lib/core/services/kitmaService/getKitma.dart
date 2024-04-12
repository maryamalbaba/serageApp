import 'dart:async';

import 'package:dio/dio.dart';
import 'package:finalserage/core/models/kitmaMode.dart';

Future<List<KitmaModel>> getKitma() async {
  Dio dio = Dio();
  Response response =
      await dio.get('https://65ba3d27b4d53c0665525f4e.mockapi.io/api/v1/kitma');

  List<KitmaModel> All_Of_Kitmas =
   List.generate(response.data.length,(index) => KitmaModel.fromMap(response.data[index]));

  return All_Of_Kitmas;
}
