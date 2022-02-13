import 'package:mobx/mobx.dart';

part 'animation_implict_store.g.dart';

class AnimationImplictStore = _AnimationImplictStoreBase
    with _$AnimationImplictStore;

abstract class _AnimationImplictStoreBase with Store {
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
