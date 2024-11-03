import 'package:flutter/material.dart';

import '../styles/field_style.dart';

class UsualTextField extends StatefulWidget {
  final String text;

  const UsualTextField({super.key, required this.text});

  @override
  State<UsualTextField> createState() => _UsualTextFieldState();
}

class _UsualTextFieldState extends State<UsualTextField> {
  bool _isFocused = false;
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus || _textEditingController.text != '') {
        setState(() {
          _isFocused = true;
        });
      } else {
        setState(() {
          _isFocused = false;
        });
      }
    });
  }

  _validate(String? value) {
    if (value == null || value.isEmpty) {
      setState(() {
        _isValid = false;
      });
      return '';
    } else {
      setState(() {
        _isValid = true;
      });
      return null;
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      focusNode: _focusNode,
      cursorColor: Colors.blue,
      validator: (v) {
        return _validate(v);
      },
      decoration: inputDecoration(_isFocused, _isValid, widget.text),
      onChanged: (value) {
        if (_isValid == false) {
          _validate(value);
        }
      },
    );
  }
}