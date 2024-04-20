import 'package:dio/dio.dart';
import 'package:finalserage/core/models/theker.dart';
import 'package:finalserage/core/models/thekerBack.dart';

Future<List<ThekerModelll>> get_theker()async{
Dio dio=Dio();
Response response=await dio.get( "https://661bee3ee7b95ad7fa6953c6.mockapi.io/api/v1/Thekerback");

List<ThekerModelll>thekerList=List.generate(response.data.length, (index) =>ThekerModelll.fromMap(response.data[index]) );
  return thekerList;
}