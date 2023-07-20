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

class ButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String elevatedButtonCode = '''
ElevatedButton(
  onPressed: () {},
  child: Text('Elevated Button'),
)''';

    final String customElevatedButtonCode = '''
ElevatedButton(
  onPressed: () {},
  child: Text('Elevated Button'),
  style: ElevatedButton.styleFrom(
    primary: Colors.orange,
    onPrimary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
)''';

    final String outlinedButtonCode = '''
OutlinedButton(
  onPressed: () {},
  child: Text('Outlined Button'),
)''';

    final String customOutlinedButtonCode = '''
OutlinedButton(
  onPressed: () {},
  child: Text('Outlined Button'),
  style: OutlinedButton.styleFrom(
    primary: Colors.blue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  ),
)''';

    final String textButtonCode = '''
TextButton(
  onPressed: () {},
  child: Text('Text Button'),
)''';

    final String customTextButtonCode = '''
TextButton(
  onPressed: () {},
  child: Text('Text Button'),
  style: TextButton.styleFrom(
    primary: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
)''';

    final String floatingActionButtonCode = '''
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  heroTag: 'fab1',
)''';

    final String customFloatingActionButtonCode = '''
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  backgroundColor: Colors.red,
  heroTag: 'fab2',
)''';

    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: elevatedButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevated Button'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: customElevatedButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Outlined Button'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: outlinedButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Outlined Button'),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: customOutlinedButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Text Button'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: textButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Text Button'),
                      style: TextButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: customTextButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    heroTag: 'fab1',
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: floatingActionButtonCode, context: context),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    backgroundColor: Colors.red,
                    heroTag: 'fab2',
                  ),
                  SizedBox(width: 16.0),
                  CopyButton(code: customFloatingActionButtonCode, context: context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}