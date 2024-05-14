import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'onboarding_controller_cubic_dart_state.dart';

class OnboardingControllerCubicDartCubit
    extends Cubit<OnboardingControllerCubicDartState> {
  OnboardingControllerCubicDartCubit()
      : super(OnboardingControllerCubicDartInitial());

  List images = [
    'assets/images/boarding1.jpg',
    'assets/images/boarding2.jpg',
    'assets/images/boarding3.jpg'
  ];
  List titles = ['Do you want a comfortable home ?', 'suitable to your budjet?', 'we will help you '];

}
