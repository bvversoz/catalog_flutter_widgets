import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyButton extends StatelessWidget {
  final String code;
  final BuildContext context;

  const CopyButton({required this.code, required this.context});

  void copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Copied to clipboard')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.content_copy),
      onPressed: () => copyToClipboard(code),
    );
  }
}

class AppBarsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String defaultAppBarCode = '''
AppBar(
  title: Text('Default App Bar'),
  backgroundColor: Colors.blueGrey,
)''';

    final String appBarWithLeadingIconCode = '''
AppBar(
  title: Text('App Bar with Leading Icon'),
  leading: Icon(Icons.menu),
  backgroundColor: Colors.green,
)''';

    final String appBarWithActionsCode = '''
AppBar(
  title: Text('App Bar with Actions'),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.more_vert),
      onPressed: () {},
    ),
  ],
  backgroundColor: Colors.orange,
)''';

    final String appBarWithBackgroundColorCode = '''
AppBar(
  title: Text('App Bar with Background Color'),
  backgroundColor: Colors.blue,
)''';

    final String appBarWithCustomTextStyleCode = '''
AppBar(
  title: Text('App Bar with Custom Text Style'),
  titleTextStyle: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  backgroundColor: Colors.purple,
)''';

    final String appBarWithCustomIconThemeCode = '''
AppBar(
  title: Text('App Bar with Custom Icon Theme'),
  iconTheme: IconThemeData(
    color: Colors.red,
  ),
  backgroundColor: Colors.teal,
)''';

    final String appBarWithElevationCode = '''
AppBar(
  title: Text('App Bar with Elevation'),
  elevation: 4.0,
  backgroundColor: Colors.yellow,
)''';

    final String appBarWithBottomCode = '''
AppBar(
  title: Text('App Bar with Bottom'),
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(48.0),
    child: Container(
      alignment: Alignment.center,
      color: Colors.grey,
      child: Text(
        'Bottom Widget',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ),
  backgroundColor: Colors.deepOrange,
)''';

    final String appBarWithCustomHeightCode = '''
AppBar(
  title: Text('App Bar with Custom Height'),
  toolbarHeight: 100.0,
  backgroundColor: Colors.cyan,
)''';

    final String appBarWithCustomShapeCode = '''
AppBar(
  title: Text('App Bar with Custom Shape'),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  backgroundColor: Colors.pink,
)''';

    return Scaffold(

      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('Default App Bar'),
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: defaultAppBarCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Leading Icon'),
                    leading: Icon(Icons.menu),
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithLeadingIconCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Actions'),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                      ),
                    ],
                    backgroundColor: Colors.orange,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithActionsCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Background Color'),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithBackgroundColorCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Custom Text Style'),
                    titleTextStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.purple,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithCustomTextStyleCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Custom Icon Theme'),
                    iconTheme: IconThemeData(
                      color: Colors.red,
                    ),
                    backgroundColor: Colors.teal,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithCustomIconThemeCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Elevation'),
                    elevation: 4.0,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithElevationCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Bottom'),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(48.0),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithBottomCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Custom Height'),
                    toolbarHeight: 100.0,
                    backgroundColor: Colors.cyan,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithCustomHeightCode, context: context),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: kToolbarHeight,
                  child: AppBar(
                    title: Text('App Bar with Custom Shape'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.pink,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              CopyButton(code: appBarWithCustomShapeCode, context: context),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AppBarsWidget(),
  ));
}
