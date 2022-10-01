import 'package:flutter/material.dart';
import 'package:green_taxi/view/pages/intro_pag.dart';

import '../../../viwe_model/data_base/data_base_sql.dart';
import 'add_notes.dart';
import 'edit_notes.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  SqlDb sqlDb = SqlDb();
  bool isLoading = true;

  Future readData() async {
    List<Map> response = await sqlDb.readData("SELECT * FROM notes");
    notes.addAll(response);
    isLoading = false;
    if (mounted) {
      setState(() {});
    }
  }

  List notes = [];

  @override
  void initState() {
    readData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notes',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => IntroPage()),
                    (route) => false);
                print('Notes');
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.deepOrange,
                size: 25,
              )),
        ),
        body: isLoading == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListView.builder(
                        itemCount: notes.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.deepOrange),
                                //  color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(29)),
                            child: ListTile(
                                title: Text('${notes[index]['note']}'),
                                subtitle: Text('${notes[index]['title']}'),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                        onPressed: () async {
                                          int response = await sqlDb.deleteData(
                                              'DELETE FROM notes WHERE id = ${notes[index]['id']}');
                                          if (response > 0) {
                                            notes.removeWhere((element) =>
                                                element['id'] ==
                                                notes[index]['id']);
                                            setState(() {});
                                          }
                                        },
                                        icon: const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        )),
                                    IconButton(
                                        onPressed: () async {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditNotesScreen(
                                                        note: notes[index]
                                                            ['note'],
                                                        title: notes[index]
                                                            ['title'],
                                                        id: notes[index]['id'],
                                                      )));
                                        },
                                        icon: const Icon(
                                          Icons.edit,
                                          color: Colors.blue,
                                        )),
                                  ],
                                )),
                          );
                        })
                  ],
                ),
              ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey.shade600,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddNotesScreen()));

            print('Add notes');
          },
          child: const Icon(Icons.add, size: 33),
        ));
  }
}
