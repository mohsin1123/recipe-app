import 'package:flutter/material.dart';
import 'package:recipe_app/views/beef_recipes.dart';
import 'package:recipe_app/views/breakfast_recipes_view.dart';
import 'package:recipe_app/views/chicken_recipes.dart';
import 'package:recipe_app/views/lamb_recipes_View.dart';
import 'package:recipe_app/views/miscelleneous_recipe_view.dart';
import 'package:recipe_app/views/pasta_Recipe_view.dart';
import 'package:recipe_app/views/pork_recipe_view.dart';
import 'package:recipe_app/views/seafood_recipe_view.dart';
import 'package:recipe_app/views/vegan_Recipe_view.dart';
import 'package:recipe_app/views/vegetarian_Recipe_view.dart';

class HomepageDrawer extends StatelessWidget {
  const HomepageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                "assets/delightfuleats.png",
                scale: 2,
              ),
            ],
          ),
          ListTile(
            title: const Text(
              "Beef",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const BeefRecipesPage()))),
          ),
          ListTile(
            title: const Text(
              "Chicken",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const ChickenRecipesPage()))),
          ),
          ListTile(
            title: const Text(
              "Lamb",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const LambRecipesView()))),
          ),
          ListTile(
            title: const Text(
              "Miscellaneous",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const MiscelleneousRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Pasta",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const PastaRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Pork",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const PorkRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Seafood",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const SeafoodRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Vegan",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const VeganRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Vegetarian",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const VegetarianRecipeView()))),
          ),
          ListTile(
            title: const Text(
              "Breakfast",
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => const BreakfastRecipesView()))),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "© Copyright 2023 - Delightful Eats",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
