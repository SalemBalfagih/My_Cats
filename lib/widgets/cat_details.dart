import 'package:flutter/material.dart';
import 'package:my_cats/model/cats.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool _isnamecolor = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(widget.cat.imageLink),
        Text(
          widget.cat.name,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _isnamecolor ? Colors.amber : Colors.black,
          ),
        ),
        Text("Origin: ${widget.cat.origin}"),
        Text("Max Weghit: ${widget.cat.maxWeight}"),
        Text("Min Weghit: ${widget.cat.minWeight}"),
        Text("Length: ${widget.cat.length}"),
        ElevatedButton(
          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          onPressed: () {
            setState(() {
              _isnamecolor = !_isnamecolor;
            });
          },
          child: const Text("Change Name Color",style: TextStyle(color:Colors.black ),),
        )
      ],
    );
  }
}
