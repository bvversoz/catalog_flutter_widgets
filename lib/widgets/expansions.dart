import 'package:flutter/material.dart';

class ExpansionTilesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.yellow,
            collapsedBackgroundColor: Colors.orange,
            textColor: Colors.black,
            collapsedTextColor: Colors.white,
            iconColor: Colors.black,
            collapsedIconColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            tilePadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            childrenPadding: EdgeInsets.all(16.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.trailing,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: true,
            maintainState: true,
            clipBehavior: Clip.antiAlias,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.green,
            collapsedBackgroundColor: Colors.lightGreen,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            tilePadding: EdgeInsets.all(16.0),
            childrenPadding: EdgeInsets.symmetric(vertical: 8.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.leading,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: false,
            maintainState: false,
            clipBehavior: Clip.none,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 4',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.blue,
            collapsedBackgroundColor: Colors.lightBlue,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            tilePadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            childrenPadding: EdgeInsets.all(8.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.end,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.platform,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: true,
            maintainState: true,
            clipBehavior: Clip.hardEdge,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.purple,
            collapsedBackgroundColor: Colors.deepPurple,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            tilePadding: EdgeInsets.all(16.0),
            childrenPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.trailing,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: false,
            maintainState: false,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 6',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.grey,
            collapsedBackgroundColor: Colors.grey.shade400,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: CircleBorder(),
            collapsedShape: CircleBorder(),
            tilePadding: EdgeInsets.all(16.0),
            childrenPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.leading,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: true,
            maintainState: true,
            clipBehavior: Clip.antiAlias,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 7',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.red,
            collapsedBackgroundColor: Colors.redAccent,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: StadiumBorder(),
            collapsedShape: StadiumBorder(),
            tilePadding: EdgeInsets.all(16.0),
            childrenPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.trailing,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: false,
            maintainState: false,
            clipBehavior: Clip.none,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
        SizedBox(height: 16.0),
        Card(
          child: ExpansionTile(
            title: Text(
              'Tile 8',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Subitem 1'),
              ),
              ListTile(
                title: Text('Subitem 2'),
              ),
            ],
            backgroundColor: Colors.teal,
            collapsedBackgroundColor: Colors.tealAccent,
            textColor: Colors.white,
            collapsedTextColor: Colors.black,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            tilePadding: EdgeInsets.all(16.0),
            childrenPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            expandedAlignment: Alignment.center,
            controlAffinity: ListTileControlAffinity.leading,
            trailing: Icon(Icons.expand_more),
            initiallyExpanded: true,
            maintainState: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            onExpansionChanged: (bool? isExpanded) {
              // Handle expansion changes
            },
          ),
        ),
      ],
    );
  }
}
