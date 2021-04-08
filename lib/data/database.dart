import 'package:moor/ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:moor/moor.dart';
import 'dart:io';

import 'dart:ffi';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3/open.dart';

part 'database.g.dart';

void main() {
  open.overrideFor(OperatingSystem.linux, _openOnWindows);

  final db = sqlite3.openInMemory();
  db.dispose();
}

DynamicLibrary _openOnWindows() {
  final script = File(Platform.script.toFilePath());
  final libraryNextToScript = File('${script.path}/sqlite3.dll');
  return DynamicLibrary.open(libraryNextToScript.path);
}

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 3, max: 50)();
  IntColumn get price => integer()();
  IntColumn get availale => integer()();
  IntColumn get sell => integer()();
  TextColumn get categorie => text()();
}

class Impressions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recto => integer()();
  IntColumn get copies => integer()();
}

class WifiTickets extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get price => integer()();
  IntColumn get duration => integer()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Products, Impressions, WifiTickets])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;

  // Products
  Future<List<Product>> getAllProduct() => select(products).get();

  Stream<List<Product>> watchAllProducts() => select(products).watch();

  Future insertProduct(ProductsCompanion product) {
    return (into(products).insert(product));
  }

  Future updateProduct(Product product) => update(products).replace(product);

  Future deleteProduct(Product product) => delete(products).delete(product);

  // Impressions
  Future<List<Impression>> getAllImpressions() => select(impressions).get();

  Stream<List<Impression>> watchAllImpressions() => select(impressions).watch();

  Future insertImpression(Impression impression) =>
      into(impressions).insert(impression);

  Future updateImpression(Impression impression) =>
      update(impressions).replace(impression);

  Future deleteImpression(Impression impression) =>
      delete(impressions).delete(impression);

  // WifiTickets
  Future<List<WifiTicket>> getAllWifitickets() => select(wifiTickets).get();

  Stream<List<WifiTicket>> watchAllWifiTickets() => select(wifiTickets).watch();

  Future insertWifiTicket(WifiTicket wifiTicket) =>
      into(wifiTickets).insert(wifiTicket);

  Future updateWifiTicket(WifiTicket wifiTicket) =>
      update(wifiTickets).replace(wifiTicket);

  Future deleteWifiTicket(WifiTicket wifiTicket) =>
      delete(wifiTickets).delete(wifiTicket);
}
