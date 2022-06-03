import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

part 'edit_screen_state.dart';

class EditscreenCubit extends Cubit<EditscreenState> {
  EditscreenCubit() : super(EditscreenInitial());

  final BehaviorSubject<Widget> _textFeild = BehaviorSubject<Widget>();
  Stream<Widget> get textFeild => _textFeild.stream; //output
  Sink<Widget> get sinkTextField => _textFeild.sink; //input

  final BehaviorSubject<String> _name = BehaviorSubject<String>();
  Stream<String> get name => _name.stream; //output
  Sink<String> get sinkName => _name.sink; //input

}
