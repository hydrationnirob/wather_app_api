class Weather {
  String? city;
  double? temp;
  int? pressure;
  int? humidity;
  double? windSpeed;
  double? feelsLike;

  Weather({this.city, this.temp, this.pressure, this.humidity, this.windSpeed});

  Weather.fromJson(Map<String, dynamic> json) {
    city = json['name'];
    temp = json['main']['temp'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    windSpeed = json['wind']['speed'];
    feelsLike = json['main']['feels_like'];
  }


}

