// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

extension GetContactCollection on Isar {
  IsarCollection<Contact> get contacts {
    return getCollection('Contact');
  }
}

final ContactSchema = CollectionSchema(
  name: 'Contact',
  schema:
      '{"name":"Contact","properties":[{"name":"name","type":"String"},{"name":"number","type":"Long"}],"indexes":[],"links":[]}',
  adapter: const _ContactAdapter(),
  idName: 'id',
  propertyIds: {'name': 0, 'number': 1},
  indexIds: {},
  indexTypes: {},
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.id,
  version: 0,
);

class _ContactAdapter extends IsarTypeAdapter<Contact> {
  const _ContactAdapter();

  @override
  int serialize(IsarCollection<Contact> collection, RawObject rawObj,
      Contact object, List<int> offsets,
      [int? existingBufferSize]) {
    rawObj.id = object.id ?? Isar.minId;
    var dynamicSize = 0;
    final value0 = object.name;
    Uint8List? _name;
    if (value0 != null) {
      _name = BinaryWriter.utf8Encoder.convert(value0);
    }
    dynamicSize += _name?.length ?? 0;
    final value1 = object.number;
    final _number = value1;
    final size = dynamicSize + 26;

    late int bufferSize;
    if (existingBufferSize != null) {
      if (existingBufferSize < size) {
        malloc.free(rawObj.buffer);
        rawObj.buffer = malloc(size);
        bufferSize = size;
      } else {
        bufferSize = existingBufferSize;
      }
    } else {
      rawObj.buffer = malloc(size);
      bufferSize = size;
    }
    rawObj.buffer_length = size;
    final buffer = rawObj.buffer.asTypedList(size);
    final writer = BinaryWriter(buffer, 26);
    writer.writeBytes(offsets[0], _name);
    writer.writeLong(offsets[1], _number);
    return bufferSize;
  }

  @override
  Contact deserialize(IsarCollection<Contact> collection, int id,
      BinaryReader reader, List<int> offsets) {
    final object = Contact();
    object.id = id;
    object.name = reader.readStringOrNull(offsets[0]);
    object.number = reader.readLongOrNull(offsets[1]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readStringOrNull(offset)) as P;
      case 1:
        return (reader.readLongOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension ContactQueryWhereSort on QueryBuilder<Contact, Contact, QWhere> {
  QueryBuilder<Contact, Contact, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: '_id'));
  }
}

extension ContactQueryWhere on QueryBuilder<Contact, Contact, QWhereClause> {
  QueryBuilder<Contact, Contact, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClause(WhereClause(
        indexName: '_id',
        upper: [id],
        includeUpper: false,
      )).addWhereClause(WhereClause(
        indexName: '_id',
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClause(WhereClause(
        indexName: '_id',
        lower: [id],
        includeLower: false,
      )).addWhereClause(WhereClause(
        indexName: '_id',
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idIsNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      upper: [null],
      includeUpper: true,
      lower: [null],
      includeLower: true,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterWhereClause> idIsNotNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension ContactQueryFilter
    on QueryBuilder<Contact, Contact, QFilterCondition> {
  QueryBuilder<Contact, Contact, QAfterFilterCondition> idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idEqualTo(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idGreaterThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idLessThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'name',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameStartsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameEndsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> numberIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'number',
      value: null,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> numberEqualTo(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> numberGreaterThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> numberLessThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'number',
      value: value,
    ));
  }

  QueryBuilder<Contact, Contact, QAfterFilterCondition> numberBetween(
    int? lower,
    int? upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'number',
      lower: lower,
      upper: upper,
    ));
  }
}

extension ContactQueryWhereSortBy on QueryBuilder<Contact, Contact, QSortBy> {
  QueryBuilder<Contact, Contact, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByNumber() {
    return addSortByInternal('number', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> sortByNumberDesc() {
    return addSortByInternal('number', Sort.desc);
  }
}

extension ContactQueryWhereSortThenBy
    on QueryBuilder<Contact, Contact, QSortThenBy> {
  QueryBuilder<Contact, Contact, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByNumber() {
    return addSortByInternal('number', Sort.asc);
  }

  QueryBuilder<Contact, Contact, QAfterSortBy> thenByNumberDesc() {
    return addSortByInternal('number', Sort.desc);
  }
}

extension ContactQueryWhereDistinct
    on QueryBuilder<Contact, Contact, QDistinct> {
  QueryBuilder<Contact, Contact, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Contact, Contact, QDistinct> distinctByNumber() {
    return addDistinctByInternal('number');
  }
}

extension ContactQueryProperty
    on QueryBuilder<Contact, Contact, QQueryProperty> {
  QueryBuilder<Contact, int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<Contact, String?, QQueryOperations> nameProperty() {
    return addPropertyName('name');
  }

  QueryBuilder<Contact, int?, QQueryOperations> numberProperty() {
    return addPropertyName('number');
  }
}
