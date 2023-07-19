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

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String regularTextCode = '''
Text(
  'Regular Text',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.2,
    height: 1.5,
    color: Colors.black,
  ),
)''';

    final String styledTextCode = '''
Text(
  'Styled Text',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    letterSpacing: 1.0,
    height: 1.2,
    color: Colors.blue,
    fontFamily: 'Roboto',
  ),
)''';

    final String underlinedTextCode = '''
Text(
  'Underlined Text',
  style: TextStyle(
    decoration: TextDecoration.underline,
    decorationColor: Colors.red,
    decorationStyle: TextDecorationStyle.double,
  ),
)''';

    final String strikethroughTextCode = '''
Text(
  'Strikethrough Text',
  style: TextStyle(
    decoration: TextDecoration.lineThrough,
    decorationThickness: 2.0,
    decorationColor: Colors.green,
  ),
)''';

    final String shadowedTextCode = '''
Text(
  'Shadowed Text',
  style: TextStyle(
    shadows: [
      Shadow(
        color: Colors.grey,
        offset: Offset(2, 2),
        blurRadius: 3.0,
      ),
    ],
  ),
)''';

    final String coloredTextCode = '''
Text(
  'Colored Text',
  style: TextStyle(
    color: Colors.purple,
  ),
)''';

    final String textWithBackgroundColorCode = '''
Text(
  'Text with Background Color',
  style: TextStyle(
    backgroundColor: Colors.yellow,
  ),
)''';

    final String customFontSizeAndWeightCode = '''
Text(
  'Text with Custom Font Size and Weight',
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),
)''';

    final String customFontFamilyCode = '''
Text(
  'Text with Custom Font Family',
  style: TextStyle(
    fontFamily: 'Pacifico',
  ),
)''';

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Regular Text',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 1.2,
                          height: 1.5,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: regularTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Font Size: 20\n'
                      'Font Weight: Normal\n'
                      'Font Style: Normal\n'
                      'Letter Spacing: 1.2\n'
                      'Line Height: 1.5\n'
                      'Color: Black',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Styled Text',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.0,
                          height: 1.2,
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: styledTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Font Size: 24\n'
                      'Font Weight: Bold\n'
                      'Font Style: Italic\n'
                      'Letter Spacing: 1.0\n'
                      'Line Height: 1.2\n'
                      'Color: Blue\n'
                      'Font Family: Roboto',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Underlined Text',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.red,
                          decorationStyle: TextDecorationStyle.double,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: underlinedTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Decoration: Underline\n'
                      'Decoration Color: Red\n'
                      'Decoration Style: Double',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Strikethrough Text',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2.0,
                          decorationColor: Colors.green,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: strikethroughTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Decoration: Line Through\n'
                      'Decoration Thickness: 2.0\n'
                      'Decoration Color: Green',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Shadowed Text',
                        style: TextStyle(
                          shadows: [
                            Shadow(
                              color: Colors.grey,
                              offset: Offset(2, 2),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: shadowedTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Shadows:\n'
                      'Color: Grey\n'
                      'Offset: (2, 2)\n'
                      'Blur Radius: 3.0',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Colored Text',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: coloredTextCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Color: Purple',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Text with Background Color',
                        style: TextStyle(
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: textWithBackgroundColorCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Background Color: Yellow',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Text with Custom Font Size and Weight',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: customFontSizeAndWeightCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Font Size: 18\n'
                      'Font Weight: 500 (w500)',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Text with Custom Font Family',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CopyButton(code: customFontFamilyCode, context: context),
                    ),
                  ],
                ),
                Text(
                  'Font Family: Pacifico',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
