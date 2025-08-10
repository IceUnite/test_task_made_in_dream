import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../bloc/recipe_cubit.dart';
import '../widgets/recipe_card.dart';

class RecipesListPage extends StatefulWidget {
  const RecipesListPage({super.key});

  @override
  State<RecipesListPage> createState() => _RecipesListPageState();
}

class _RecipesListPageState extends State<RecipesListPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // _scrollController.addListener(_onScroll);
    context.read<RecipeCubit>().fetchRecipes();
  }

  // void _onScroll() {
  //   if (_scrollController.position.pixcdels ==
  //       _scrollController.position.maxScrollExtent) {
  //     context.read<RecipeCubit>().fetchRecipes();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Рецепты'),
        actions: [
          IconButton(
            onPressed: () => context.read<RecipeCubit>().fetchRecipes(refresh: true),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: BlocBuilder<RecipeCubit, RecipeState>(
        builder: (context, state) {
          if (state is RecipeInitial || state is RecipeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RecipeError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.message),
                  ElevatedButton(
                    onPressed: () => context.read<RecipeCubit>().fetchRecipes(),
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            );
          } else if (state is RecipeLoaded) {
            if (state.recipes.isEmpty) {
              return const Center(child: Text('Нет доступных рецептов'));
            }

            return RefreshIndicator(
              onRefresh: () async {
                await context.read<RecipeCubit>().fetchRecipes(refresh: true);
              },
              child: ListView.builder(
                controller: _scrollController,
                itemCount: state.recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(recipe: state.recipes[index]);
                },
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}