import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(note.key), // مهم لـ Dismissible
      direction: DismissDirection.startToEnd, // سحب لليمين فقط
      background: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red.shade900,
              Colors.red.shade100,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            const Icon(
              FontAwesomeIcons.trash,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '  Delete',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Ubuntu',
              ),
            ),
          ],
        ),
      ),
      onDismissed: (direction) {
        note.delete();
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Note deleted'),
            duration: Duration(seconds: 2),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 28,
          left: 28,
          right: 16,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Text(
                  note.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                  ),
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              trailing: IconButton(
                highlightColor: Colors.blueAccent.withOpacity(.8),
                padding: const EdgeInsets.only(bottom: 32),
                icon: const Icon(
                  FontAwesomeIcons.penToSquare,
                  color: Colors.white,
                  size: 26,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditNoteView(
                        note: note,
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              note.date,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Ubuntu',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
