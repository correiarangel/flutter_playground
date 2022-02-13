import 'dart:convert';

import '../interface/heroi_repository_interface.dart';
import '../models/heroi_model.dart';
import '../service/client_http.dart';

class HeroiRepository implements IHeroiRepository {
  final ClientHttp client;

  HeroiRepository(this.client);
  @override
  Future<List<HeroiModel>> getAllHeroiModel({required String router}) async {
    var response = await client.getHeroiModel(router: router);
    List<HeroiModel> herois = [];
    if (response != null && response.statusCode == 200) {
      Iterable interableHerois = json.decode('${response.data}');

      return herois = interableHerois
          .map(
            (hmodel) => HeroiModel.fromJson(hmodel),
          )
          .toList();
    } else {
      herois.add(
        HeroiModel(
          descricao: 'Sem retorno :[',
          id: -1,
          name: 'Sem retorno :[',
          poder: 'Sem retorno :[',
        ),
      );
      return herois;
    }
  }
}
