import 'package:flutter/material.dart';
import 'package:recipe_app/views/beef_recipes.dart';
import 'package:recipe_app/views/chicken_recipes.dart';

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
            title: Text(
              "Dessert",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Lamb",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Miscellaneous",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Pasta",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Pork",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Seafood",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Side",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Starter",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Vegan",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Vegetarian",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Breakfast",
              style: TextStyle(color: Colors.white),
            ),
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
