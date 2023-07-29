import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChickenRecipeView extends StatelessWidget {
  final String image;
  final String foodType;
  final String foodCategory;
  final String chickenrecipeInstructions;
  final String? chickenrecipeIngredients1;
  final String? chickenrecipeIngredients2;
  final String? chickenrecipeIngredients3;
  final String? chickenrecipeIngredients4;
  final String? chickenrecipeIngredients5;
  final String? chickenrecipeIngredients6;
  final String? chickenrecipeIngredients7;
  final String? chickenrecipeIngredients8;
  final String? chickenrecipeIngredients9;
  final String? chickenrecipeIngredients10;
  final String? chickenrecipeIngredients11;
  final String? chickenrecipeIngredients12;
  final String? chickenrecipeIngredients13;
  final String? chickenrecipeIngredients14;
  final String? chickenrecipeIngredients15;
  final String? chickenrecipeIngredients16;
  final String? chickenrecipeIngredients17;
  final String? chickenrecipeIngredients18;
  final String? chickenrecipeIngredients19;
  final String? chickenrecipeIngredients20;
  final String? chickenrecipeMeasure1;
  final String? chickenrecipeMeasure2;
  final String? chickenrecipeMeasure3;
  final String? chickenrecipeMeasure4;
  final String? chickenrecipeMeasure5;
  final String? chickenrecipeMeasure6;
  final String? chickenrecipeMeasure7;
  final String? chickenrecipeMeasure8;
  final String? chickenrecipeMeasure9;
  final String? chickenrecipeMeasure10;
  final String? chickenrecipeMeasure11;
  final String? chickenrecipeMeasure12;
  final String? chickenrecipeMeasure13;
  final String? chickenrecipeMeasure14;
  final String? chickenrecipeMeasure15;
  final String? chickenrecipeMeasure16;
  final String? chickenrecipeMeasure17;
  final String? chickenrecipeMeasure18;
  final String? chickenrecipeMeasure19;
  final String? chickenrecipeMeasure20;

  const ChickenRecipeView({
    super.key,
    required this.image,
    required this.foodType,
    required this.foodCategory,
    required this.chickenrecipeInstructions,
    this.chickenrecipeIngredients1,
    this.chickenrecipeIngredients2,
    this.chickenrecipeIngredients3,
    this.chickenrecipeIngredients4,
    this.chickenrecipeIngredients5,
    this.chickenrecipeIngredients6,
    this.chickenrecipeIngredients7,
    this.chickenrecipeIngredients8,
    this.chickenrecipeIngredients9,
    this.chickenrecipeIngredients10,
    this.chickenrecipeIngredients11,
    this.chickenrecipeIngredients12,
    this.chickenrecipeIngredients13,
    this.chickenrecipeIngredients14,
    this.chickenrecipeIngredients15,
    this.chickenrecipeIngredients16,
    this.chickenrecipeIngredients17,
    this.chickenrecipeIngredients18,
    this.chickenrecipeIngredients19,
    this.chickenrecipeIngredients20,
    this.chickenrecipeMeasure1,
    this.chickenrecipeMeasure2,
    this.chickenrecipeMeasure3,
    this.chickenrecipeMeasure4,
    this.chickenrecipeMeasure5,
    this.chickenrecipeMeasure6,
    this.chickenrecipeMeasure7,
    this.chickenrecipeMeasure8,
    this.chickenrecipeMeasure9,
    this.chickenrecipeMeasure10,
    this.chickenrecipeMeasure11,
    this.chickenrecipeMeasure12,
    this.chickenrecipeMeasure13,
    this.chickenrecipeMeasure14,
    this.chickenrecipeMeasure15,
    this.chickenrecipeMeasure16,
    this.chickenrecipeMeasure17,
    this.chickenrecipeMeasure18,
    this.chickenrecipeMeasure19,
    this.chickenrecipeMeasure20,
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
                        "${chickenrecipeMeasure1!} ${chickenrecipeIngredients1!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure2!} ${chickenrecipeIngredients2!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure3!} ${chickenrecipeIngredients3!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure4!} ${chickenrecipeIngredients4!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure5!} ${chickenrecipeIngredients5!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure6!} ${chickenrecipeIngredients6!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure7!} ${chickenrecipeIngredients7!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure8!} ${chickenrecipeIngredients8!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure9!} ${chickenrecipeIngredients9!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure10!} ${chickenrecipeIngredients10!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure11!} ${chickenrecipeIngredients11!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure12!} ${chickenrecipeIngredients12!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure13!} ${chickenrecipeIngredients13!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure14!} ${chickenrecipeIngredients14!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure15!} ${chickenrecipeIngredients15!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure16!} ${chickenrecipeIngredients16!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure17!} ${chickenrecipeIngredients17!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure18!} ${chickenrecipeIngredients18!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure19!} ${chickenrecipeIngredients19!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "${chickenrecipeMeasure20!} ${chickenrecipeIngredients20!}",
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      Text(
                        "Instructions: ",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        chickenrecipeInstructions,
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
