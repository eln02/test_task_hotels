import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../styles/field_style.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  bool _isFocused = false;
  final maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
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
    if (value == null || value.isEmpty || value.contains('*') || value.length < 18){
      setState(() {
        _isValid = false;
      });
      return '';
    }
    setState(() {
      _isValid = true;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    const hintText = '+7 (***) ***-**-**';
    return TextFormField(
      controller: _textEditingController,
      inputFormatters: [maskFormatter],
      keyboardType: TextInputType.phone,
      cursorColor: Colors.blue,
      decoration: inputDecoration(_isFocused, _isValid, 'Номер телефона'),
      validator: (value){
        return _validate(value);
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
        if (_textEditingController.text == '') {
          _textEditingController.text = hintText;
          _textEditingController.selection =
              TextSelection.fromPosition(const TextPosition(offset: 4));
        }
      },
      onChanged: (text) {
        if (_isValid == false) {
          _validate(text);
        }
        if (text == '') {
          _textEditingController.text = hintText;
          _textEditingController.selection =
              TextSelection.fromPosition(const TextPosition(offset: 4));
        } else {
          _textEditingController.text = text + hintText.substring(text.length);
          _textEditingController.selection =
              TextSelection.fromPosition(TextPosition(offset: text.length));
        }
      },
    );
  }
}
