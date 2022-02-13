import 'package:flutter_playground/app/shared/models/heroi_model.dart';

abstract class IHeroiRepository {
  Future<List<HeroiModel>> getAllHeroiModel({required String router});
}
