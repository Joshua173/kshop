// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String name;
  final int price;
  final int availale;
  final int sell;
  final String categorie;
  Product(
      {@required this.id,
      @required this.name,
      @required this.price,
      @required this.availale,
      @required this.sell,
      @required this.categorie});
  factory Product.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Product(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      availale:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}availale']),
      sell: intType.mapFromDatabaseResponse(data['${effectivePrefix}sell']),
      categorie: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}categorie']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    if (!nullToAbsent || availale != null) {
      map['availale'] = Variable<int>(availale);
    }
    if (!nullToAbsent || sell != null) {
      map['sell'] = Variable<int>(sell);
    }
    if (!nullToAbsent || categorie != null) {
      map['categorie'] = Variable<String>(categorie);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      availale: availale == null && nullToAbsent
          ? const Value.absent()
          : Value(availale),
      sell: sell == null && nullToAbsent ? const Value.absent() : Value(sell),
      categorie: categorie == null && nullToAbsent
          ? const Value.absent()
          : Value(categorie),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      price: serializer.fromJson<int>(json['price']),
      availale: serializer.fromJson<int>(json['availale']),
      sell: serializer.fromJson<int>(json['sell']),
      categorie: serializer.fromJson<String>(json['categorie']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'price': serializer.toJson<int>(price),
      'availale': serializer.toJson<int>(availale),
      'sell': serializer.toJson<int>(sell),
      'categorie': serializer.toJson<String>(categorie),
    };
  }

  Product copyWith(
          {int id,
          String name,
          int price,
          int availale,
          int sell,
          String categorie}) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
        availale: availale ?? this.availale,
        sell: sell ?? this.sell,
        categorie: categorie ?? this.categorie,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('availale: $availale, ')
          ..write('sell: $sell, ')
          ..write('categorie: $categorie')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              price.hashCode,
              $mrjc(availale.hashCode,
                  $mrjc(sell.hashCode, categorie.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.name == this.name &&
          other.price == this.price &&
          other.availale == this.availale &&
          other.sell == this.sell &&
          other.categorie == this.categorie);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> price;
  final Value<int> availale;
  final Value<int> sell;
  final Value<String> categorie;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.price = const Value.absent(),
    this.availale = const Value.absent(),
    this.sell = const Value.absent(),
    this.categorie = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required int price,
    @required int availale,
    @required int sell,
    @required String categorie,
  })  : name = Value(name),
        price = Value(price),
        availale = Value(availale),
        sell = Value(sell),
        categorie = Value(categorie);
  static Insertable<Product> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<int> price,
    Expression<int> availale,
    Expression<int> sell,
    Expression<String> categorie,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (price != null) 'price': price,
      if (availale != null) 'availale': availale,
      if (sell != null) 'sell': sell,
      if (categorie != null) 'categorie': categorie,
    });
  }

  ProductsCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<int> price,
      Value<int> availale,
      Value<int> sell,
      Value<String> categorie}) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      availale: availale ?? this.availale,
      sell: sell ?? this.sell,
      categorie: categorie ?? this.categorie,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (availale.present) {
      map['availale'] = Variable<int>(availale.value);
    }
    if (sell.present) {
      map['sell'] = Variable<int>(sell.value);
    }
    if (categorie.present) {
      map['categorie'] = Variable<String>(categorie.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('price: $price, ')
          ..write('availale: $availale, ')
          ..write('sell: $sell, ')
          ..write('categorie: $categorie')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 5, maxTextLength: 50);
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _availaleMeta = const VerificationMeta('availale');
  GeneratedIntColumn _availale;
  @override
  GeneratedIntColumn get availale => _availale ??= _constructAvailale();
  GeneratedIntColumn _constructAvailale() {
    return GeneratedIntColumn(
      'availale',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sellMeta = const VerificationMeta('sell');
  GeneratedIntColumn _sell;
  @override
  GeneratedIntColumn get sell => _sell ??= _constructSell();
  GeneratedIntColumn _constructSell() {
    return GeneratedIntColumn(
      'sell',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categorieMeta = const VerificationMeta('categorie');
  GeneratedTextColumn _categorie;
  @override
  GeneratedTextColumn get categorie => _categorie ??= _constructCategorie();
  GeneratedTextColumn _constructCategorie() {
    return GeneratedTextColumn(
      'categorie',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, price, availale, sell, categorie];
  @override
  $ProductsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'products';
  @override
  final String actualTableName = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('availale')) {
      context.handle(_availaleMeta,
          availale.isAcceptableOrUnknown(data['availale'], _availaleMeta));
    } else if (isInserting) {
      context.missing(_availaleMeta);
    }
    if (data.containsKey('sell')) {
      context.handle(
          _sellMeta, sell.isAcceptableOrUnknown(data['sell'], _sellMeta));
    } else if (isInserting) {
      context.missing(_sellMeta);
    }
    if (data.containsKey('categorie')) {
      context.handle(_categorieMeta,
          categorie.isAcceptableOrUnknown(data['categorie'], _categorieMeta));
    } else if (isInserting) {
      context.missing(_categorieMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Product.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

class Impression extends DataClass implements Insertable<Impression> {
  final int id;
  final int recto;
  final int copies;
  Impression({@required this.id, @required this.recto, @required this.copies});
  factory Impression.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return Impression(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      recto: intType.mapFromDatabaseResponse(data['${effectivePrefix}recto']),
      copies: intType.mapFromDatabaseResponse(data['${effectivePrefix}copies']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || recto != null) {
      map['recto'] = Variable<int>(recto);
    }
    if (!nullToAbsent || copies != null) {
      map['copies'] = Variable<int>(copies);
    }
    return map;
  }

  ImpressionsCompanion toCompanion(bool nullToAbsent) {
    return ImpressionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      recto:
          recto == null && nullToAbsent ? const Value.absent() : Value(recto),
      copies:
          copies == null && nullToAbsent ? const Value.absent() : Value(copies),
    );
  }

  factory Impression.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Impression(
      id: serializer.fromJson<int>(json['id']),
      recto: serializer.fromJson<int>(json['recto']),
      copies: serializer.fromJson<int>(json['copies']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recto': serializer.toJson<int>(recto),
      'copies': serializer.toJson<int>(copies),
    };
  }

  Impression copyWith({int id, int recto, int copies}) => Impression(
        id: id ?? this.id,
        recto: recto ?? this.recto,
        copies: copies ?? this.copies,
      );
  @override
  String toString() {
    return (StringBuffer('Impression(')
          ..write('id: $id, ')
          ..write('recto: $recto, ')
          ..write('copies: $copies')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(recto.hashCode, copies.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Impression &&
          other.id == this.id &&
          other.recto == this.recto &&
          other.copies == this.copies);
}

class ImpressionsCompanion extends UpdateCompanion<Impression> {
  final Value<int> id;
  final Value<int> recto;
  final Value<int> copies;
  const ImpressionsCompanion({
    this.id = const Value.absent(),
    this.recto = const Value.absent(),
    this.copies = const Value.absent(),
  });
  ImpressionsCompanion.insert({
    this.id = const Value.absent(),
    @required int recto,
    @required int copies,
  })  : recto = Value(recto),
        copies = Value(copies);
  static Insertable<Impression> custom({
    Expression<int> id,
    Expression<int> recto,
    Expression<int> copies,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recto != null) 'recto': recto,
      if (copies != null) 'copies': copies,
    });
  }

  ImpressionsCompanion copyWith(
      {Value<int> id, Value<int> recto, Value<int> copies}) {
    return ImpressionsCompanion(
      id: id ?? this.id,
      recto: recto ?? this.recto,
      copies: copies ?? this.copies,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recto.present) {
      map['recto'] = Variable<int>(recto.value);
    }
    if (copies.present) {
      map['copies'] = Variable<int>(copies.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImpressionsCompanion(')
          ..write('id: $id, ')
          ..write('recto: $recto, ')
          ..write('copies: $copies')
          ..write(')'))
        .toString();
  }
}

class $ImpressionsTable extends Impressions
    with TableInfo<$ImpressionsTable, Impression> {
  final GeneratedDatabase _db;
  final String _alias;
  $ImpressionsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _rectoMeta = const VerificationMeta('recto');
  GeneratedIntColumn _recto;
  @override
  GeneratedIntColumn get recto => _recto ??= _constructRecto();
  GeneratedIntColumn _constructRecto() {
    return GeneratedIntColumn(
      'recto',
      $tableName,
      false,
    );
  }

  final VerificationMeta _copiesMeta = const VerificationMeta('copies');
  GeneratedIntColumn _copies;
  @override
  GeneratedIntColumn get copies => _copies ??= _constructCopies();
  GeneratedIntColumn _constructCopies() {
    return GeneratedIntColumn(
      'copies',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, recto, copies];
  @override
  $ImpressionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'impressions';
  @override
  final String actualTableName = 'impressions';
  @override
  VerificationContext validateIntegrity(Insertable<Impression> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('recto')) {
      context.handle(
          _rectoMeta, recto.isAcceptableOrUnknown(data['recto'], _rectoMeta));
    } else if (isInserting) {
      context.missing(_rectoMeta);
    }
    if (data.containsKey('copies')) {
      context.handle(_copiesMeta,
          copies.isAcceptableOrUnknown(data['copies'], _copiesMeta));
    } else if (isInserting) {
      context.missing(_copiesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Impression map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Impression.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ImpressionsTable createAlias(String alias) {
    return $ImpressionsTable(_db, alias);
  }
}

class WifiTicket extends DataClass implements Insertable<WifiTicket> {
  final int id;
  final int price;
  final int duration;
  WifiTicket(
      {@required this.id, @required this.price, @required this.duration});
  factory WifiTicket.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    return WifiTicket(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      price: intType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      duration:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}duration']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    if (!nullToAbsent || duration != null) {
      map['duration'] = Variable<int>(duration);
    }
    return map;
  }

  WifiTicketsCompanion toCompanion(bool nullToAbsent) {
    return WifiTicketsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      duration: duration == null && nullToAbsent
          ? const Value.absent()
          : Value(duration),
    );
  }

  factory WifiTicket.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return WifiTicket(
      id: serializer.fromJson<int>(json['id']),
      price: serializer.fromJson<int>(json['price']),
      duration: serializer.fromJson<int>(json['duration']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'price': serializer.toJson<int>(price),
      'duration': serializer.toJson<int>(duration),
    };
  }

  WifiTicket copyWith({int id, int price, int duration}) => WifiTicket(
        id: id ?? this.id,
        price: price ?? this.price,
        duration: duration ?? this.duration,
      );
  @override
  String toString() {
    return (StringBuffer('WifiTicket(')
          ..write('id: $id, ')
          ..write('price: $price, ')
          ..write('duration: $duration')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(price.hashCode, duration.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is WifiTicket &&
          other.id == this.id &&
          other.price == this.price &&
          other.duration == this.duration);
}

class WifiTicketsCompanion extends UpdateCompanion<WifiTicket> {
  final Value<int> id;
  final Value<int> price;
  final Value<int> duration;
  const WifiTicketsCompanion({
    this.id = const Value.absent(),
    this.price = const Value.absent(),
    this.duration = const Value.absent(),
  });
  WifiTicketsCompanion.insert({
    this.id = const Value.absent(),
    @required int price,
    @required int duration,
  })  : price = Value(price),
        duration = Value(duration);
  static Insertable<WifiTicket> custom({
    Expression<int> id,
    Expression<int> price,
    Expression<int> duration,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (price != null) 'price': price,
      if (duration != null) 'duration': duration,
    });
  }

  WifiTicketsCompanion copyWith(
      {Value<int> id, Value<int> price, Value<int> duration}) {
    return WifiTicketsCompanion(
      id: id ?? this.id,
      price: price ?? this.price,
      duration: duration ?? this.duration,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (duration.present) {
      map['duration'] = Variable<int>(duration.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('WifiTicketsCompanion(')
          ..write('id: $id, ')
          ..write('price: $price, ')
          ..write('duration: $duration')
          ..write(')'))
        .toString();
  }
}

class $WifiTicketsTable extends WifiTickets
    with TableInfo<$WifiTicketsTable, WifiTicket> {
  final GeneratedDatabase _db;
  final String _alias;
  $WifiTicketsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedIntColumn _price;
  @override
  GeneratedIntColumn get price => _price ??= _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _durationMeta = const VerificationMeta('duration');
  GeneratedIntColumn _duration;
  @override
  GeneratedIntColumn get duration => _duration ??= _constructDuration();
  GeneratedIntColumn _constructDuration() {
    return GeneratedIntColumn(
      'duration',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, price, duration];
  @override
  $WifiTicketsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'wifi_tickets';
  @override
  final String actualTableName = 'wifi_tickets';
  @override
  VerificationContext validateIntegrity(Insertable<WifiTicket> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('duration')) {
      context.handle(_durationMeta,
          duration.isAcceptableOrUnknown(data['duration'], _durationMeta));
    } else if (isInserting) {
      context.missing(_durationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  WifiTicket map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return WifiTicket.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $WifiTicketsTable createAlias(String alias) {
    return $WifiTicketsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProductsTable _products;
  $ProductsTable get products => _products ??= $ProductsTable(this);
  $ImpressionsTable _impressions;
  $ImpressionsTable get impressions => _impressions ??= $ImpressionsTable(this);
  $WifiTicketsTable _wifiTickets;
  $WifiTicketsTable get wifiTickets => _wifiTickets ??= $WifiTicketsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [products, impressions, wifiTickets];
}
