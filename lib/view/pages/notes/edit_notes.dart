import 'package:flutter/material.dart';
import '../../../viwe_model/data_base/data_base_sql.dart';
import '../../component/custom_text_form_field/custom_tex_form_field_widge.dart';
import '../../component/custom_text_forms_notes/custom_text_forms_notes.dart';
import 'notes_screen.dart';

class EditNotesScreen extends StatefulWidget {
  final note;

  final title;

  final id;

  const EditNotesScreen({Key? key, this.note, this.title, this.id})
      : super(key: key);

  @override
  State<EditNotesScreen> createState() => _EditNotesScreenState();
}

class _EditNotesScreenState extends State<EditNotesScreen> {
  TextEditingController note = TextEditingController();
  TextEditingController title = TextEditingController();

  @override
  void initState() {
    note.text = widget.note;
    title.text = widget.title;
    super.initState();
  }

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
          'Edit Notes',
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
                        int response = await sqlDb.updateData('''
                        UPDATE notes SET 
                        note = "${note.text}" ,
                        title = "${title.text}" 
                        WHERE id = ${widget.id}
                         ''');
                        if (response > 0) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const NotesScreen()),
                              (route) => false);
                        }

                        print('==================');
                        print(response);
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
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }


}
