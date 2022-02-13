import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../shared/models/heroi_model.dart';
import '../../shared/repositories/heroi_repository.dart';
import '../../util/value/constant_string_url.dart';

part 'animation_implict_list_store.g.dart';

class AnimationImplictListStore = _AnimationImplictListStoreBase
    with _$AnimationImplictListStore;

abstract class _AnimationImplictListStoreBase with Store {
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
  List<HeroiModel> toChangesHeroiModelList({
    required List<HeroiModel> listValue,
  }) =>
      heroiModels = listValue;
}
