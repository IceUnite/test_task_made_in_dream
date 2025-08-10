import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test_task_made_in_dream/feature/data/models/recipe_model.dart';

import '../../../core/errors/exeptions.dart';

class RecipeRemoteDataSource {
  final Dio dio;

  RecipeRemoteDataSource({required this.dio});

  Future<List<RecipeModel>> getRecipes() async {
    try {
      final response = await dio.get(
        'https://madeindream.com/index.php?route=api/app/getRecipes',
        options: Options(
          responseType: ResponseType.plain, // Получаем сырой ответ для гибкого парсинга
          receiveTimeout: const Duration(seconds: 15),
        ),
      );

      if (response.statusCode != 200) {
        throw ServerException('HTTP ${response.statusCode}');
      }

      final parsedData = _parseResponseData(response.data);
      return _extractRecipesFromData(parsedData);
    } on DioException catch (e) {
      throw NetworkException(e.message ?? 'Network error');
    } catch (e) {
      throw ParsingException('Failed to get recipes: ${e.toString()}');
    }
  }



  dynamic _parseResponseData(dynamic responseData) {
    try {
      if (responseData is String) {
        return jsonDecode(responseData);
      }
      return responseData;
    } catch (e) {
      throw ParsingException('Failed to parse response data: ${e.toString()}\nData: ${responseData?.toString().substring(0, 200)}...');
    }
  }

  List<RecipeModel> _extractRecipesFromData(dynamic data) {
    try {
      if (data is! Map) {
        throw ParsingException('Expected Map but got ${data.runtimeType}');
      }

      if (!data.containsKey('news')) {
        throw ParsingException('Missing "news" key in response. Available keys: ${data.keys.join(', ')}');
      }

      final newsData = data['news'];
      if (newsData is! List) {
        throw ParsingException('Expected List in "news" but got ${newsData.runtimeType}');
      }

      return newsData.map((item) {
        try {
          return RecipeModel.fromJson(item);
        } catch (e) {
          throw ParsingException('Failed to parse recipe item: ${e.toString()}\nItem: $item');
        }
      }).toList();
    } catch (e) {
      throw ParsingException('Failed to extract recipes: ${e.toString()}');
    }
  }
}