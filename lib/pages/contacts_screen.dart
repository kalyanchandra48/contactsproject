import 'package:flutter/material.dart';
import 'package:database/services/services.dart';
import 'package:database/models/contactbox.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'add_contact_page.dart';

class ContactsScreen extends StatelessWidget {
  final numberHolder;
  final nameHolder;

  ContactsScreen({
    required this.numberHolder,
    required this.nameHolder,
  });
  @override
  Widget build(BuildContext context) {
    print(nameHolder);
    print(numberHolder);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          ValueListenableBuilder(
              valueListenable:
                  Global.boxes[BOX_NAME.CONTACTS_BOX]!.listenable(),
              builder: (context, Box box, wid) {
                final List<Contact> contacts = List<Contact>.from(box.values);
                return ListView.separated(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: contacts.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 8,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 26.0, vertical: 4),
                          tileColor: Colors.pink[100],
                          title: Text(contacts[index].nameHolder),
                          subtitle: Text(contacts[index].numberHolder),
                          trailing: GestureDetector(
                            onTap: () {
                              ContactService.deleteContact(contacts[index].id);
                            },
                            child: Icon(Icons.delete),
                          ),
                        ),
                      );
                    });
              }),
        ],
      ),
    );
  }
}
