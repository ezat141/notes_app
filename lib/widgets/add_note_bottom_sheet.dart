import 'package:flutter/material.dart';
import 'package:notes_app_1/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom
      ),
      child:  const SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}