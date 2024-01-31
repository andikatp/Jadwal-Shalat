import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jadwal_solat/core/constants/app_sizes.dart';
import 'package:jadwal_solat/core/constants/colours.dart';
import 'package:jadwal_solat/core/extensions/context_extension.dart';

class TextFieldZakat extends StatelessWidget {
  const TextFieldZakat({
    required this.controller,
    required this.title,
    super.key,
  });
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: Sizes.p12,
      children: [
        Text(
          title,
          style: context.textTheme.bodyLarge,
        ),
        TextField(
          cursorColor: Colours.primaryColor,
          autofocus: true,
          decoration: InputDecoration(
            hintText: '0',
            prefixIcon: const Padding(
              padding: EdgeInsets.all(15),
              child: Text('Rp.'),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20).r,
              borderSide: const BorderSide(
                color: Colours.primaryColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20).r,
              borderSide: const BorderSide(
                width: 3,
                color: Colours.primaryColor,
              ),
            ),
            fillColor: Colours.backgroundColor.withOpacity(0.3),
            filled: true,
          ),
        ),
      ],
    );
  }
}