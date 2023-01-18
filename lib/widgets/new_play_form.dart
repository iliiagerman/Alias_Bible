import 'package:flutter/material.dart';

class NewPlayForm extends StatelessWidget {
  const NewPlayForm({Key? key, required this.nameForController})
      : super(key: key);

  final TextEditingController nameForController;

  // final controllerOne = TextEditingController(text: nameForController);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(left: 12, top: 3, right: 12, bottom: 3),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(22)),
      child: TextFormField(
        controller: nameForController,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              nameForController.clear();
            },
            child: Icon(Icons.close_outlined, color: Colors.white, size: 25),
          ),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white70, width: 2.5, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.deepOrange, width: 4, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
