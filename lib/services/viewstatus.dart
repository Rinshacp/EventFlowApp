//api post

//api post


import 'package:dio/dio.dart';
import 'package:eventflow/services/loginapi.dart';

final dio = Dio();

Future<List<Map<String, dynamic>>> viewstatusapi() async {
  try {
    Response response = await dio.get('$baseurl/user', );
    print(response);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("success");
      List<dynamic> products = response.data;
      List<Map<String, dynamic>> listdata =
          List<Map<String, dynamic>>.from(products);
      return listdata;
    } else {
      return [];
    }
  } catch (e) {
    print(e.toString());
    return[];
}
}