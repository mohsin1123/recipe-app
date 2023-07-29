import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/services/homepage_latest_provider.dart';
import 'package:recipe_app/services/homeseafood_provider.dart';
import 'package:recipe_app/views/beef_recipe_view.dart';
import 'package:recipe_app/views/search_view.dart';
import 'package:recipe_app/views/widgets/drawer.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Delightful Eats",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const SearchPage()))),
              icon: const Icon(Icons.search_outlined))
        ],
      ),
      drawer: const HomepageDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: Colors.blue,
                image: const DecorationImage(
                    image: AssetImage("assets/banner.jpg"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "Get Recipes for your favorite Dishes!",
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Latest Recipes: ",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          FutureBuilder(
              future: getHomePageRecipes(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.meals!.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeefRecipeView(
                                  image: snapshot
                                      .data!.meals![index].strMealThumb
                                      .toString(),
                                  foodType: snapshot.data!.meals![index].strArea
                                      .toString(),
                                  foodCategory: snapshot
                                      .data!.meals![index].strCategory
                                      .toString(),
                                  recipeInstructions: snapshot
                                      .data!.meals![index].strInstructions
                                      .toString(),
                                  recipeIngredients1: snapshot
                                      .data!.meals![index].strIngredient1
                                      .toString(),
                                  recipeIngredients2: snapshot
                                      .data!.meals![index].strIngredient2
                                      .toString(),
                                  recipeIngredients3: snapshot
                                      .data!.meals![index].strIngredient3
                                      .toString(),
                                  recipeIngredients4: snapshot
                                      .data!.meals![index].strIngredient4
                                      .toString(),
                                  recipeIngredients5: snapshot
                                      .data!.meals![index].strIngredient5
                                      .toString(),
                                  recipeIngredients6: snapshot
                                      .data!.meals![index].strIngredient6
                                      .toString(),
                                  recipeIngredients7: snapshot
                                      .data!.meals![index].strIngredient7
                                      .toString(),
                                  recipeIngredients8: snapshot
                                      .data!.meals![index].strIngredient8
                                      .toString(),
                                  recipeIngredients9: snapshot
                                      .data!.meals![index].strIngredient9
                                      .toString(),
                                  recipeIngredients10: snapshot
                                      .data!.meals![index].strIngredient10
                                      .toString(),
                                  recipeIngredients11: snapshot
                                      .data!.meals![index].strIngredient11
                                      .toString(),
                                  recipeIngredients12: snapshot
                                      .data!.meals![index].strIngredient12
                                      .toString(),
                                  recipeIngredients13: snapshot
                                      .data!.meals![index].strIngredient13
                                      .toString(),
                                  recipeIngredients14: snapshot
                                      .data!.meals![index].strIngredient14
                                      .toString(),
                                  recipeIngredients15: snapshot
                                      .data!.meals![index].strIngredient15
                                      .toString(),
                                  recipeIngredients16: snapshot
                                      .data!.meals![index].strIngredient16
                                      .toString(),
                                  recipeIngredients17: snapshot
                                      .data!.meals![index].strIngredient17
                                      .toString(),
                                  recipeIngredients18: snapshot
                                      .data!.meals![index].strIngredient18
                                      .toString(),
                                  recipeIngredients19: snapshot
                                      .data!.meals![index].strIngredient19
                                      .toString(),
                                  recipeIngredients20: snapshot
                                      .data!.meals![index].strIngredient20
                                      .toString(),
                                  recipeMeasure1: snapshot
                                      .data!.meals![index].strMeasure1
                                      .toString(),
                                  recipeMeasure2: snapshot
                                      .data!.meals![index].strMeasure2
                                      .toString(),
                                  recipeMeasure3: snapshot
                                      .data!.meals![index].strMeasure3
                                      .toString(),
                                  recipeMeasure4: snapshot
                                      .data!.meals![index].strMeasure4
                                      .toString(),
                                  recipeMeasure5: snapshot
                                      .data!.meals![index].strMeasure5
                                      .toString(),
                                  recipeMeasure6: snapshot
                                      .data!.meals![index].strMeasure6
                                      .toString(),
                                  recipeMeasure7: snapshot
                                      .data!.meals![index].strMeasure7
                                      .toString(),
                                  recipeMeasure8: snapshot
                                      .data!.meals![index].strMeasure8
                                      .toString(),
                                  recipeMeasure9: snapshot
                                      .data!.meals![index].strMeasure9
                                      .toString(),
                                  recipeMeasure10: snapshot
                                      .data!.meals![index].strMeasure10
                                      .toString(),
                                  recipeMeasure11: snapshot
                                      .data!.meals![index].strMeasure11
                                      .toString(),
                                  recipeMeasure12: snapshot
                                      .data!.meals![index].strMeasure12
                                      .toString(),
                                  recipeMeasure13: snapshot
                                      .data!.meals![index].strMeasure13
                                      .toString(),
                                  recipeMeasure14: snapshot
                                      .data!.meals![index].strMeasure14
                                      .toString(),
                                  recipeMeasure15: snapshot
                                      .data!.meals![index].strMeasure15
                                      .toString(),
                                  recipeMeasure16: snapshot
                                      .data!.meals![index].strMeasure16
                                      .toString(),
                                  recipeMeasure17: snapshot
                                      .data!.meals![index].strMeasure17
                                      .toString(),
                                  recipeMeasure18: snapshot
                                      .data!.meals![index].strMeasure18
                                      .toString(),
                                  recipeMeasure19: snapshot
                                      .data!.meals![index].strMeasure19
                                      .toString(),
                                  recipeMeasure20: snapshot
                                      .data!.meals![index].strMeasure20
                                      .toString(),
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  elevation: 5,
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          snapshot.data!.meals![index].strMeal
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                          child: Image.network(
                                            snapshot.data!.meals![index]
                                                .strMealThumb
                                                .toString(),
                                            scale: 5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  );
                }
              }),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              "Popular Recipes: ",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          FutureBuilder(
              future: getHomeRandomFood(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.meals!.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeefRecipeView(
                                  image: snapshot
                                      .data!.meals![index].strMealThumb
                                      .toString(),
                                  foodType: snapshot.data!.meals![index].strArea
                                      .toString(),
                                  foodCategory: snapshot
                                      .data!.meals![index].strCategory
                                      .toString(),
                                  recipeInstructions: snapshot
                                      .data!.meals![index].strInstructions
                                      .toString(),
                                  recipeIngredients1: snapshot
                                      .data!.meals![index].strIngredient1
                                      .toString(),
                                  recipeIngredients2: snapshot
                                      .data!.meals![index].strIngredient2
                                      .toString(),
                                  recipeIngredients3: snapshot
                                      .data!.meals![index].strIngredient3
                                      .toString(),
                                  recipeIngredients4: snapshot
                                      .data!.meals![index].strIngredient4
                                      .toString(),
                                  recipeIngredients5: snapshot
                                      .data!.meals![index].strIngredient5
                                      .toString(),
                                  recipeIngredients6: snapshot
                                      .data!.meals![index].strIngredient6
                                      .toString(),
                                  recipeIngredients7: snapshot
                                      .data!.meals![index].strIngredient7
                                      .toString(),
                                  recipeIngredients8: snapshot
                                      .data!.meals![index].strIngredient8
                                      .toString(),
                                  recipeIngredients9: snapshot
                                      .data!.meals![index].strIngredient9
                                      .toString(),
                                  recipeIngredients10: snapshot
                                      .data!.meals![index].strIngredient10
                                      .toString(),
                                  recipeIngredients11: snapshot
                                      .data!.meals![index].strIngredient11
                                      .toString(),
                                  recipeIngredients12: snapshot
                                      .data!.meals![index].strIngredient12
                                      .toString(),
                                  recipeIngredients13: snapshot
                                      .data!.meals![index].strIngredient13
                                      .toString(),
                                  recipeIngredients14: snapshot
                                      .data!.meals![index].strIngredient14
                                      .toString(),
                                  recipeIngredients15: snapshot
                                      .data!.meals![index].strIngredient15
                                      .toString(),
                                  recipeIngredients16: snapshot
                                      .data!.meals![index].strIngredient16
                                      .toString(),
                                  recipeIngredients17: snapshot
                                      .data!.meals![index].strIngredient17
                                      .toString(),
                                  recipeIngredients18: snapshot
                                      .data!.meals![index].strIngredient18
                                      .toString(),
                                  recipeIngredients19: snapshot
                                      .data!.meals![index].strIngredient19
                                      .toString(),
                                  recipeIngredients20: snapshot
                                      .data!.meals![index].strIngredient20
                                      .toString(),
                                  recipeMeasure1: snapshot
                                      .data!.meals![index].strMeasure1
                                      .toString(),
                                  recipeMeasure2: snapshot
                                      .data!.meals![index].strMeasure2
                                      .toString(),
                                  recipeMeasure3: snapshot
                                      .data!.meals![index].strMeasure3
                                      .toString(),
                                  recipeMeasure4: snapshot
                                      .data!.meals![index].strMeasure4
                                      .toString(),
                                  recipeMeasure5: snapshot
                                      .data!.meals![index].strMeasure5
                                      .toString(),
                                  recipeMeasure6: snapshot
                                      .data!.meals![index].strMeasure6
                                      .toString(),
                                  recipeMeasure7: snapshot
                                      .data!.meals![index].strMeasure7
                                      .toString(),
                                  recipeMeasure8: snapshot
                                      .data!.meals![index].strMeasure8
                                      .toString(),
                                  recipeMeasure9: snapshot
                                      .data!.meals![index].strMeasure9
                                      .toString(),
                                  recipeMeasure10: snapshot
                                      .data!.meals![index].strMeasure10
                                      .toString(),
                                  recipeMeasure11: snapshot
                                      .data!.meals![index].strMeasure11
                                      .toString(),
                                  recipeMeasure12: snapshot
                                      .data!.meals![index].strMeasure12
                                      .toString(),
                                  recipeMeasure13: snapshot
                                      .data!.meals![index].strMeasure13
                                      .toString(),
                                  recipeMeasure14: snapshot
                                      .data!.meals![index].strMeasure14
                                      .toString(),
                                  recipeMeasure15: snapshot
                                      .data!.meals![index].strMeasure15
                                      .toString(),
                                  recipeMeasure16: snapshot
                                      .data!.meals![index].strMeasure16
                                      .toString(),
                                  recipeMeasure17: snapshot
                                      .data!.meals![index].strMeasure17
                                      .toString(),
                                  recipeMeasure18: snapshot
                                      .data!.meals![index].strMeasure18
                                      .toString(),
                                  recipeMeasure19: snapshot
                                      .data!.meals![index].strMeasure19
                                      .toString(),
                                  recipeMeasure20: snapshot
                                      .data!.meals![index].strMeasure20
                                      .toString(),
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  elevation: 5,
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          snapshot.data!.meals![index].strMeal
                                              .toString(),
                                          style: GoogleFonts.poppins(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(5)),
                                          child: Image.network(
                                            snapshot.data!.meals![index]
                                                .strMealThumb
                                                .toString(),
                                            scale: 5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  );
                }
              }),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
