import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/core/utils/validation.dart';

// ignore: must_be_immutable
class RegistrationDataWidget extends StatelessWidget {
  RegistrationDataWidget({super.key});
  TextEditingController namecontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 30, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text('Create a New Account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: context.forgroundColor,
                )),

Spacer(flex: 5,),
            // const Text("First Name ",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold,  ),),

            /// First Name
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MyValidation().nameValidate,
                decoration: decoration.copyWith(
                  labelText: "First Name",
                  prefixIcon: Icon(
                    Icons.person,
                    color: context.forgroundColor,
                  ),
                )),
Spacer(),


            ///Last Name
            // const Text("Last Name ",style: TextStyle(color: Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: TextEditingController(),
                keyboardType: TextInputType.name,
                validator: MyValidation().nameValidate,
                decoration: decoration.copyWith(
                  labelText: "Last Name",
                  prefixIcon: Icon(
                    Icons.person,
                    color: context.forgroundColor,
                  ),
                )),
Spacer(),


            ///Mail
            // const Text("Email ",style: TextStyle(color:Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: namecontroller,
                keyboardType: TextInputType.emailAddress,
                validator: MyValidation().emailValidate,
                decoration: decoration.copyWith(
                  labelText: "Email Adrress",
                  prefixIcon: Icon(
                    Icons.mail,
                    color: context.forgroundColor,
                  ),
                )),
Spacer(),


            ///Password
            // const Text("Password ",style: TextStyle(color: Color.fromARGB(246, 255, 255, 255), fontSize: 17, fontWeight: FontWeight.bold, )),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,

              controller: TextEditingController(),
              // keyboardType: TextInputType.visiblePassword,
              validator: MyValidation().passwordValidate,
              decoration: decoration.copyWith(
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.lock,
                  color: context.forgroundColor,
                ),
                suffixIcon: Icon(
                  CupertinoIcons.eye_slash,
                  color: context.forgroundColor,
                ),
              ),
              obscureText: true,
            ),
Spacer(flex: 3,),

          ],
        ));
  }

  InputDecoration decoration = InputDecoration(
      fillColor: const Color.fromARGB(250, 230, 245, 255),
      filled: true,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff14238A), width: 2),
        // borderRadius: BorderRadius.circular(10);
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 2),

        // borderRadius: BorderRadius.circular(50)
      ));
}
