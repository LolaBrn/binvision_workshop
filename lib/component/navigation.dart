import 'package:binvision/config/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationBloc navigationBloc = BlocProvider.of<NavigationBloc>(context);
    return BottomNavigationBar(
      currentIndex: navigationBloc.state.index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.qr_code),
          label: 'Scan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Réglage',
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          navigationBloc.add(NavigationEvent(NavigationState.Home));
        } else if (index == 1) {
          navigationBloc.add(NavigationEvent(NavigationState.Scan));
        } else if (index == 2) {
          navigationBloc.add(NavigationEvent(NavigationState.Edit));
        }
      },
    );
  }
}