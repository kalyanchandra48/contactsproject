import 'package:flutter/material.dart';
import 'add_contact_page.dart';
import 'contacts_screen.dart';

class Dialpad extends StatefulWidget {
  @override
  _DialpadState createState() => _DialpadState();
}

class _DialpadState extends State<Dialpad> {
  List<String> text = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'Clear',
    '0',
    'Add Contact'
  ];
  String nameHolder = '';
  final _numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ContactsScreen(
              numberHolder: _numbercontroller, nameHolder: nameHolder)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                   SizedBox(
            height: 10,
          ),
          Container(
            height: 190,
            padding: EdgeInsets.only(top: 0, left: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(49)),
            ),
            child: Container(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: TextField(
                maxLength: 11,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.blue),
                controller: _numbercontroller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'Dial a number'),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 60),
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.4,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                ),
                itemCount: 12,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      if (i != 11) {
                        setState(() {
                          _numbercontroller.text =
                              _numbercontroller.text + text[i];
                        });
                      }
                      if (i == 11) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddContact(
                                  numberHolder: _numbercontroller.text)),
                        );
                        print(_numbercontroller.text);
			_numbercontroller.clear();
                      }

                      if (i == 9) {
                        _numbercontroller.clear();
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        text[i],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(95)),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
