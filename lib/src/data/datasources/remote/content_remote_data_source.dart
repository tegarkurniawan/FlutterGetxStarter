import 'package:dio/dio.dart';

import '../../../core/utils/endpoint.dart';



abstract class ContentRemoteDataSource {

  Future<Response> event();

}

class ContentRemoteDataSourceImpl implements ContentRemoteDataSource {
  final dio = Dio();
  
  @override
  Future<Response> event() async{
    final Uri uri = Uri.parse(Endpoint.event) // parse string
        .replace(queryParameters: {
      "api_key": "abc123",
    });
    Response response = await dio.getUri(uri);
    return response;
  }

  

}