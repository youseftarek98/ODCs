// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../viwe_model/register_cubit/register_cubit.dart';
// import '../../component/custom_auth/custom_button.dart';
// import '../../component/custom_auth/custom_register.dart';
// import '../../component/custom_auth/custom_text_title.dart';
// import 'login_screen.dart';
//
// class RegisterPage extends StatelessWidget {
//   RegisterPage({Key? key}) : super(key: key);
//
//
//   dynamic indexGender = 'm';
//   List itemGender = [
//     'm',
//     'f',
//   ];
//   dynamic indexGrade = 'Grade 1';
//   List itemGrade = [
//     1,2,3,4,5
//   ];
//
//   dynamic ind = 'Auc';
//   List itemsUn = [
//     'Auc',
//     'USA',
//     'EG',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return BlocProvider(
//       create: (context) => RegisterCubit(),
//       child: BlocConsumer<RegisterCubit, RegisterState>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           RegisterCubit myCubit = RegisterCubit.get(context);
//           return Scaffold(
//               body: Container(
//                 padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
//                 child: ListView(
//                   shrinkWrap: true,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children:  const [
//                         CustomText(
//                           fontSize: 31,
//                           color: Colors.deepOrange,
//                           fontWeight: FontWeight.bold,
//                           labelText: 'Orange',
//                         ),
//                         SizedBox(
//                           width: 8,
//                         ),
//                         CustomText(
//                           fontSize: 31,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           labelText: 'Digital Center',
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 25,
//                     ),
//                     const CustomText(
//                       fontSize: 31,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                       labelText: 'Sign Up',
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     CustomTextFormAuth(
//                       controller: myCubit.name,
//                       labelText: 'Name',
//                       hintText: 'Enter Your Name',
//                     ),
//                     CustomTextFormAuth(
//                       controller: myCubit.email,
//                       labelText: 'E-mail',
//                       hintText: 'Enter Your E-Mail',
//                     ),
//                     CustomTextFormAuth(
//                       controller: myCubit.password,
//                       labelText: 'Password',
//                       hintText: 'Enter Your Password',
//                       iconData:Icons.visibility
//                       // obscureText == false
//                       //     ? Icons.visibility
//                       //     : Icons.visibility_off,
//                     ),
//                     // CustomTextFormAuth(
//                     //   controller: confirmPassword,
//                     //   labelText: 'Confirm Password',
//                     //   hintText: 'Re-Enter Your Password',
//                     //   iconData:
//                     //       _obscureText == true ? Icons.visibility : Icons.visibility_off,
//                     // ),
//                     CustomTextFormAuth(
//                       controller: myCubit.phone,
//                       labelText: 'Phone Number',
//                       hintText: 'Enter Your Phone',
//                     ),
//                     const SizedBox(
//                       height: 28,
//                     ),
//
//
//                     Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Column(
//                               children: [
//                                 const CustomText(
//                                   labelText: 'Gender',
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 22,
//                                   color: Colors.black,
//                                 ),
//                                     Column(
//                                       children: [
//                                         DropdownButton(
//                                           items: itemGender
//                                               .map((e) => DropdownMenuItem(
//                                             value: e,
//                                             child: Text('$e'),
//                                           ))
//                                               .toList(),
//                                           onChanged: (val) {
//
//                                               indexGender = val ;
//                                              /// myCubit.gender.text = val.toString() ;
//
//                                             print('$val');
//                                           },
//                                           value: indexGender,
//                                         ),
//                                       ],
//                                     ) ,
//                                 //
//                                 //     ),
//
//                                 // Container(
//                                 //   margin: const EdgeInsets.all(5),
//                                 //   padding: const EdgeInsets.symmetric(
//                                 //       vertical: 5, horizontal: 10),
//                                 //   decoration: BoxDecoration(
//                                 //       border: Border.all(
//                                 //           color: Colors.deepOrange, width: 1),
//                                 //       borderRadius: BorderRadius.circular(10)),
//                                 //   child:
//                                 //
//                                 //  myCubit.indexGrade == false ? Text('Male'):DropdownButton(
//                                 //     onTap: myCubit.onChangeGender(myCubit.gender.text),
//                                 //     items: myCubit.itemGender
//                                 //         .map((e) => DropdownMenuItem(
//                                 //       value: e,
//                                 //       child: Text('$e'),
//                                 //     ))
//                                 //         .toList(),
//                                 //     onChanged: (val) {
//                                 //
//                                 //
//                                 //         myCubit.gender.text = val.toString() ;
//                                 //
//                                 //       print('$val');
//                                 //     },
//                                 //     value: myCubit.indexGender,
//                                 //   ),
//                                 //
//                                 // ),
//                               ],
//                             ),
//                             const SizedBox(
//                               width: 19,
//                             ),
//                             Column(
//                               children: [
//                                 const CustomText(
//                                   labelText: 'University',
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 22,
//                                   color: Colors.black,
//                                 ),
//                                 Container(
//                                   margin: const EdgeInsets.all(5),
//                                   padding: const EdgeInsets.symmetric(
//                                       vertical: 5, horizontal: 10),
//                                   decoration: BoxDecoration(
//                                       border: Border.all(
//                                           color: Colors.deepOrange, width: 1),
//                                       borderRadius: BorderRadius.circular(10)),
//                                   child: DropdownButton(
//                                     items: itemsUn
//                                         .map((e) => DropdownMenuItem(
//                                               value: e,
//                                               child: Text('$e'),
//                                             ))
//                                         .toList(),
//                                     onChanged: (val) {
//
//                                         ind = val;
//                                      ///   myCubit.universityId.text = val.toString();
//
//                                       print('$val');
//                                     },
//                                     value: ind,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 19,
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: const [
//                                 CustomText(
//                                   labelText: 'Grade',
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 22,
//                                   color: Colors.black,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 5,
//                             ),
//                             Container(
//                               margin: const EdgeInsets.all(5),
//                               padding: const EdgeInsets.symmetric(
//                                   vertical: 5, horizontal: 10),
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       color: Colors.deepOrange, width: 1),
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: DropdownButton(
//                                 items: itemGrade
//                                     .map((e) => DropdownMenuItem(
//                                           value: e,
//                                           child: Text('$e'),
//                                         ))
//                                     .toList(),
//                                 onChanged: (val) {
//
//                                     indexGrade = val;
//                                    // myCubit.gradeId.text = val.toString();
//
//                                   print('$val');
//                                 },
//                                 value: indexGrade,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//
//
//
//                     const SizedBox(
//                       height: 28,
//                     ),
//                     CustomButtomAuth(
//                         color1: Colors.white,
//                         color: Colors.deepOrange,
//                         text: 'Sign Up',
//                         onPressed: () {
//                           RegisterCubit.get(context).registerUser(context) ;
//                          // myCubit.registerUser(context) ;
//                         }),
//
//                     CustomButtomAuth(
//                         color1: Colors.deepOrange,
//                         color: Colors.white,
//                         text: 'Login',
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) {
//                                 return LoginScreenPage();
//                               }));
//                         }),
//                   ],
//                 ),
//               ));
//         },
//       ),
//     );
//   }
// }
//






import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viwe_model/register_cubit/register_cubit.dart';
import '../../component/custom_auth/custom_button.dart';
import '../../component/custom_auth/custom_register.dart';
import '../../component/custom_auth/custom_text_chose.dart';
import '../../component/custom_auth/custom_text_title.dart';
import 'login_screen.dart';

class RegisterScreenPage1 extends StatefulWidget {
  const RegisterScreenPage1({Key? key}) : super(key: key);

  @override
  State<RegisterScreenPage1> createState() => _RegisterScreenPage1State();
}

class _RegisterScreenPage1State extends State<RegisterScreenPage1> {


  bool obscureText = true;
  String indexGender = 'm';
  List itemGender = [
    'm',
    'f',
  ];
  dynamic indexGrade = 1;
  List<int> itemGrade = [1, 2, 3, 4];

  dynamic listUnviId = 1;
  List<int> itemsUId = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
  ///  Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          RegisterCubit myCubit = RegisterCubit.get(context);
          return Scaffold(
              body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(
              shrinkWrap: true,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomText(
                      fontSize: 31,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      labelText: 'Orange',
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    CustomText(
                      fontSize: 31,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      labelText: 'Digital Center',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomText(
                  fontSize: 31,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  labelText: 'Sign Up',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFormAuth(
                  controller: myCubit.name,
                  labelText: 'Name',
                  hintText: 'Enter Your Name',
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
                  iconData: obscureText == true
                      ? Icons.visibility
                      : Icons.visibility_off

                ),
                CustomTextFormAuth(
                  controller: myCubit.phone,
                  labelText: 'Phone Number',
                  hintText: 'Enter Your Phone',
                ),
                const SizedBox(
                  height: 28,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            const CustomText(
                                  labelText: 'Gender',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepOrange, width: 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButton(
                                items: itemGender
                                    .map((e) => DropdownMenuItem(
                                          value: e,
                                          child: Text('$e'),
                                        ))
                                    .toList(),
                                onChanged: (Object? value) {
                                  setState((){
                                    indexGender = value.toString() ;
                                   // myCubit.gender.text = itemGender.toString()  ;
                                  }) ;
                                },
                                value: indexGender ,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            const CustomText(
                              labelText: 'University',
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.deepOrange, width: 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: DropdownButton(
                                items: itemsUId
                                    .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text('$e'),
                                ))
                                    .toList(),
                                onChanged: (value) {
                                  setState((){
                                    listUnviId = value ;
                                   // myCubit.universityId.text = listUnviId.toString() ;
                                  }) ;

                                },
                                value:listUnviId ,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                           Column(
                             children: [
                               const CustomText(
                                 labelText: 'Grade',
                                 fontWeight: FontWeight.w400,
                                 fontSize: 18,
                                 color: Colors.black,
                               ),


                               Container(
                                 margin: const EdgeInsets.all(5),
                                 padding: const EdgeInsets.symmetric(
                                     vertical: 5, horizontal: 10),
                                 decoration: BoxDecoration(
                                     border: Border.all(
                                         color: Colors.deepOrange, width: 1),
                                     borderRadius: BorderRadius.circular(10)),
                                 child: DropdownButton(
                                   items: itemGrade
                                       .map((e) => DropdownMenuItem(
                                     value: e,
                                     child: Text('$e'),
                                   ))
                                       .toList(),
                                   onChanged: (value) {
                                     setState((){
                                       indexGrade = value ;
                                     }) ;

                                   },
                                   value: indexGrade,
                                 ),
                               )
                             ],
                           )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                CustomButtomAuth(
                    color1: Colors.white,
                    color: Colors.deepOrange,
                    text: 'Sign Up',
                    onPressed: ()async {
                     myCubit.registerUser(context);
                    }),
                CustomButtomAuth(
                    color1: Colors.deepOrange,
                    color: Colors.white,
                    text: 'Login',
                    onPressed: () {

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginScreenPage();
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
