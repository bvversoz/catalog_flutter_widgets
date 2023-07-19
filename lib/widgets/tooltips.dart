import 'package:flutter/material.dart';

class TooltipsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: 'This is a tooltip',
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Button'),
        ),
      ),
    );
  }
}
