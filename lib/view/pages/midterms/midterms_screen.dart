import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../viwe_model/midterm_cubit/midterms_screen_cubit.dart';

class MidtermsScreen extends StatelessWidget {
  const MidtermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermsScreenCubit()..getDataLectures(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Midterms',
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
        body: BlocConsumer<MidtermsScreenCubit, MidtermsScreenState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            MidtermsScreenCubit myCubit = MidtermsScreenCubit.get(context);
            return myCubit.midtermsModel == null
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.deepOrange,
                  ))
                : ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: myCubit.midtermsModel!.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  myCubit.midtermsModel!.data![index].isfinal==false ?Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.width * 0.38,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            myCubit.midtermsModel!.data![index]
                                                .examSubject
                                                .toString(),
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                      // mainAxisAlignment:
                                      // MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
                                                            color:
                                                                Colors.black87),
                                                        onTap: () {
                                                          print(
                                                              'Day =================');
                                                        },
                                                      ),
                                                    ),
                                                    Text(
                                                      myCubit.midtermsModel!
                                                          .data![index].examDate
                                                          .toString(),
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.black87),
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
                                                          .midtermsModel!
                                                          .data![index]
                                                          .examStartTime
                                                          .toString(),
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.black87),
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
                                                          .midtermsModel!
                                                          .data![index]
                                                          .examEndTime
                                                          .toString(),
                                                      style: const TextStyle(
                                                          color:
                                                              Colors.black87),
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
                      ) : SizedBox() ;
                    });
          },
        ),
      ),
    );
  }
}
