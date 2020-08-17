import 'package:mediumcart/services/data.dart';
import 'package:rxdart/subjects.dart';

class Data {
  static BehaviorSubject<List<ProductCardType>> newestOffer =
      BehaviorSubject<List<ProductCardType>>();
}

class Tools {
  static getNewestOffer() {
    Data.newestOffer.add([
      ProductCardType(
        id: "hello",
        name:
            "Apple Smartwatch Series 1 42 mili 42MM Apple Smartwatch Series 1 42 mili 42MM",
        originalPrice: 1299,
        discountPrice: 299,
        images: [],
        manufacturer: "Apple INC",
        about:
            "Brand new factory sealed in retail box Series 1 Apple watch. work with iPhone 5 or later, not compatible with Android phone",
        starRating: 4.5,
        reviews: [],
      ),
      ProductCardType(
        id: "hello",
        name: "Apple Smartwatch Series 1 42 mili 42MM",
        originalPrice: 1299,
        discountPrice: 299,
        images: [],
        manufacturer: "Apple INC",
        about:
            "Brand new factory sealed in retail box Series 1 Apple watch. work with iPhone 5 or later, not compatible with Android phone",
        starRating: 4.5,
        reviews: [],
      ),
    ]);
  }

  static getData() {
    Tools.getNewestOffer();
  }
}
