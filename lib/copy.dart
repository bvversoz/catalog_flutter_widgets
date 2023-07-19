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
//
// class TextWidget extends StatelessWidget {
//   final String regularTextCode = '''
// Text(
//   'Regular Text',
//   style: TextStyle(
//     fontSize: 20,
//     fontWeight: FontWeight.normal,
//     fontStyle: FontStyle.normal,
//     letterSpacing: 1.2,
//     height: 1.5,
//     color: Colors.black,
//   ),
// )''';
//
//   final String styledTextCode = '''
// Text(
//   'Styled Text',
//   style: TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//     fontStyle: FontStyle.italic,
//     letterSpacing: 1.0,
//     height: 1.2,
//     color: Colors.blue,
//     fontFamily: 'Roboto',
//   ),
// )''';
//
//   final String underlinedTextCode = '''
// Text(
//   'Underlined Text',
//   style: TextStyle(
//     decoration: TextDecoration.underline,
//     decorationColor: Colors.red,
//     decorationStyle: TextDecorationStyle.double,
//   ),
// )''';
//
//   final String strikethroughTextCode = '''
// Text(
//   'Strikethrough Text',
//   style: TextStyle(
//     decoration: TextDecoration.lineThrough,
//     decorationThickness: 2.0,
//     decorationColor: Colors.green,
//   ),
// )''';
//
//   final String shadowedTextCode = '''
// Text(
//   'Shadowed Text',
//   style: TextStyle(
//     shadows: [
//       Shadow(
//         color: Colors.grey,
//         offset: Offset(2, 2),
//         blurRadius: 3.0,
//       ),
//     ],
//   ),
// )''';
//
//   final String coloredTextCode = '''
// Text(
//   'Colored Text',
//   style: TextStyle(
//     color: Colors.purple,
//   ),
// )''';
//
//   final String textWithBackgroundColorCode = '''
// Text(
//   'Text with Background Color',
//   style: TextStyle(
//     backgroundColor: Colors.yellow,
//   ),
// )''';
//
//   final String customFontSizeAndWeightCode = '''
// Text(
//   'Text with Custom Font Size and Weight',
//   style: TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.w500,
//   ),
// )''';
//
//   final String customFontFamilyCode = '''
// Text(
//   'Text with Custom Font Family',
//   style: TextStyle(
//     fontFamily: 'Pacifico',
//   ),
// )''';
//
//   Widget buildTextWidget(BuildContext context, String text, String code) {
//     return Column(
//       children: <Widget>[
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Text(
//               text,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             CopyButton(code: code, context: context),
//           ],
//         ),
//         SizedBox(height: 8.0),
//         Text(
//           code,
//           style: TextStyle(fontSize: 14),
//         ),
//         SizedBox(height: 16.0),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           buildTextWidget(context, 'Regular Text', regularTextCode),
//           buildTextWidget(context, 'Styled Text', styledTextCode),
//           buildTextWidget(context, 'Underlined Text', underlinedTextCode),
//           buildTextWidget(context, 'Strikethrough Text', strikethroughTextCode),
//           buildTextWidget(context, 'Shadowed Text', shadowedTextCode),
//           buildTextWidget(context, 'Colored Text', coloredTextCode),
//           buildTextWidget(
//             context,
//             'Text with Background Color',
//             textWithBackgroundColorCode,
//           ),
//           buildTextWidget(
//             context,
//             'Text with Custom Font Size and Weight',
//             customFontSizeAndWeightCode,
//           ),
//           buildTextWidget(context, 'Text with Custom Font Family', customFontFamilyCode),
//         ],
//       ),
//     );
//   }
// }
