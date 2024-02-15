import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/widgets/cat_card.dart';

class CatHomeScreen extends StatelessWidget {
  const CatHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Cats",style:TextStyle(color:Colors.amber),),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite,color: Colors.white38,))],
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
            final  cat =cats[index];
            return CatCard(cat: cat);
        },
      ),
    );
  }
}
