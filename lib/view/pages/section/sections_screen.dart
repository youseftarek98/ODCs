import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../viwe_model/sections_cubit/sections_screen_cubit.dart';

class SectionsScreens extends StatelessWidget {
  const SectionsScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SectionsScreenCubit()..getDataLectures(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sections',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.canPop(context) ? Navigator.pop(context) : null;
                print('object');
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.deepOrange,
                size: 25,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                child: SvgPicture.asset(
                  'assets/icons_svg/filter.svg',
                  color: Colors.deepOrange,
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  print('Day =================');
                },
              ),
            )
          ],
        ),
        body: BlocConsumer<SectionsScreenCubit, SectionsScreenState>(
          listener: (context, state) {
          },
          builder: (context, state) {
            SectionsScreenCubit myCubit = SectionsScreenCubit.get(context);
            return myCubit.sectionsModel == null
                ? const Center(child: CircularProgressIndicator(color: Colors.deepOrange,))
                    : ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: myCubit.sectionsModel!.data!.length,
                        // myCubit.lectureModel!.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width * 1,
                                height:
                                    MediaQuery.of(context).size.width * 0.38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Card(
                                  elevation: 7,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                myCubit.sectionsModel!
                                                    .data![index].sectionSubject
                                                    .toString(),
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 24),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Icon(Icons.timer_rounded),
                                                  Text('2hrs'),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Column(
                                          children: [
                                            // Row(
                                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   crossAxisAlignment: CrossAxisAlignment.end,
                                            //   children: const [
                                            //     Text('Lecture Day'), Text('Start Time'),
                                            //     Text('End Time'),
                                            //     //Icon(Icons.timer_rounded),
                                            //   ],
                                            // ),
                                            // Row(
                                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            //   children: [
                                            //      CircleAvatar(
                                            //       backgroundColor: Colors.white,
                                            //       child: InkWell(
                                            //         child: SvgPicture.asset(
                                            //             'assets/icons_svg/event.svg',
                                            //             color: Colors.black87),
                                            //         onTap: () {
                                            //           print('Day =================');
                                            //         },
                                            //       ),
                                            //     ),
                                            //     const Text(
                                            //       'Thursday',
                                            //       style: TextStyle(color: Colors.black87),
                                            //     ),
                                            //   ],
                                            // ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    const Text('Lecture Day'),
                                                    Row(
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: InkWell(
                                                            child: SvgPicture.asset(
                                                                'assets/icons_svg/event.svg',
                                                                color: Colors
                                                                    .black87),
                                                            onTap: () {
                                                              print(
                                                                  'Day =================');
                                                            },
                                                          ),
                                                        ),
                                                        Text(
                                                          myCubit
                                                              .sectionsModel!
                                                              .data![index]
                                                              .sectionDate
                                                              .toString(),
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black87),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    const Text('Start Time'),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: InkWell(
                                                            child: SvgPicture.asset(
                                                                'assets/icons_svg/time.svg',
                                                                color: Colors
                                                                    .greenAccent
                                                                    .shade700),
                                                            onTap: () {
                                                              print(
                                                                  'Day =================');
                                                            },
                                                          ),
                                                        ),
                                                        Text(
                                                          myCubit
                                                              .sectionsModel!
                                                              .data![index]
                                                              .sectionStartTime
                                                              .toString(),
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black87),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    const Text('End Time'),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              Colors.white,
                                                          child: InkWell(
                                                            child: SvgPicture.asset(
                                                                'assets/icons_svg/time.svg',
                                                                color: Colors
                                                                    .redAccent
                                                                    .shade700),
                                                            onTap: () {
                                                              print(
                                                                  'Day =================');
                                                            },
                                                          ),
                                                        ),
                                                        Text(
                                                          myCubit
                                                              .sectionsModel!
                                                              .data![index]
                                                              .sectionEndTime
                                                              .toString(),
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black87),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        });
          },
        ),
      ),
    );
  }
}
