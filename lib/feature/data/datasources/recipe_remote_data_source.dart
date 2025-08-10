import 'package:dio/dio.dart';

import '../../../core/errors/exeptions.dart';
import '../models/recipe_model.dart';


abstract class RecipeRemoteDataSource {
  Future<List<RecipeModel>> getRecipes();
}

class RecipeRemoteDataSourceImpl implements RecipeRemoteDataSource {
  final Dio dio;

  RecipeRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<RecipeModel>> getRecipes() async {
    try {
      final response = await dio.get(
        'https://madeindream.com/index.php?route=api/app/getRecipes',
        options: Options(
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
        ),
      );

      if (response.statusCode == 200) {
        return (response.data as List)
            .map((json) => RecipeModel.fromJson(json))
            .toList();
      } else {
        throw ServerException();
      }
    } on DioException {
      throw ServerException();
    } catch (e) {
      throw ParsingException();
    }
  }
}