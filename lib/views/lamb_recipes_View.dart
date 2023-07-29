import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/models/lamb_recipes_model.dart';

import 'package:recipe_app/services/lamb_recipes_model.dart';
import 'package:recipe_app/views/beef_recipe_view.dart';

class LambRecipesView extends StatefulWidget {
  const LambRecipesView({super.key});

  @override
  State<LambRecipesView> createState() => _LambRecipesViewState();
}

class _LambRecipesViewState extends State<LambRecipesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Lamb Recipes",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: FutureBuilder<LambRecipesModel>(
              future: getLambRecipes(),
              builder: ((context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return SizedBox(
                    height: MediaQuery.sizeOf(context).height,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: snapshot.data?.meals?.length,
                        itemBuilder: ((context, index) {
                          return SingleChildScrollView(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BeefRecipeView(
                                            image: snapshot.data!.meals![index]
                                                .strMealThumb
                                                .toString(),
                                            foodType: snapshot
                                                .data!.meals![index].strArea
                                                .toString(),
                                            foodCategory: snapshot
                                                .data!.meals![index].strCategory
                                                .toString(),
                                            recipeInstructions: snapshot.data!
                                                .meals![index].strInstructions
                                                .toString(),
                                            recipeIngredients1: snapshot.data!
                                                .meals![index].strIngredient1
                                                .toString(),
                                            recipeIngredients2: snapshot.data!
                                                .meals![index].strIngredient2
                                                .toString(),
                                            recipeIngredients3: snapshot.data!
                                                .meals![index].strIngredient3
                                                .toString(),
                                            recipeIngredients4: snapshot.data!
                                                .meals![index].strIngredient4
                                                .toString(),
                                            recipeIngredients5: snapshot.data!
                                                .meals![index].strIngredient5
                                                .toString(),
                                            recipeIngredients6: snapshot.data!
                                                .meals![index].strIngredient6
                                                .toString(),
                                            recipeIngredients7: snapshot.data!
                                                .meals![index].strIngredient7
                                                .toString(),
                                            recipeIngredients8: snapshot.data!
                                                .meals![index].strIngredient8
                                                .toString(),
                                            recipeIngredients9: snapshot.data!
                                                .meals![index].strIngredient9
                                                .toString(),
                                            recipeIngredients10: snapshot.data!
                                                .meals![index].strIngredient10
                                                .toString(),
                                            recipeIngredients11: snapshot.data!
                                                .meals![index].strIngredient11
                                                .toString(),
                                            recipeIngredients12: snapshot.data!
                                                .meals![index].strIngredient12
                                                .toString(),
                                            recipeIngredients13: snapshot.data!
                                                .meals![index].strIngredient13
                                                .toString(),
                                            recipeIngredients14: snapshot.data!
                                                .meals![index].strIngredient14
                                                .toString(),
                                            recipeIngredients15: snapshot.data!
                                                .meals![index].strIngredient15
                                                .toString(),
                                            recipeIngredients16: snapshot.data!
                                                .meals![index].strIngredient16
                                                .toString(),
                                            recipeIngredients17: snapshot.data!
                                                .meals![index].strIngredient17
                                                .toString(),
                                            recipeIngredients18: snapshot.data!
                                                .meals![index].strIngredient18
                                                .toString(),
                                            recipeIngredients19: snapshot.data!
                                                .meals![index].strIngredient19
                                                .toString(),
                                            recipeIngredients20: snapshot.data!
                                                .meals![index].strIngredient20
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
                                            recipeMeasure10: snapshot.data!
                                                .meals![index].strMeasure10
                                                .toString(),
                                            recipeMeasure11: snapshot.data!
                                                .meals![index].strMeasure11
                                                .toString(),
                                            recipeMeasure12: snapshot.data!
                                                .meals![index].strMeasure12
                                                .toString(),
                                            recipeMeasure13: snapshot.data!
                                                .meals![index].strMeasure13
                                                .toString(),
                                            recipeMeasure14: snapshot.data!
                                                .meals![index].strMeasure14
                                                .toString(),
                                            recipeMeasure15: snapshot.data!
                                                .meals![index].strMeasure15
                                                .toString(),
                                            recipeMeasure16: snapshot.data!
                                                .meals![index].strMeasure16
                                                .toString(),
                                            recipeMeasure17: snapshot.data!
                                                .meals![index].strMeasure17
                                                .toString(),
                                            recipeMeasure18: snapshot.data!
                                                .meals![index].strMeasure18
                                                .toString(),
                                            recipeMeasure19: snapshot.data!
                                                .meals![index].strMeasure19
                                                .toString(),
                                            recipeMeasure20: snapshot.data!
                                                .meals![index].strMeasure20
                                                .toString(),
                                          )),
                                );
                              },
                              child: Card(
                                color: Colors.black,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 100,
                                              width: 280,
                                              child: Text(
                                                snapshot
                                                    .data!.meals![index].strMeal
                                                    .toString()
                                                    .trim(),
                                                style: GoogleFonts.poppins(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(5)),
                                                child: Image.network(
                                                  snapshot.data!.meals![index]
                                                      .strMealThumb
                                                      .toString(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          );
                        })),
                  );
                }
              })),
        )
      ]),
    );
  }
}
