// ignore_for_file: avoid_types_on_closure_parameters

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/cubit/edit_screen_cubit.dart';

class ActionWindos extends StatelessWidget {
  final Widget? textField;
  const ActionWindos({Key? key, this.textField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
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
            StreamBuilder(
              stream: context.read<EditscreenCubit>().textFeild,
              builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                return snapshot.data ?? Container();
              },
            ),
          ],
        ),
      ),
      flex: 2,
    );
  }
}
