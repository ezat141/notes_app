import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_1/constants.dart';
import 'package:notes_app_1/cubit/add_note_cubit/add_note_state.dart';

import '../../models/note_model.dart';

//part 'add_note_state.dart';


class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
  Color color = const Color(0xffAC3931);
  addNote(NoteModel note) async{
    
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      
      await noteBox.add(note);
      
      emit(AddNoteSuccess());
      
      
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
      
    }
  }
}
