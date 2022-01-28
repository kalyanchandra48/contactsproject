import 'services.dart';
import '../models/contactbox.dart';

class ContactService {
  static saveContact(Contact contact) {
    Global.boxes[BOX_NAME.CONTACTS_BOX]!.put(contact.id, contact);
  }

  static deleteContact(String id) {
    Global.boxes[BOX_NAME.CONTACTS_BOX]!.delete(id);
  }
}
