import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:test_task_made_in_dream/feature/data/datasources/recipe_local_data_source.dart';
import 'package:test_task_made_in_dream/feature/data/repositories/recipe_repository_impl.dart';
import 'package:test_task_made_in_dream/feature/presentation/bloc/recipe_cubit.dart';
import 'package:test_task_made_in_dream/feature/presentation/pages/recipes_list_page.dart';
import 'package:dio/dio.dart';
import 'feature/data/datasources/recipe_remote_data_source.dart';
import 'feature/data/models/recipe_model.dart';
import 'feature/domain/use_cases/get_reciepts.dart';

void main() async {
  // Инициализация Hive для кэширования
  await Hive.initFlutter();
  // Hive.registerAdapter(RecipeModelAdapter());

  // Настройка Dio с таймаутами
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
  ));

  runApp(MyApp(
    dio: dio,
  ));
}

class MyApp extends StatelessWidget {
  final Dio dio;

  const MyApp({super.key, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Рецепты',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => RecipeRepositoryImpl(
              remoteDataSource: RecipeRemoteDataSourceImpl(dio: dio),
              localDataSource: RecipeLocalDataSourceImpl(),
            ),
          ),
        ],
        child: BlocProvider(
          create: (context) => RecipeCubit(
            getRecipes: GetRecipes(
              RepositoryProvider.of<RecipeRepositoryImpl>(context),
            ),
          )..fetchRecipes(),
          child: const RecipesListPage(),
        ),
      ),
    );
  }
}