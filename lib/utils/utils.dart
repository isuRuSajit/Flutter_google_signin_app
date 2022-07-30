import 'package:google_signin_app/model/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        image: "shop1",
        name: "Book Shop\n",
        location: "colombo\n",
        title: "Tap to view product\n",
        description: "Between 2-4 days island wide delivery",
        subCategories: [],
      ),
      Category(
        image: "shop2",
        name: "Toy Shop\n",
        location: "malabe\n",
        title: "Tap to view product\n",
        description: "Between 2-4 days island wide delivery",
        subCategories: [],
      ),
      Category(
        image: "shop3",
        name: "Vegitable Shop\n",
        location: "rajagiriya\n",
        title: "Tap to view product\n",
        description: "Between 2-4 days island wide delivery",
        subCategories: [],
      ),
      Category(
        image: "shop4",
        name: "Coffe Shop\n",
        location: "moratuwa\n",
        title: "Tap to view product\n",
        description: "Between 3 days island wide delivery",
        subCategories: [],
      ),
      Category(
        image: "shop5",
        name: "Gift Shop\n",
        location: "kaduwela\n",
        title: "Tap to view product\n",
        description: "Between 2-4 days island wide delivery",
        subCategories: [],
      ),
    ];
  }
}
