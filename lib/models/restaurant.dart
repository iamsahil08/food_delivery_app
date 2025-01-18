import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/models/cart_item.dart';
import 'package:food_delivery_app_mitch_koko/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic cheese burger",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "BBQ bacon burger",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/veg_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Veggie burger",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Aloha burger",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Blue moon burger",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),

    // salads
    Food(
        name: "Caesar salad",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Greek Salad",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Quinoa Salad",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Asian Sesame salad",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Southwest chicken salad",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),

    // sides
    Food(
        name: "Sweet potato fries",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Onion rings",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Garlic bread",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Loaded sweet potato fries",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Crispy mac and cheese bites",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),

    // desserts
    Food(
        name: "Chocolate brownie",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Cheesecake",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Apple pie",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Pear pie",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Red velvet lava cake",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),

    // drinks
    Food(
        name: "Lemonade",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Iced tea",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Smoothie",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Mojito",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
    Food(
        name: "Caramel Macchiato",
        description:
            "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
        imagePath: "lib/images/burgers/cheese_burger.png",
        price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99),
        ]),
  ];

/*
G E T T E R S
*/

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

/*
O P E R A T I O N S
*/

// user cart
  final List<CartItem> _cart = [];
// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists increase it's quantity
    if (cartItem != null) { 
      cartItem.quantity++;
    }

    // otherwise add a new cartItem to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
  
    notifyListeners();
  }

// remove from cart
void removeFromCart(CartItem cartItem){
  int cartIndex = _cart.indexOf(cartItem);

  if(cartIndex != -1){
    if(_cart[cartIndex].quantity > 1 ){
      _cart[cartIndex].quantity--;
    } else{
      _cart.removeAt(cartIndex);
    }
  }
}

// get total price of cart
double getTotalPrice(){
  double total = 0.0;

  for(CartItem cartItem in _cart){
    double itemTotal = cartItem.food.price;
    for(Addon addon in cartItem.selectedAddons){
      itemTotal += addon.price;
    }

    total += itemTotal * cartItem.quantity;
  }

  return total;
}

// get total number of items in cart
int getTotalItemCount(){
  int totalItemCount = 0;
  
  for(CartItem cartItem in _cart){
    totalItemCount += cartItem.quantity;
  }

  return totalItemCount;
}

// clear cart
void clearCart(){
  _cart.clear();
  notifyListeners();
}

/*
H E L P E R S
*/

// generate a receipt

// format double value into money

// format list of addons into a string summary
}
