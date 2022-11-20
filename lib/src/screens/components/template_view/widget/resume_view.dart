import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/cubit/resume_cubit.dart';
import 'package:resume_builder/core/enum/textfield_handler_enum.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cubit = context.read<ResumeCubit>();
    return Container(
      height: _size.height * 1.2,
      width: _size.width,
      child: BlocBuilder<ResumeCubit, ResumeState>(
        builder: (context, state) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  _cubit.setHandler(
                    currentHandler: TextFieldHandler.fullName,
                    title: 'Enter Full Name',
                    value: _cubit.state.fullName,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.cyan,
                    child: Text(state.fullName ?? 'fullName'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _cubit.setHandler(
                    currentHandler: TextFieldHandler.summry,
                    title: 'Summry',
                    value: _cubit.state.summry,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.cyan,
                    child: Text(state.summry ?? 'summry'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _cubit.setHandler(
                    currentHandler: TextFieldHandler.jobRoll,
                    title: 'Job Roll',
                    value: _cubit.state.jobRoll,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 300,
                    color: Colors.cyan,
                    child: Text(
                      state.jobRoll ?? 'jobRoll',
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
