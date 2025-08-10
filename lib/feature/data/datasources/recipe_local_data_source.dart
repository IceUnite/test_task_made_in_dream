import 'package:hive/hive.dart';

import '../../../core/errors/exeptions.dart';
import '../models/recipe_model.dart';


abstract class RecipeLocalDataSource {
  Future<void> cacheRecipes(List<RecipeModel> recipes);
  Future<List<RecipeModel>> getCachedRecipes();
}

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  @override
  Future<void> cacheRecipes(List<RecipeModel> recipes) async {
    try {
      final box = await Hive.openBox<RecipeModel>('recipes');
      await box.clear();
      await box.addAll(recipes);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<List<RecipeModel>> getCachedRecipes() async {
    try {
      final box = await Hive.openBox<RecipeModel>('recipes');
      return box.values.toList();
    } catch (e) {
      throw CacheException();
    }
  }
}