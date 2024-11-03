import 'package:flutter/material.dart';
import 'package:test_task_hotels/presentation/view/reservation_page/styles/field_style.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
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

      if (!_focusNode.hasFocus) {
        _validate(_textEditingController.text);
      }
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  _validate(String? value) {
    if (value == null || value.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
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
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _textEditingController,
      focusNode: _focusNode,
      cursorColor: Colors.blue,
      decoration: inputDecoration(_isFocused, _isValid, 'Почта'),
      validator: (value){
        return  _validate(value);
      },
      onChanged: (value) {
        if (_isValid == false) {
          _validate(value);
        }
      },
    );
  }
}
