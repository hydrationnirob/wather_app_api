class Weather {
  String? city;
  double? temp;
  int? pressure;
  int? humidity;
  double? windSpeed;
  double? feelsLike;
  String ? currentSky;
  String ? description;
  int ? cod;

  Weather({this.city, this.temp, this.pressure, this.humidity, this.windSpeed});

  Weather.fromJson(Map<String, dynamic> json) {
    city = json['name'];
    temp = json['main']['temp'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    windSpeed = json['wind']['speed'];
    feelsLike = json['main']['feels_like'];
    currentSky= json['weather'][0]['main'];
    description = json['weather'][0]['description'];
    cod = json['cod'];

  }


}

