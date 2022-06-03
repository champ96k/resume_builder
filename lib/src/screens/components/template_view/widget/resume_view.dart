import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/cubit/edit_screen_cubit.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _cubit = context.read<EditscreenCubit>();
    return Container(
      height: _size.height * 1.2,
      width: _size.width,
      color: Colors.yellow,
      child: StreamBuilder(
        stream: _cubit.textFeild,
        builder: (context, snapshot) {
          return Column(
            children: [
              IconButton(
                onPressed: () {
                  _cubit.sinkTextField.add(
                    TextField(
                      onChanged: (val) => _cubit.sinkName.add(val),
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
              ),
            ],
          );
        },
      ),
    );
  }
}
