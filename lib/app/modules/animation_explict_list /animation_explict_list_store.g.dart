// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_explict_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimationExplictListStore on _AnimationExplictListStoreBase, Store {
  final _$heroiModelsAtom =
      Atom(name: '_AnimationExplictListStoreBase.heroiModels');

  @override
  List<HeroiModel>? get heroiModels {
    _$heroiModelsAtom.reportRead();
    return super.heroiModels;
  }

  @override
  set heroiModels(List<HeroiModel>? value) {
    _$heroiModelsAtom.reportWrite(value, super.heroiModels, () {
      super.heroiModels = value;
    });
  }

  final _$_AnimationExplictListStoreBaseActionController =
      ActionController(name: '_AnimationExplictListStoreBase');

  @override
  List<HeroiModel> toChangesHeroiModelList(
      {required List<HeroiModel> listValue}) {
    final _$actionInfo =
        _$_AnimationExplictListStoreBaseActionController.startAction(
            name: '_AnimationExplictListStoreBase.toChangesHeroiModelList');
    try {
      return super.toChangesHeroiModelList(listValue: listValue);
    } finally {
      _$_AnimationExplictListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
heroiModels: ${heroiModels}
    ''';
  }
}
