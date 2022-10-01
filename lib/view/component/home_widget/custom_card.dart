import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget customCard ( BuildContext context , {  String? text,required Widget icon , Size? size , required Function onTap}){
  return  Column(
    children: [
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  onTap();
                },
                child: Container(
                      width: MediaQuery.of(context).size.width * 0.48,
                      height: MediaQuery.of(context).size.width * 0.38,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                    child: Card(
                      elevation: 10,
                      child:   Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        icon ,
                        Text(text! , style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.deepOrangeAccent)) ,
                      ],
                    ),
                ),
                    ),
              ),
            ],
          ),
        ],
      ),
    ],
  )
      ;
}





// Widget customCards ( BuildContext context , {  String? texts, required String text,required Widget icon , Size? size}){
//   return
//     Container(
//       width: MediaQuery.of(context).size.width * 1,
//       height: MediaQuery.of(context).size.width * 0.38,
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15)
//       ),
//       child: Card(
//
//         elevation: 6,
//         child:   Container(
//           padding: EdgeInsets.all(13),
//           child: Column(
//             mainAxisAlignment:  MainAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//
//                   Container(
//                     padding: const EdgeInsets.all(12),
//                     child: Text(text , style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                         color: Colors.black)),
//                   ) ,
//
//                   Row(
//                     children: [
//                       Icon(Icons.camera_alt_outlined) ,
//
//                       SizedBox(width: 20,) ,
//                       Text(texts!)
//                     ],
//                   )
//
//                 ],
//               ) ,
//
//             ],
//           ),
//         ),
//       ),
//     )
//
//
//
//   ;
// }


// Widget home_widget(BuildContext context ){
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Column(
//         children: [
//           InkWell(
//             onTap: () {
//               // Navigator.push(
//               //     context,
//               //     MaterialPageRoute(
//               //         builder: (context) => const LecturesScreens()));
//               print('object');
//             },
//
//             child: customCard(context,
//                 text: 'Lectures',
//                 icon: CircleAvatar(
//                   backgroundColor: Colors.grey.shade200,
//                   child:
//                   SvgPicture.asset('assets/icons_svg/lecture.svg'),
//                 )),
//           ),
//           customCard(context,
//               text: 'Midterms',
//               icon: CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: SvgPicture.asset('assets/icons_svg/midterm_cubit.svg'),
//               )),
//           customCard(context,
//               text: 'Events',
//               icon: CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: SvgPicture.asset('assets/icons_svg/event.svg'),
//               )),
//         ],
//       ),
//       Column(
//         children: [
//           customCard(context,
//               text: 'Sections',
//               icon: CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: SvgPicture.asset(
//                   'assets/icons_svg/sections.svg',
//                   color: Colors.deepOrangeAccent,
//                 ),
//               )),
//           customCard(context,
//               text: 'Finals',
//               icon: CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: SvgPicture.asset('assets/icons_svg/final.svg'),
//               )),
//           customCard(context,
//               text: 'Notes',
//               icon: CircleAvatar(
//                 backgroundColor: Colors.grey.shade200,
//                 child: SvgPicture.asset('assets/icons_svg/notes.svg'),
//               )),
//         ],
//       ),
//     ],
//   ) ;
// }