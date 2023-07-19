import 'package:flutter/material.dart';

class GridViewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Card(
          child: Center(
            child: Text('Item $index'),
          ),
        );
      }),
    );
  }
}
