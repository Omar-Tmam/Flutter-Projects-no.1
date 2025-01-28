import 'package:flutter/material.dart';
import 'package:newsapp/components/home_app_bar.dart';
import 'package:newsapp/components/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({required this.category, super.key});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffE7DEF1),
        elevation: 0,
        title: HomeAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
