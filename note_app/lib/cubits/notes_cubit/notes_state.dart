part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NoteSuccess extends NotesState {}

final class NoteEmpty extends NotesState {}
