import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume_builder/core/cubit/edit_screen_cubit.dart';
import 'package:resume_builder/src/screens/pages/edit_resume_screen.dart';
import 'package:resume_builder/src/screens/pages/home_screen.dart';

import 'screen_names.dart';

Route<dynamic> routeGenerate(RouteSettings settings) {
  switch (settings.name) {
    case ScreenNames.homeScreen:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );

    case ScreenNames.editResumeScreen:
      return MaterialPageRoute(
        builder: (context) {
          return BlocProvider<EditscreenCubit>(
            create: (context) => EditscreenCubit(),
            child: const EditResumeScreen(),
          );
        },
      );

    default:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
  }
}
