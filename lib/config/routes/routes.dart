import 'package:flutter_bloc/flutter_bloc.dart';

// États de l'application
enum NavigationState { Home, Scan, Edit }

// Événements pour la gestion de la navigation
class NavigationEvent {
  final NavigationState navigationState;
  NavigationEvent(this.navigationState);
}

// Bloc de navigation
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState.Home);

  Stream<NavigationState> mapEventToState(NavigationEvent event) async* {
    if (event is NavigationEvent) {
      yield event.navigationState;
    }
  }
}
