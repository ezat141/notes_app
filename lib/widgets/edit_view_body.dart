import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app_1/widgets/custom_text_field.dart';

import 'custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFiled(
            onChanged: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hint: 'subTitle',
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
