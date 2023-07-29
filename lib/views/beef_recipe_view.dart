import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeefRecipeView extends StatelessWidget {
  final String image;
  final String foodType;
  final String foodCategory;
  final String recipeInstructions;
  final String? recipeIngredients1;
  final String? recipeIngredients2;
  final String? recipeIngredients3;
  final String? recipeIngredients4;
  final String? recipeIngredients5;
  final String? recipeIngredients6;
  final String? recipeIngredients7;
  final String? recipeIngredients8;
  final String? recipeIngredients9;
  final String? recipeIngredients10;
  final String? recipeIngredients11;
  final String? recipeIngredients12;
  final String? recipeIngredients13;
  final String? recipeIngredients14;
  final String? recipeIngredients15;
  final String? recipeIngredients16;
  final String? recipeIngredients17;
  final String? recipeIngredients18;
  final String? recipeIngredients19;
  final String? recipeIngredients20;
  final String? recipeMeasure1;
  final String? recipeMeasure2;
  final String? recipeMeasure3;
  final String? recipeMeasure4;
  final String? recipeMeasure5;
  final String? recipeMeasure6;
  final String? recipeMeasure7;
  final String? recipeMeasure8;
  final String? recipeMeasure9;
  final String? recipeMeasure10;
  final String? recipeMeasure11;
  final String? recipeMeasure12;
  final String? recipeMeasure13;
  final String? recipeMeasure14;
  final String? recipeMeasure15;
  final String? recipeMeasure16;
  final String? recipeMeasure17;
  final String? recipeMeasure18;
  final String? recipeMeasure19;
  final String? recipeMeasure20;

  const BeefRecipeView({
    super.key,
    required this.image,
    required this.foodType,
    required this.foodCategory,
    required this.recipeInstructions,
    required this.recipeIngredients1,
    required this.recipeIngredients2,
    required this.recipeIngredients3,
    required this.recipeIngredients4,
    required this.recipeIngredients5,
    required this.recipeIngredients6,
    required this.recipeIngredients7,
    required this.recipeIngredients8,
    required this.recipeIngredients9,
    required this.recipeIngredients10,
    required this.recipeIngredients11,
    required this.recipeIngredients12,
    required this.recipeIngredients13,
    required this.recipeIngredients14,
    required this.recipeIngredients15,
    required this.recipeIngredients16,
    required this.recipeIngredients17,
    required this.recipeIngredients18,
    required this.recipeIngredients19,
    required this.recipeIngredients20,
    this.recipeMeasure1,
    this.recipeMeasure2,
    this.recipeMeasure3,
    this.recipeMeasure4,
    this.recipeMeasure5,
    this.recipeMeasure6,
    this.recipeMeasure7,
    this.recipeMeasure8,
    this.recipeMeasure9,
    this.recipeMeasure10,
    this.recipeMeasure11,
    this.recipeMeasure12,
    this.recipeMeasure13,
    this.recipeMeasure14,
    this.recipeMeasure15,
    this.recipeMeasure16,
    this.recipeMeasure17,
    this.recipeMeasure18,
    this.recipeMeasure19,
    this.recipeMeasure20,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Full Recipe",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        child: Image.network(
                          image,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Food Type: ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            foodType,
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Category: ",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            foodCategory,
                            style: GoogleFonts.poppins(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ingredients: ",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        "${recipeMeasure1!} ${recipeIngredients1!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure2!} ${recipeIngredients2!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure3!} ${recipeIngredients3!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure4!} ${recipeIngredients4!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure5!} ${recipeIngredients5!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure6!} ${recipeIngredients6!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure7!} ${recipeIngredients7!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure8!} ${recipeIngredients8!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure9!} ${recipeIngredients9!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure10!} ${recipeIngredients10!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure11!} ${recipeIngredients11!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure12!} ${recipeIngredients12!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure13!} ${recipeIngredients13!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure14!} ${recipeIngredients14!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure15!} ${recipeIngredients15!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure16!} ${recipeIngredients16!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure17!} ${recipeIngredients17!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure18!} ${recipeIngredients18!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure19!} ${recipeIngredients19!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${recipeMeasure20!} ${recipeIngredients20!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "Instructions: ",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        recipeInstructions,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
