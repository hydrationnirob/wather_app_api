import 'package:flutter/material.dart';


String formatTime(DateTime time) {
  String period = 'AM';
  int hour = time.hour;
  int minute = time.minute;

  if (hour >= 12) {
    period = 'PM';
    if (hour > 12) {
      hour -= 12;
    }
  }

  String formattedHour = hour.toString().padLeft(2, '0');
  String formattedMinute = minute.toString().padLeft(2, '0');

  return '$formattedHour:$formattedMinute $period';
}

Widget UpdateWeather(String image, String temperature, String location, currentSky,currentSkyDis) {
  return  Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(image, width: 150, height: 150,),
        const SizedBox(height: 20,),
        Text("${temperature}°C", style: const TextStyle(fontSize: 40,color: Colors.white),),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 20,color: Colors.white,),
            const SizedBox(
              width: 10,
            ),
            Text(location, style: const TextStyle(fontSize: 20,color: Colors.white),),

          ]

        ),
        const SizedBox(height: 10,),
        Text("Last Updated: ${formatTime(DateTime.now())}", style: TextStyle(fontSize: 20, color: Colors.white)),

        const SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(currentSky, style: const TextStyle(fontSize: 20,color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(currentSkyDis, style: const TextStyle(fontSize: 20,color: Colors.white),),
            )
          ]
        )


      ]
    )
  );
}

Widget AdditionalInfo (String wide , String humanity, String realFeel, String pressure, String MaxTemp, String MinTemp) {
  return  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Max Temp -> ${MaxTemp}°C", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.thermostat, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text("Min Temp -> ${MinTemp}°C", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.thermostat, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
      color: Colors.transparent,
      child: SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Wind Speed -> ${wide}", style: const TextStyle(fontSize: 20,color: Colors.white),),
              const Icon(Icons.wind_power, size: 20,color: Colors.white,),
            ]
          )
        ),
      )
    ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Humanity -> ${humanity}", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.hotel_outlined, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Real Feel -> ${realFeel}°C", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.person_off, size: 20,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),
        Card(
            color: Colors.transparent,
            child: SizedBox(
              height: 50,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pressure -> ${pressure}", style: const TextStyle(fontSize: 20,color: Colors.white),),
                        const Icon(Icons.window, size: 25,color: Colors.white,),
                      ]
                  )
              ),
            )
        ),


      ]
    ),
  );












}