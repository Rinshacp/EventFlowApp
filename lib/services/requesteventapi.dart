//api post

//api post


import 'package:dio/dio.dart';
import 'package:eventflow/services/loginapi.dart';

final dio = Dio();

Future<void> requesteventapi(data) async {
  try {
    Response response = await dio.post('$baseurl/user', data: data);
    print(response);
    print(response.statusCode);
    if (response.statusCode == 200) {
      print("success");
      // List<dynamic> products = response.data;
      // List<Map<String, dynamic>> listdata =
      //     List<Map<String, dynamic>>.from(products);
      // return listdata;
    } else {
      throw Exception('failed to get');
    }
  } catch (e) {
    print(e.toString());
    // return [];
}
}