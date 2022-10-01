import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_taxi/view/pages/auth_screens/register_screen.dart';


import '../../../viwe_model/sin_cu/login_cubit.dart';
import '../../component/custom_auth/custom_button.dart';
import '../../component/custom_auth/custom_register.dart';
import '../../component/custom_auth/custom_text_title.dart';

class LoginScreenPage extends StatelessWidget {
  LoginScreenPage({Key? key}) : super(key: key);
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit myCubit = LoginCubit.get(context);
          return Scaffold(
              body: Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15, horizontal: 30),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomText(
                      fontSize: 33,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      labelText: 'Login',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFormAuth(
                      controller: myCubit.email,
                      labelText: 'E-mail',
                      hintText: 'Enter Your E-Mail',
                    ),
                    CustomTextFormAuth(
                      controller: myCubit.password,
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      iconData:
                      _obscureText == true ? Icons.visibility : Icons
                          .visibility_off,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: const CustomText(
                        color: Colors.deepOrange,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        labelText: 'Forget Password',
                      ),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomButtomAuth(
                        color1: Colors.white,
                        color: Colors.deepOrange,
                        text: 'Login',
                        onPressed: () {
                          myCubit.loginUser(context) ;
                        }),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Divider(height: 19,color: Colors.deepOrange, ),
                    //     const CustomText(
                    //       fontSize: 15,
                    //       fontWeight: FontWeight.w400,
                    //       labelText: 'Or',
                    //     ),
                    //     Divider(),
                    //   ],
                    // ),
                    CustomButtomAuth(
                        color1: Colors.deepOrange,
                        color: Colors.white,
                        text: 'Sign Up',
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return RegisterScreenPage1();
                              }));
                        }),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
