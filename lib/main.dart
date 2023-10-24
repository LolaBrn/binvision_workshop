import 'package:binvision/component/navigation.dart';
import 'package:binvision/screen/edit_screen.dart';
import 'package:binvision/screen/home_screen.dart';
import 'package:binvision/screen/scan_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/routes.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: Scaffold(
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            if (state == NavigationState.Home) {
              return const HomeScreen();
            } else if (state == NavigationState.Scan) {
              return const ScanScreen();
            } else if (state == NavigationState.Edit) {
              return const EditScreen();
            }
            return Container();
          },
        ),
        bottomNavigationBar: const NavigationWidget(),
      ),
    );
  }
}