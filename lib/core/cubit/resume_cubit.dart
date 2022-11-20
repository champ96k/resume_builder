// ignore_for_file: use_setters_to_change_properties

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/enum/textfield_handler_enum.dart';
import 'package:resume_builder/core/model/resume_model.dart';

part 'resume_state.dart';

class ResumeCubit extends Cubit<ResumeState> {
  ResumeCubit() : super(ResumeState()) {
    _handler = TextFieldHandler.fullName;
  }

  late TextFieldHandler _handler;

  final TextEditingController _controller = TextEditingController();

  TextFieldHandler get getHandler => _handler;
  TextEditingController get controller => _controller;

  void setHandler({
    required TextFieldHandler currentHandler,
    required String title,
    String? value,
  }) {
    _handler = currentHandler;
    controller.clear();
    if (value != null) {
      _controller.value = _controller.value.copyWith(
        text: value,
        selection: TextSelection.collapsed(offset: value.length),
      );
    }
  }

  void setResumeModel({
    required TextFieldHandler handler,
    required String value,
  }) {
    switch (handler) {
      case TextFieldHandler.fullName:
        emit(state.copyWith(fullName: value));
        break;

      case TextFieldHandler.summry:
        emit(state.copyWith(summry: value));
        break;

      case TextFieldHandler.image:
        emit(state.copyWith(image: value));
        break;

      case TextFieldHandler.jobRoll:
        emit(state.copyWith(jobRoll: value));
        break;

      default:
    }
  }
}
