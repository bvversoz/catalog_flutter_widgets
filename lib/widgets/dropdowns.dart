import 'package:flutter/material.dart';

class DropdownsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 1',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 2',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 3',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 4',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 5',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Container(
                        color: Colors.yellow,
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          value,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 6',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.red,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 7',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 16.0,
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dropdown Variation 8',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                DropdownButton<String>(
                  value: 'Option 1',
                  onChanged: (String? newValue) {},
                  items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.purple,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
