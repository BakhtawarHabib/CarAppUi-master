import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

// class NumericTextFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     final currencySymbol = '€';
//     if (newValue.text.isEmpty || newValue.text.trim() == currencySymbol) {
//       return newValue.copyWith(text: '');
//     } else if (newValue.text.compareTo(oldValue.text) != 0) {
//       var selectionIndexFromTheRight =
//           newValue.text.length - newValue.selection.end;
//       final f =
//           NumberFormat.currency(locale: 'de', decimalDigits: 0, symbol: '');
//       var num = int.parse(newValue.text.replaceAll(RegExp('[^0-9]'), ''));
//       final newString = '$currencySymbol ' + f.format(num).trim();
//       return TextEditingValue(
//         text: newString,
//         selection: TextSelection.collapsed(
//             offset: newString.length - selectionIndexFromTheRight),
//       );
//     } else {
//       return newValue;
//     }
//   }
// }
