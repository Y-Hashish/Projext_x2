class Food {
  final String? path;
  final String? name;
  final String? desc;
  final String? price;
  final String? rate;
  // the required inputs
  Food(
      {required this.path,
      required this.name,
      required this.desc,
      required this.price,
      required this.rate});
  // creating getters
  String? get _path => path;
  String? get _name => name;
  String? get _des => desc;
  String? get _price => price;
  String? get _rate => rate;
}
