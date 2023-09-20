import 'package:flutter/material.dart';
import 'package:notes_app_1/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context){
            return const EditNoteView();
          }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'my note',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'myfirst note',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                '2/3/2003',
                style: TextStyle(
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
