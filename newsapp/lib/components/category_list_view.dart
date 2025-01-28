import 'package:flutter/material.dart';
import 'package:newsapp/components/category_card.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAsset: 'assets/pexels-joshsorenson-1714208.jpg',
        categoryName: 'Business'),
    CategoryModel(
        imageAsset: 'assets/entertainment2.png', categoryName: 'Entertainment'),
    CategoryModel(imageAsset: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(
        imageAsset: 'assets/education.jpg', categoryName: 'Education'),
    CategoryModel(imageAsset: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        imageAsset: 'assets/lifestyle.jpg', categoryName: 'Lifestyle'),
    CategoryModel(imageAsset: 'assets/general.jpg', categoryName: 'Top'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
