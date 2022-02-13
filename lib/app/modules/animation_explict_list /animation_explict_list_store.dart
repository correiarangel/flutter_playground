import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/heroi_model.dart';
import '../../shared/repositories/heroi_repository.dart';
import '../../util/value/constant_string_url.dart';

part 'animation_explict_list_store.g.dart';

class AnimationExplictListStore = _AnimationExplictListStoreBase
    with _$AnimationExplictListStore;

abstract class _AnimationExplictListStoreBase with Store {
  final HeroiRepository repository = Modular.get();

  Future<void> fillHeroiModel() async {
    List<HeroiModel> _heroiModels = await repository.getAllHeroiModel(
      router: ConstStringUrl.routerHerois,
    );

    toChangesHeroiModelList(listValue: _heroiModels);
  }

  @observable
  List<HeroiModel>? heroiModels = [];
  @action
  List<HeroiModel> toChangesHeroiModelList(
      {required List<HeroiModel> listValue}) {
    return heroiModels = listValue;
  }
}
