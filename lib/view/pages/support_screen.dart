import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:green_taxi/view/pages/settings_screen.dart';

import '../../viwe_model/support_bloc/support_bloc_screen_cubit.dart';
import '../component/custom_text_form_field/custom_tex_form_field_widge.dart';

class SupportScreens extends StatelessWidget {
  SupportScreens({Key? key}) : super(key: key);

  bool _isLoading = false;

  GlobalKey <FormState> formstate = GlobalKey() ;

  TextEditingController note = TextEditingController() ;
  TextEditingController title = TextEditingController() ;
  TextEditingController descruption = TextEditingController() ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => SupportBlocScreenCubit(),
      child: BlocConsumer<SupportBlocScreenCubit, SupportBlocScreenState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportBlocScreenCubit myData = SupportBlocScreenCubit.get(context);

          return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                    onPressed: () {
                      Navigator.canPop(context) ? Navigator.pop(context) : null;
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    )),
                elevation: 3,
              ),
              body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: formstate,
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textFormField(
                              controller: myData.title ,
                              context,
                              icon: const Icon(Icons.person),
                              hintText: 'Name',

                              valueKey: 'TaskCategory',
                              enabled: true,
                              //maxLength: 200,
                              fct: () {},
                              // maxLength: 100
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            textFormField(
                              controller: title ,
                              context,
                              // maxLength: 200,
                              icon: const Icon(Icons.email),
                              hintText: 'E-Mail',

                              valueKey: 'TaskTitle',
                              //controller: _titelController,
                              enabled: true,
                              fct: () {},
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            textFormField(
                              controller: descruption ,
                              context,
                              hintText: "What's making you unhappy?",
                              valueKey: 'TextDescription',
                              //controller: _descriptionController,
                              enabled: true,
                              fct: () {},
                              //  maxLength: 10000000000000
                            ),
                            const SizedBox(
                              height: 17,
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: _isLoading
                                    ? const CircularProgressIndicator()
                                    : MaterialButton(
                                        onPressed: () {
                                          myData.insertsData ;
                                        },
                                        color: Colors.deepOrange,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            side: BorderSide.none),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 14),
                                              child: Text('Submit',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ))
                      ],
                    ),
                  )));
        },
      ),
    );
  }
}
