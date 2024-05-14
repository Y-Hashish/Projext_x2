import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/auth/onboarding/controller/cubit/onboarding_controller_cubic_dart_cubit.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        
        children: [
        
          Expanded(
              child: BlocProvider<OnboardingControllerCubicDartCubit>(
            create: (context) => OnboardingControllerCubicDartCubit(),
            child: BlocBuilder<OnboardingControllerCubicDartCubit,
                OnboardingControllerCubicDartState>(
              builder: (context, state) {
                OnboardingControllerCubicDartCubit controler =
                    context.read<OnboardingControllerCubicDartCubit>();

                return PageView(
                      
                    children: List.generate(controler.images.length, (index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    
                      Spacer(flex: 12,),
                      Image.asset(controler.images[index],
                    fit: BoxFit.cover,
                    height: 400,
                    
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(controler.titles[index],
                    style: TextStyle(
                      color: context.forgroundColor,
                      fontSize: 20
                    ),
                    
                    ),
Spacer(flex: 10),
                  if(index==controler.images.length-1)
                      InkWell(
                onTap: () {
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                    return const RegistrationPage();
                  }));
                }
              },
              child: Text(
                'Start',
                style: TextStyle(
                  //color: context.forgroundColor,
                  color: Colors.blue,
                  decorationThickness: 1,
                  decoration: TextDecoration.underline,
                  decorationColor: context.forgroundColor,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              
              ),
            
              Spacer(flex: 4,)
              
                    ],
                    
                  );
                },
                
                
                ));
              },
            ),
          )),
        
      

        ],
      ),
    ));
  }
}
