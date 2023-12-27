import 'package:dio/dio.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  String url = "https://api.pokercup.app:3000";

  Dio dio = Dio();
}
