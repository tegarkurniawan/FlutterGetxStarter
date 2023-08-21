import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoint {

  
  static String baseUrl = dotenv.env['API_URL'] ?? "";


  static String event = '${baseUrl}event';
  
}