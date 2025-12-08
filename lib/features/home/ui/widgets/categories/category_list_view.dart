import 'package:flutter/material.dart';
import 'package:laza_shop/features/home/data/models/categories_response_model.dart';
import 'package:laza_shop/features/home/ui/widgets/categories/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, this.categories});
  final List<Category?>? categories;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories?.length ?? 0,
      itemBuilder: (context, index) {
        return CategoryCard(category: categories?[index]);
      },
    );
  }
}
