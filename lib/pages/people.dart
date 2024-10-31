import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Welcome to People View', 
      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.purple),),
      );
  }
}