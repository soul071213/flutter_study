import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe/components/re_items.dart';
import 'package:recipe/components/re_titles.dart';
import 'package:recipe/components/re_menu.dart';

class RecipePage extends StatelessWidget{
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made burder"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          Icons.search,
          color: Colors.black,
        ),
        SizedBox(width: 15,),
        Icon(
          Icons.heart_broken,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15,),
      ],
    );
  }
}