import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  bool isLoading = false;
  @action
  bool toChangesIsloading({isLoadingValue}) {
    if (isLoadingValue != null) {
      isLoading = isLoadingValue;
    } else if (isLoading && isLoadingValue == null) {
      isLoading = false;
    } else if (isLoading == false && isLoadingValue == null) {
      isLoading = true;
    }
    return isLoading;
  }
}
