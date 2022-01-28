import 'package:hive/hive.dart';
part 'contactbox.g.dart';

@HiveType(typeId: 1)
class Contact {
  @HiveField(0)
  String numberHolder;
  @HiveField(1)
  String nameHolder;
  @HiveField(2)
  String id;

  Contact({
    required this.numberHolder,
    required this.nameHolder,
    required this.id,
  });
}
