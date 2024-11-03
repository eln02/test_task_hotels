import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../styles/field_style.dart';

class BirthField extends StatefulWidget {
  const BirthField({super.key});

  @override
  State<BirthField> createState() => _BirthFieldState();
}

class _BirthFieldState extends State<BirthField> {
  bool _isFocused = false;
  final maskFormatter = MaskTextInputFormatter(
    mask: '##.##.####',
    filter: {"#": RegExp(r'[0-9]')},
  );
  final TextEditingController _textEditingController = TextEditingController();
  bool _isValid = true;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  _validate(String? value) {
    if (value == null || value.length < 10) {
      setState(() {
        _isValid = false;
      });
      return '';
    }
    try {
      DateFormat dateFormat = DateFormat('dd.MM.yyyy');
      dateFormat.parseStrict(value);
      setState(() {
        _isValid = true;
      });
      return null;
    } catch (e) {
      setState(() {
        _isValid = false;
      });
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    const hintText = 'dd.mm.yyyy';
    return TextFormField(
      controller: _textEditingController,
      inputFormatters: [maskFormatter],
      keyboardType: TextInputType.phone,
      cursorColor: Colors.blue,
      decoration: inputDecoration(_isFocused, _isValid, 'Дата рождения'),
      validator: (value) {
        return _validate(value);
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
        if (_textEditingController.text == '') {
          _textEditingController.text = hintText;
          _textEditingController.selection =
              TextSelection.fromPosition(const TextPosition(offset: 0));
        }
      },
      onChanged: (text) {
        if (_isValid == false) {
          _validate(text);
        }
        _textEditingController.text = text + hintText.substring(text.length);
        _textEditingController.selection =
            TextSelection.fromPosition(TextPosition(offset: text.length));
      },
    );
  }
}
