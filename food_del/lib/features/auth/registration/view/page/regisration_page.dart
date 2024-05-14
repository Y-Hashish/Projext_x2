//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/auth/registration/view/components/button_registration.dart';
import 'package:frist_pages/features/auth/registration/view/components/regisration_data_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.backgroundColor,
          body: SingleChildScrollView(
            child: SizedBox(
              height: context.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/background.jpg",
                    height:  context.height*0.2,
                  ),
                  Expanded(
                    child: RegistrationDataWidget(),
                  ),
                   Container(
                    height: context.height*0.15,
                    child: ButtonRegistrationWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
