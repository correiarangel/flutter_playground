import 'package:mobx/mobx.dart';

part 'animation_explicit_store.g.dart';

class AnimationExPlicitStore = _AnimationExPlicitStoreBase
    with _$AnimationExPlicitStore;

abstract class _AnimationExPlicitStoreBase with Store {
  @observable
  bool isAnimatioRun = false;
  @action
  bool toChangesIsloading({isLoadingValue}) {

    if (isLoadingValue != null) {
      isAnimatioRun = isLoadingValue;
    } else if (isAnimatioRun && isLoadingValue == null) {
      isAnimatioRun = false;
    } else if (isAnimatioRun == false && isLoadingValue == null) {
      isAnimatioRun = true;
    }
    return isAnimatioRun;
  }
}
