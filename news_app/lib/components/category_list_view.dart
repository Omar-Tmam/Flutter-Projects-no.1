import 'package:flutter/material.dart';
import 'package:news_app/components/category_card.dart';
import 'package:news_app/models/category_model.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAsset: 'assets/pexels-joshsorenson-1714208.jpg',
        categoryName: 'Business'),
    CategoryModel(
        imageAsset: 'assets/entertainment.jpg', categoryName: 'Entertainment'),
    CategoryModel(imageAsset: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(imageAsset: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(imageAsset: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        imageAsset: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(imageAsset: 'assets/general.jpg', categoryName: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
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
