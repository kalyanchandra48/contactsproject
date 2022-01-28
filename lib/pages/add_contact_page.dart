import 'package:flutter/material.dart';
import 'contacts_screen.dart';
import 'package:database/services/services.dart';
import 'package:database/models/contactbox.dart';

class AddContact extends StatelessWidget {
  final numberHolder;
  AddContact({
    required this.numberHolder,
  });
  @override
  final _nameController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(100),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              child: Center(
                child: Text('Ph No:' + numberHolder),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: TextField(
                maxLength: 17,
                controller: _nameController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Name of the Contact',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (_nameController.text.length > 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContactsScreen(
                            numberHolder: numberHolder,
                            nameHolder: _nameController.text)),
                  );
                  final Contact c = new Contact(
                    numberHolder: numberHolder,
                    nameHolder: _nameController.text,
                    id: Utils.getSecureString(20),
                  );
                  ContactService.saveContact(c);
                  print(numberHolder);
                  print(_nameController.text);
                }
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text('Save the Contact'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
