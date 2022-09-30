class model {
  late int id;
  late String name;
  late String email;

  model({required this.id, required this.name, required this.email});

  model.frommap();
}
