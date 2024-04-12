
import 'package:dio/dio.dart';
import 'package:finalserage/core/models/kitmaMode.dart';

create_kitma(KitmaModel kitma) async {
  Dio dio = Dio();
  try {
    Response response = await dio.post(
        'https://65ba3d27b4d53c0665525f4e.mockapi.io/api/v1/kitma',
        data: {
          "id": kitma.id,
          "neah": kitma.neah,
          "name": kitma.name,
          "isfajeer": kitma.isfajeer,
          "startDate": kitma.startDate,
          "endDate": kitma.endDate,
          "isProiratiy": kitma.isProiratiy,
          "isPrivate": kitma.isPrivate,
        });
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
