import 'package:flutter/material.dart';
import 'package:my_cats/cat_details_screen.dart';
import 'package:my_cats/model/cats.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({
    super.key,  required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        clipBehavior: Clip.hardEdge ,
        child: Column(
          children: [
            Expanded(
                child: Image.network(
              cat.imageLink,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
            Text(cat.name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.amber
            ),),
          ],
        ),
      ),
    );
  }
}
