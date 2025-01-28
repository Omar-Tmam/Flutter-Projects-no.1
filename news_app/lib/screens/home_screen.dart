import 'package:flutter/material.dart';
import 'package:news_app/components/category_card.dart';
import 'package:news_app/components/category_list_view.dart';
import 'package:news_app/components/home_app_bar.dart';
import 'package:news_app/components/news_list_view.dart';
import 'package:news_app/components/news_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: HomeAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            CategoryListView(),
            Expanded(child: NewsListView()),
          ],
        ),
      ),
    );
  }
}
