import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/consts/colors.dart';
import 'package:shopping_app/consts/consts.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;

  GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      //padding: const EdgeInsets.all(12),
      padding: (const EdgeInsets.symmetric(horizontal: 4)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          //color: color[100],
          color: Colors.white
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // item image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                imagePath,
                height: 67,
                width: 150, 
                fit: BoxFit.cover,
                //height: 64,
              ),
            ),
            
            // item name
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
      
            MaterialButton(
              onPressed: onPressed,
              color: Colors.black,
              //color: Colors.green,
              //color: color,
              child: Text(
                '₹ ' + itemPrice,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
