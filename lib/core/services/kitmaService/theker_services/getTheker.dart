import 'package:dio/dio.dart';
import 'package:finalserage/core/models/theker.dart';

Future<List<thekerModel>> get_theker()async{
Dio dio=Dio();
Response response=await dio.get( "https://661bee3ee7b95ad7fa6953c6.mockapi.io/api/v1/theker");

List<thekerModel>thekerList=List.generate(response.data.length, (index) =>thekerModel.fromMap(response.data[index]) );
  return thekerList;
}