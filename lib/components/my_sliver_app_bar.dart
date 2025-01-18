import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget child;

  const MySliverAppBar({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 120,
      expandedHeight: 340,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        IconButton(
          onPressed: () {
            // go to cart page
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartPage()));
          },
          icon: const Icon(Icons.shopping_cart),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Diner"),
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
