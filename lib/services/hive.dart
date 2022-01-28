import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'dart:async';
import '../models/contactbox.dart';



class HiveInstance{
	static late Box _contactsBox;
static initialiseHive() async{
	await Hive.initFlutter();
	Hive.registerAdapter(ContactAdapter());

	_contactsBox = await Hive.openBox('contacts_box');
}
static  Box get contactsBox{
	return _contactsBox;
}
}

