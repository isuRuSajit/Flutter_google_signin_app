class Category {
  String image;
  String name;
  String location;
  String title;
  String description;
  List<Category> subCategories;

  Category(
      {required this.image,
      required this.name,
      required this.location,
      required this.title,
      required this.description,
      required this.subCategories});
}
