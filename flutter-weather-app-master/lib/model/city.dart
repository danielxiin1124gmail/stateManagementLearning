import 'package:weatherflut/model/weather.dart';

class City {
  final String title;
  final int id;
  final List<Weather> weathers;

  City({
    required this.title,
    required this.id,
    required this.weathers,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "woeid": id,
        "weathers": weathers.map((e) => e.toJson()).toList(),
      };

  factory City.fromJson(Map<String, dynamic> map) {
    final myWeathers = map['weathers'];
    return City(
      id: map['woeid'],
      title: map['title'],
      weathers: myWeathers != null
          ? (myWeathers as List<dynamic>)
              .map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList()
          : [],
    );
  }

  City fromWeathers(List<Weather> weathers) {
    return City(
      id: id,
      title: title,
      weathers: weathers,
    );
  }
}
