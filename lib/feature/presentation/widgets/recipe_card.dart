import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_task_made_in_dream/feature/domain/entities/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final VoidCallback? onTap;

  const RecipeCard({super.key, required this.recipe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildImage(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitleRow(context),
                  if (recipe.shortDescription.isNotEmpty) _buildDescription(context),
                  ..._buildMetaInfo(context),
                  ..._buildIngredientsSection(context),
                  ..._buildStepsSection(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      child: recipe.image != null && recipe.image!.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: recipe.image!,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              placeholder: (context, url) => _buildImagePlaceholder(),
              errorWidget: (context, url, error) => _buildImageError(),
            )
          : _buildImagePlaceholder(),
    );
  }

  Widget _buildImagePlaceholder() {
    return Container(
      height: 180,
      color: Colors.grey[200],
      child: const Icon(Icons.fastfood, size: 50, color: Colors.grey),
    );
  }

  Widget _buildImageError() {
    return Container(
      height: 180,
      color: Colors.grey[200],
      child: const Icon(Icons.error, size: 50, color: Colors.red),
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [..._buildMetaChips(context)]),
        Text(recipe.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 12),
      child: Text(recipe.shortDescription, style: Theme.of(context).textTheme.bodyMedium),
    );
  }

  List<Widget> _buildMetaChips(BuildContext context) {
    final chips = <Widget>[];

    if (recipe.prepTime != null) {
      chips.add(_buildMetaChip(context, recipe.prepTimeFormatted!, Icons.timer));
    }

    if (recipe.energy != null) {
      chips.add(_buildMetaChip(context, '${recipe.energy} ккал', Icons.local_fire_department));
    }

    return chips;
  }

  Widget _buildMetaChip(BuildContext context, String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Chip(
        labelPadding: const EdgeInsets.symmetric(horizontal: 4),
        backgroundColor: Colors.blue[50],
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(icon, size: 16), const SizedBox(width: 4), Text(text)],
        ),
      ),
    );
  }

  List<Widget> _buildMetaInfo(BuildContext context) {
    final widgets = <Widget>[];

    if (recipe.dateAdded != null) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
              const SizedBox(width: 4),
              Text(recipe.dateAdded!, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600])),
            ],
          ),
        ),
      );
    }

    return widgets;
  }

  List<Widget> _buildIngredientsSection(BuildContext context) {
    final widgets = <Widget>[];
    final hasIngredientsOne = recipe.ingredientsOne?.isNotEmpty ?? false;
    final hasIngredientsTwo = recipe.ingredientsTwo?.isNotEmpty ?? false;

    if (hasIngredientsOne || hasIngredientsTwo) {
      widgets.add(
        Text('Ингредиенты:', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
      );

      if (hasIngredientsOne) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredientsOne!
                  .map((ingredient) => Text('• $ingredient', style: Theme.of(context).textTheme.bodyMedium))
                  .toList(),
            ),
          ),
        );
      }

      if (hasIngredientsTwo) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: recipe.ingredientsTwo!
                  .map((ingredient) => Text('• $ingredient', style: Theme.of(context).textTheme.bodyMedium))
                  .toList(),
            ),
          ),
        );
      }

      widgets.add(const SizedBox(height: 12));
    }

    return widgets;
  }

  List<Widget> _buildStepsSection(BuildContext context) {
    final widgets = <Widget>[];

    if (recipe.steps?.isNotEmpty ?? false) {
      widgets.add(
        Text(
          'Способ приготовления:',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
      );

      widgets.add(const SizedBox(height: 8));

      widgets.addAll(
        recipe.steps!.asMap().entries.map((entry) {
          final index = entry.key + 1;
          final step = entry.value;
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text('$index. $step', style: Theme.of(context).textTheme.bodyMedium),
          );
        }),
      );
    }

    return widgets;
  }
}
