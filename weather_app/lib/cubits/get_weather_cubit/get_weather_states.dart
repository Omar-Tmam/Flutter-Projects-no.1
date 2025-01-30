import 'package:weather_app/models/weather_model.dart';

class WeatherState{}

class InitialState extends WeatherState{}

class LoadedWeatherState extends WeatherState{
  final WeatherModel weatherModel;

  LoadedWeatherState(this.weatherModel);
}

class FaliureWeatherState extends WeatherState{
  final String errMessage;

  FaliureWeatherState(this.errMessage);
}
