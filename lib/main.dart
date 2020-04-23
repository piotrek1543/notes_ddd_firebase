import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notes/injection.dart';
import 'package:notes/notes_app.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(NotesApp());
}