import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app_1/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app_1/models/note_model.dart';
import 'package:notes_app_1/widgets/custom_button.dart';
import 'package:notes_app_1/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
              
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),

          const SizedBox(
            height: 32,
          ),
          CustomButton(
            isLoading: false,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var currentDate = DateTime.now();
                var formattedCurrentDate = DateFormat('yyyy-MM-dd – kk:mm').format(currentDate);
                    
                    


                var noteModel = NoteModel(
                  title: title!, 
                  subTitle: subTitle!, 
                  date: formattedCurrentDate, 
                  color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });

              }
              
            },

          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}