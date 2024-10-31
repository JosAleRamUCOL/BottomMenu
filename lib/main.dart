import 'package:flutter/material.dart';
import 'package:menus/pages/home.dart';
import 'package:menus/pages/people.dart';
import 'package:menus/pages/setting.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _pagActual = 0;
  List<Widget> _paginas = [Home(), Setting(), People(), People()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: _paginas[_pagActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              _pagActual = index;
            });
          },
          currentIndex: _pagActual, 
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
            backgroundColor: Colors.orange),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'LogOut',
            backgroundColor: Colors.blueGrey),]
        ),
      ),
    );
  }
}