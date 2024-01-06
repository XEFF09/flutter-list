import 'package:flutter/material.dart';

class SearchBarApp extends StatelessWidget {
  const SearchBarApp({super.key});
  
  @override
  Widget build(Object context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.filter_alt_outlined),
        ),
      ),
    );
  }


}

