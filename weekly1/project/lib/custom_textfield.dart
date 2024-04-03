// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Icon iconC;
  final String hintext;
  final void Function(String)? onChanged;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.iconC,
    this.hintext = '',
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(12.0),
        ),
        border: Border.all(
          width: 1.0,
          color: Colors.grey[400]!,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: iconC,
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              initialValue: null,
              decoration: InputDecoration.collapsed(
                filled: true,
                fillColor: Colors.transparent,
                hoverColor: Colors.transparent,
                hintText: hintext,
              ),
              onFieldSubmitted: (value) {},
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
