import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkc/repository/club_repository.dart';

import '../../models/club.dart';

enum SelectedStateController { none, selected }

class HomeController extends GetxController {
  @override
  onInit() async {
    clubs = await clubRepository.getClubsRegionState("São Paulo");
    timeSelecionado!.value = clubs!.first.name!;
    idClubSelecionado!.value = clubs!.first.clubCode!;

    getClubsStateRegion("São Paulo");
    super.onInit();
  }

  List<Club>? clubs;
  RxString? idClubSelecionado = "".obs;
  RxString? timeSelecionado = "".obs;
  Rx<SelectedStateController> selectedStateController =
      SelectedStateController.none.obs;

  final Rx<ScrollController> scrollController = ScrollController().obs;
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final key3 = GlobalKey();

  ClubRepository clubRepository = ClubRepository();

  RxList<String> regioes = [
    "Sul",
    "Norte",
    "Sudeste",
    "Centro-Oeste",
    "Nordeste",
  ].obs;
  RxString selectedRegiao = ''.obs;
  RxList<String> listaEstados = <String>[].obs;
  RxString selectedEstado = 'ESTADO'.obs;
  RxBool isAndroid = true.obs;

  RxList<Widget> teams = <Widget>[
    const Text("(Nenhum clube vinculado a esse Estado)",
        style: TextStyle(color: Color(0xff5A2683)))
  ].obs;

  void changeState() {
    selectedStateController.value = SelectedStateController.selected;
  }

  void scrollToStep(int step) {
    if (step == 1) {
      Scrollable.ensureVisible(key1.currentContext!,
          curve: Curves.easeInOut, duration: const Duration(seconds: 1));
    } else if (step == 2) {
      Scrollable.ensureVisible(key2.currentContext!,
          curve: Curves.easeInOut, duration: const Duration(seconds: 1));
    } else if (step == 3) {
      Scrollable.ensureVisible(key3.currentContext!,
          curve: Curves.easeInOut, duration: const Duration(seconds: 1)); //
    }
  }

  List<DropdownMenuEntry<String>> teste = [];

  List<DropdownMenuEntry> listaEstadoSelecionado() {
    for (var lista in listaEstados) {
      teste.add(
          DropdownMenuEntry(value: lista.toString(), label: lista.toString()));
    }
    return teste;
  }

  bool changeOS(bool value) {
    return isAndroid.value = value;
  }

  Future<void> getClubsStateRegion(String state) async {
    teams.clear();
    List<Club> clubs = await clubRepository.getClubsRegionState(state);
    if ( clubs.isNotEmpty) {
      for (Club club in clubs) {
        teams.add(
          Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2)),
                    child: Image.network(club.logo!, width: 100, height: 100,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                      // Se ocorrer um erro ao carregar a imagem principal, exibir a imagem de backup
                      return Image.asset(
                        'assets/images/pkc_roxo.png',
                        width: 100,
                        height: 100,
                      );
                    })),
                Text(
                  club.name!.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Radio<String>(
                  value: club.name!,
                  groupValue: timeSelecionado!.value,
                  onChanged: (String? value) {
                    if (value != null) {
                      idClubSelecionado!.value = club.clubCode!;
                      timeSelecionado!.value = value;
                    }
                  },
                ),
              ],
            ),
          ),
        );
      }
    } else {
      teams.add(const Text("(Nenhum clube vinculado a esse Estado)",
          style: TextStyle(color: Color(0xff5A2683))));
    }
  }
}
