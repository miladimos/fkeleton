class IsarService {
  IsarService() {
    db = openDB();
  }

  late Future<Isar> db;

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return isar.open([], directory: dir.path);
    }
    return Future.value(isar.getInstance());
  }

  Future<int> insert() async {
    final isar = await db;
    isar.
  }
}
