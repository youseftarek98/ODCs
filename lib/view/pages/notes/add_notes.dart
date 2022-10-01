import 'package:flutter/material.dart';
import '../../../viwe_model/data_base/data_base_sql.dart';
import '../../component/custom_text_form_field/custom_tex_form_field_widge.dart';
import '../../component/custom_text_forms_notes/custom_text_forms_notes.dart';
import 'notes_screen.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({Key? key}) : super(key: key);

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();

  SqlDb sqlDb = SqlDb();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
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
        title: const Text(
          'Add Notes',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
                child: Column(
              children: [
                textFormFieldNotes(
                  controller: note,
                  context,
                  icon: const Icon(Icons.person),
                  hintText: 'Name',
                  labelText: 'Name',
                  valueKey: 'TaskCategory',
                  enabled: true,
                  //maxLength: 200,
                  fct: () {},
                  // maxLength: 100
                ),
                textFormFieldNotes(
                  controller: title,
                  context,

                  hintText: "What's making you unhappy?",
                  valueKey: 'TextDescription',
                  //controller: _descriptionController,
                  enabled: true,
                  fct: () {},
                  //  maxLength: 10000000000000
                ),
                const SizedBox(
                  height: 10,
                ),

                MaterialButton(
                  onPressed: () async {
                    int response =  await sqlDb.insertData('''
                         INSERT INTO notes ('note' , 'title' )
                         VALUES ("${note.text}" ,"${title.text}")
                         ''') ;

                   if(response>0){
                     Navigator.of(context).
                     pushAndRemoveUntil(MaterialPageRoute(builder: (context) => const NotesScreen()), (route) => false) ;
                   }

                    print('==================') ;
                    print(response) ;
                  },
                  color: Colors.deepOrange,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide.none),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 14),
                        child: Text('Add Notes',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ) ,

              ],
            ))
          ],
        ),
      ),
    );
  }

// void _pickedDate() async {
//   _picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime.now().subtract(const Duration(days: 0)),
//       lastDate: DateTime(2100));
//   // print('picked $_picked');
//   if (_picked != null) {
//     setState(() {
//       _deadLineDateTimeStamp = Timestamp.fromMicrosecondsSinceEpoch(
//           _picked!.microsecondsSinceEpoch);
//       _deadLineDateController.text =
//       '${_picked!.year} - ${_picked!.month} - ${_picked!.day} ';
//     });
//   }
// }

}
