import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/components/my_current_location.dart';
import 'package:food_delivery_app_mitch_koko/components/my_description_box.dart';
import 'package:food_delivery_app_mitch_koko/components/my_drawer.dart';
import 'package:food_delivery_app_mitch_koko/components/my_food_tile.dart';
import 'package:food_delivery_app_mitch_koko/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app_mitch_koko/components/my_tab_bar.dart';
import 'package:food_delivery_app_mitch_koko/models/food.dart';
import 'package:food_delivery_app_mitch_koko/models/restaurant.dart';
import 'package:food_delivery_app_mitch_koko/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  // sort out then return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      // get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            // get individual food
            final food = categoryMenu[index];

            // return Food Tile UI
            return MyFoodTile(
                food: food,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food))));
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppBar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // my current location
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const MyCurrentLocation(),

                  // description box
                  const MyDescriptionBox(),
                ],
              ),
            )
          ],
          body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                  physics: AlwaysScrollableScrollPhysics(),
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu))),
        ));
  }
}
