// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animation_explicit_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AnimationExPlicitStore on _AnimationExPlicitStoreBase, Store {
  final _$isAnimatioRunAtom =
      Atom(name: '_AnimationExPlicitStoreBase.isAnimatioRun');

  @override
  bool get isAnimatioRun {
    _$isAnimatioRunAtom.reportRead();
    return super.isAnimatioRun;
  }

  @override
  set isAnimatioRun(bool value) {
    _$isAnimatioRunAtom.reportWrite(value, super.isAnimatioRun, () {
      super.isAnimatioRun = value;
    });
  }

  final _$_AnimationExPlicitStoreBaseActionController =
      ActionController(name: '_AnimationExPlicitStoreBase');

  @override
  bool toChangesIsloading({dynamic isLoadingValue}) {
    final _$actionInfo = _$_AnimationExPlicitStoreBaseActionController
        .startAction(name: '_AnimationExPlicitStoreBase.toChangesIsloading');
    try {
      return super.toChangesIsloading(isLoadingValue: isLoadingValue);
    } finally {
      _$_AnimationExPlicitStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAnimatioRun: ${isAnimatioRun}
    ''';
  }
}
