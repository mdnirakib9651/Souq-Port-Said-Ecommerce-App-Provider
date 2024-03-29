class PopularDioModel {
  PopularDioModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
  late final int id;
  late final String title;
  late final dynamic price;
  late final String description;
  late final String category;
  late final String image;
  late final Rating rating;

  PopularDioModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    category = json['category'];
    image = json['image'];
    rating = Rating.fromJson(json['rating']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['title'] = title;
    _data['price'] = price;
    _data['description'] = description;
    _data['category'] = category;
    _data['image'] = image;
    _data['rating'] = rating.toJson();
    return _data;
  }

  @override
  String toString() {
    return 'ProductModel{id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating}';
  }
}

class Rating {
  Rating({
    required this.rate,
    required this.count,
  });
  late final dynamic rate;
  late final dynamic count;

  Rating.fromJson(Map<String, dynamic> json){
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rate'] = rate;
    _data['count'] = count;
    return _data;
  }

  @override
  String toString() {
    return 'Rating{rate: $rate, count: $count}';
  }
}