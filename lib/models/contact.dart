import 'package:isar/isar.dart';
part 'contact.g.dart';

@Collection()
class Contact {
  @Id()
  int? id;

  String? name;
  int? number;
}
