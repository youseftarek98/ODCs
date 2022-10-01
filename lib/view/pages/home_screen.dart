import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_taxi/view/pages/section/sections_screen.dart';
import 'package:green_taxi/viwe_model/bloc_or_cubit/home_cubit.dart';
import 'package:green_taxi/viwe_model/lecture_cubit/lecture_screen_cubit.dart';

import '../component/home_widget/custom_card.dart';
import 'events/events_screen.dart';
import 'finals/final_screen.dart';
import 'lectures_screen.dart';
import 'midterms/midterms_screen.dart';
import 'notes/notes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LectureScreenCubit()..getDataLectures(),
      child: BlocConsumer<LectureScreenCubit, LectureScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LectureScreenCubit myCubit = LectureScreenCubit.get(context);
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Orange',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.deepOrange),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Digital Center',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LecturesScreens()));
                        print('object');
                      }, context,
                          text: 'Lectures',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                                SvgPicture.asset('assets/icons_svg/lecture.svg'),
                          )),

                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SectionsScreens()));
                        print('object');
                      }, context,
                          text: 'Sections',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                                SvgPicture.asset('assets/icons_svg/sections.svg' , color: Colors.deepOrange,),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MidtermsScreen()));
                        print('object');
                      }, context,
                          text: 'Midterms',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                            SvgPicture.asset('assets/icons_svg/midterm.svg'),
                          )),

                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FinalsScreen()));
                        print('object');
                      }, context,
                          text: 'Finals',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                            SvgPicture.asset('assets/icons_svg/final.svg' , color: Colors.deepOrange,),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  MyHomePage()));
                        print('object');
                      }, context,
                            text: 'Events',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                            SvgPicture.asset('assets/icons_svg/event.svg'),
                          )),

                      customCard(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NotesScreen()));
                        print('object');
                      }, context,
                          text: 'Notes',
                          icon: CircleAvatar(
                            backgroundColor: Colors.grey.shade200,
                            child:
                            SvgPicture.asset('assets/icons_svg/notes.svg' , color: Colors.deepOrange,),
                          )),
                    ],
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }

  ///
//   BlocProvider(
//       create: (context) => HomeCubit(),
//       child: BlocConsumer<HomeCubit, HomeState>(
//         listener: (context, state) {
//
//         },
//         builder: (context, state) {
//           HomeCubit myCount = HomeCubit.get(context) ;
//           return MaterialApp(
//             home: Scaffold(
//               body: SafeArea(
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Card(
//                       //   elevation: 4,
//                       //   child: Row(
//                       //     mainAxisAlignment:MainAxisAlignment.spaceAround ,
//                       //     children: [
//                       //       CustomCard( 'jsi') ,
//                       //
//                       //
//                       //     ],
//                       //   ),
//                       // )
//                       Text(myCount.count .toString()),
//                       ElevatedButton(onPressed: () {
//                         myCount.increment() ;
//                       },
//                         child: Text('Clike'),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
// /

}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:green_taxi/viwe_model/bloc_or_cubit/home_cubit.dart';
//
// import '../component/home_widget/custom_card.dart';
// import 'lectures_screen.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'Orange',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25,
//                         color: Colors.orange),
//                   ),
//                   SizedBox(
//                     width: 8,
//                   ),
//                   Text(
//                     'Digital Center',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.canPop(context)? Navigator.pop(context): null ;
//                           print('object');
//                         },
//                         child: customCard(context,
//                             onTap: (){},
//                             text: 'Lectures',
//                             icon: CircleAvatar(
//                               backgroundColor: Colors.grey.shade200,
//                               child:
//                               SvgPicture.asset('assets/icons_svg/lecture.svg'),
//                             )),
//                       ),
//
//                       // customCard(context,
//                       //     onTap: (){},
//                       //     text: 'Midterms',
//                       //     icon: CircleAvatar(
//                       //       backgroundColor: Colors.grey.shade200,
//                       //       child: SvgPicture.asset('assets/icons_svg/midterm_cubit.svg'),
//                       //     )),
//                       // customCard(context,
//                       //     onTap: (){},
//                       //     text: 'Events',
//                       //     icon: CircleAvatar(
//                       //       backgroundColor: Colors.grey.shade200,
//                       //       child: SvgPicture.asset('assets/icons_svg/event.svg'),
//                       //     )),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       customCard(context,
//                           onTap: (){},
//                           text: 'Sections',
//                           icon: CircleAvatar(
//                             backgroundColor: Colors.grey.shade200,
//                             child: SvgPicture.asset(
//                               'assets/icons_svg/sections.svg',
//                               color: Colors.deepOrangeAccent,
//                             ),
//                           )),
//
//                       // customCard(context,
//                       //     onTap: (){},
//                       //     text: 'Finals',
//                       //     icon: CircleAvatar(
//                       //       backgroundColor: Colors.grey.shade200,
//                       //       child: SvgPicture.asset('assets/icons_svg/final.svg'),
//                       //     )),
//                       // customCard(context,
//                       //     onTap: (){},
//                       //     text: 'Notes',
//                       //     icon: CircleAvatar(
//                       //       backgroundColor: Colors.grey.shade200,
//                       //       child: SvgPicture.asset('assets/icons_svg/notes.svg'),
//                       //     )),
//                     ],
//                   ),
//                 ],
//               )
//             ],
//           )),
//     );
//   }
//
// ///
// //   BlocProvider(
// //       create: (context) => HomeCubit(),
// //       child: BlocConsumer<HomeCubit, HomeState>(
// //         listener: (context, state) {
// //
// //         },
// //         builder: (context, state) {
// //           HomeCubit myCount = HomeCubit.get(context) ;
// //           return MaterialApp(
// //             home: Scaffold(
// //               body: SafeArea(
// //                 child: Center(
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       // Card(
// //                       //   elevation: 4,
// //                       //   child: Row(
// //                       //     mainAxisAlignment:MainAxisAlignment.spaceAround ,
// //                       //     children: [
// //                       //       CustomCard( 'jsi') ,
// //                       //
// //                       //
// //                       //     ],
// //                       //   ),
// //                       // )
// //                       Text(myCount.count .toString()),
// //                       ElevatedButton(onPressed: () {
// //                         myCount.increment() ;
// //                       },
// //                         child: Text('Clike'),
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// // /
//
// }
//
//
//
//
//
