import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pkc/controllers/auth_controller.dart';

import '../models/club.dart';
import 'endpoints.dart';

class ClubRepository {
  AuthController authController = Get.find();

  Future<List<Club>> getClubsRegionState(String state) async {
    try {
      var response = await authController.dio.get(
          authController.url + Endpoints.getAllClubs(),
          queryParameters: {"state": state});

      return Club.listFromJson(response.data);
    } on DioException catch (e) {
      print(e);
      return [];
    }
  }
}
