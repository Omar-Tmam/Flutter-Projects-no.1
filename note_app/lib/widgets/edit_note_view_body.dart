import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_notes_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

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
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: const Icon(Icons.check),
          ),
          const SizedBox(height: 50),
          CustomTextField(
            initialValue: widget.note.title,
            onChanged: (value) => title = value,
            hintText: 'Title',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          ),
          CustomTextField(
            initialValue: widget.note.subTitle,
            onChanged: (value) => content = value,
            hintText: 'Description',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 70, horizontal: 16),
          ),
          EditNotesColorsList(note: widget.note),
        ],
      ),
    );
  }
}
