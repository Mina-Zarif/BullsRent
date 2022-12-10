import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/shared/cubit/state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isShown = false;

  void obscurePassword() {
    isShown = !isShown;
    emit(ObscurePassword());
  }
}
