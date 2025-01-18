import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.name,
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
