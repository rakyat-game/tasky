import 'package:bloc/bloc.dart';

/// A custom `BlocObserver` that logs the lifecycle events of Blocs.
class StateObserver extends BlocObserver {
  /// Called when a Bloc is created.
  ///
  /// Logs the creation of the Bloc.
  @override
  void onCreate(BlocBase bloc) {
    print('onCreate -- ${bloc.runtimeType}');
    super.onCreate(bloc);
  }

  /// Called when a Bloc's state changes.
  ///
  /// Logs the state change of the Bloc.
  @override
  void onChange(BlocBase bloc, Change change) {
    print('onChange -- ${bloc.runtimeType}, $change');
    super.onChange(bloc, change);
  }

  /// Called when a Bloc encounters an error.
  ///
  /// Logs the error encountered by the Bloc.
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  /// Called when a Bloc is closed.
  ///
  /// Logs the closure of the Bloc.
  @override
  void onClose(BlocBase bloc) {
    print('onClose -- ${bloc.runtimeType}');
    super.onClose(bloc);
  }
}