import 'package:flutter/material.dart';
import 'package:newsapp/components/category_list_view.dart';
import 'package:newsapp/components/home_app_bar.dart';

import 'package:newsapp/components/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: const CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: const SizedBox(height: 32),
              ),
              NewsListViewBuilder(
                category: 'top',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
