import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/cubit/resume_cubit.dart';

class ActionWindos extends StatefulWidget {
  const ActionWindos({
    Key? key,
  }) : super(key: key);

  @override
  State<ActionWindos> createState() => _ActionWindosState();
}

class _ActionWindosState extends State<ActionWindos> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cubit = context.read<ResumeCubit>();
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: _size.height * 0.03,
          horizontal: _size.width * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Action Window"),
            SizedBox(height: _size.height * 0.03),
            // const EmptyAction(),

            TextFormField(
              controller: _cubit.controller,
              onChanged: (value) {
                _cubit.setResumeModel(
                  handler: _cubit.getHandler,
                  value: value,
                );
              },
            ),
          ],
        ),
      ),
      flex: 2,
    );
  }
}
