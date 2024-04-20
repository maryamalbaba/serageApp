import 'package:dio/dio.dart';
import 'package:finalserage/core/models/theker.dart';
import 'package:finalserage/core/models/thekerBack.dart';

creat_theker(ThekerModelll theker) async {
 Dio dio=Dio();
try{

 
Response response=await  dio.post("https://661bee3ee7b95ad7fa6953c6.mockapi.io/api/v1/Thekerback",
data: {
"id":theker.id,
"proof":theker.proof,
"name":theker.name,
"Fullnum":theker.Fullnum,
"achievment":theker.achievment,
"proof":theker.proof

}
);

  if(response.statusCode == 200){
    return true;
  }
  else return false;
}

catch(e){}
}