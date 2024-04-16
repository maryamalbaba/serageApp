import 'package:dio/dio.dart';
import 'package:finalserage/core/models/theker.dart';

creat_theker(thekerModel theker) async {
 Dio dio=Dio();
try{

 
Response response=await  dio.post("https://661bee3ee7b95ad7fa6953c6.mockapi.io/api/v1/theker",
data: {
"id":theker.id,
"proof":theker.proof,
"name":theker.name,
"num":theker.num

}
);

  if(response.statusCode == 200){
    return true;
  }
  else return false;
}

catch(e){}
}