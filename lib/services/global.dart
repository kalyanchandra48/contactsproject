import 'dart:async';
import 'package:database/services/services.dart';

import 'package:hive/hive.dart' show Box;

enum BOX_NAME {
  CONTACTS_BOX,
}

class Global {
  static final Map<BOX_NAME, Box> boxes = {
    BOX_NAME.CONTACTS_BOX: HiveInstance.contactsBox,
  };
}
