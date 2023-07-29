import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/models/chicken_recipes_model.dart';
import 'package:recipe_app/services/chicken_recipes_provider.dart';
import 'package:recipe_app/views/chicken_recipe_view.dart';

class ChickenRecipesPage extends StatefulWidget {
  const ChickenRecipesPage({super.key});

  @override
  State<ChickenRecipesPage> createState() => _ChickenRecipesPageState();
}

class _ChickenRecipesPageState extends State<ChickenRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Chicken Recipes",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
          child: FutureBuilder<ChickenRecipesModel>(
              future: getChickenRecipes(),
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
                                      builder: (context) => ChickenRecipeView(
                                            image: snapshot.data!.meals![index]
                                                .strMealThumb
                                                .toString(),
                                            foodType: snapshot
                                                .data!.meals![index].strArea
                                                .toString(),
                                            foodCategory: snapshot
                                                .data!.meals![index].strCategory
                                                .toString(),
                                            chickenrecipeInstructions: snapshot
                                                .data!
                                                .meals![index]
                                                .strInstructions
                                                .toString(),
                                            chickenrecipeIngredients1: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient1
                                                .toString(),
                                            chickenrecipeIngredients2: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient2
                                                .toString(),
                                            chickenrecipeIngredients3: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient3
                                                .toString(),
                                            chickenrecipeIngredients4: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient4
                                                .toString(),
                                            chickenrecipeIngredients5: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient5
                                                .toString(),
                                            chickenrecipeIngredients6: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient6
                                                .toString(),
                                            chickenrecipeIngredients7: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient7
                                                .toString(),
                                            chickenrecipeIngredients8: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient8
                                                .toString(),
                                            chickenrecipeIngredients9: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient9
                                                .toString(),
                                            chickenrecipeIngredients10: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient10
                                                .toString(),
                                            chickenrecipeIngredients11: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient11
                                                .toString(),
                                            chickenrecipeIngredients12: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient12
                                                .toString(),
                                            chickenrecipeIngredients13: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient13
                                                .toString(),
                                            chickenrecipeIngredients14: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient14
                                                .toString(),
                                            chickenrecipeIngredients15: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient15
                                                .toString(),
                                            chickenrecipeIngredients16: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient16
                                                .toString(),
                                            chickenrecipeIngredients17: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient17
                                                .toString(),
                                            chickenrecipeIngredients18: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient18
                                                .toString(),
                                            chickenrecipeIngredients19: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient19
                                                .toString(),
                                            chickenrecipeIngredients20: snapshot
                                                .data!
                                                .meals![index]
                                                .strIngredient20
                                                .toString(),
                                            chickenrecipeMeasure1: snapshot
                                                .data!.meals![index].strMeasure1
                                                .toString(),
                                            chickenrecipeMeasure2: snapshot
                                                .data!.meals![index].strMeasure2
                                                .toString(),
                                            chickenrecipeMeasure3: snapshot
                                                .data!.meals![index].strMeasure3
                                                .toString(),
                                            chickenrecipeMeasure4: snapshot
                                                .data!.meals![index].strMeasure4
                                                .toString(),
                                            chickenrecipeMeasure5: snapshot
                                                .data!.meals![index].strMeasure5
                                                .toString(),
                                            chickenrecipeMeasure6: snapshot
                                                .data!.meals![index].strMeasure6
                                                .toString(),
                                            chickenrecipeMeasure7: snapshot
                                                .data!.meals![index].strMeasure7
                                                .toString(),
                                            chickenrecipeMeasure8: snapshot
                                                .data!.meals![index].strMeasure8
                                                .toString(),
                                            chickenrecipeMeasure9: snapshot
                                                .data!.meals![index].strMeasure9
                                                .toString(),
                                            chickenrecipeMeasure10: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure10
                                                .toString(),
                                            chickenrecipeMeasure11: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure11
                                                .toString(),
                                            chickenrecipeMeasure12: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure12
                                                .toString(),
                                            chickenrecipeMeasure13: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure13
                                                .toString(),
                                            chickenrecipeMeasure14: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure14
                                                .toString(),
                                            chickenrecipeMeasure15: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure15
                                                .toString(),
                                            chickenrecipeMeasure16: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure16
                                                .toString(),
                                            chickenrecipeMeasure17: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure17
                                                .toString(),
                                            chickenrecipeMeasure18: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure18
                                                .toString(),
                                            chickenrecipeMeasure19: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure19
                                                .toString(),
                                            chickenrecipeMeasure20: snapshot
                                                .data!
                                                .meals![index]
                                                .strMeasure20
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
