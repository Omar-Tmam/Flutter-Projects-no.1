import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                    primarySwatch: getWeatherColor(
                        BlocProvider.of<GetWeatherCubit>(context)
                            .weatherModel
                            ?.weatherCondition),
                    useMaterial3: false),
                debugShowCheckedModeBanner: false,
                home: HomeView(),
              );
            },
          ),
        ));
  }
}

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) {
    return Colors.blueGrey;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.amber; // مشمس
    case 'Partly cloudy':
      return Colors.blueGrey; // غائم جزئي
    case 'Cloudy':
      return Colors.grey; // غائم
    case 'Overcast':
      return Colors.blueGrey; // غائم كليًا
    case 'Mist':
    case 'Fog':
      return Colors.cyan; // ضباب
    case 'Freezing fog':
      return Colors.teal; // ضباب متجمد
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
      return Colors.blue; // أمطار خفيفة
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
      return Colors.indigo; // أمطار متوسطة
    case 'Heavy rain':
    case 'Torrential rain shower':
      return Colors.deepPurple; // أمطار غزيرة
    case 'Patchy freezing drizzle possible':
    case 'Light drizzle':
    case 'Patchy light drizzle':
      return Colors.grey; // رذاذ خفيف
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
      return Colors.blueGrey; // رذاذ متجمد
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
      return Colors.blueGrey; // أمطار متجمدة
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
      return Colors.purple; // صقيع خفيف إلى متوسط
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Patchy light snow':
      return Colors.indigo; // ثلوج خفيفة
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
      return Colors.blueGrey; // ثلوج كثيفة
    case 'Blizzard':
      return Colors.red; // عاصفة ثلجية
    case 'Blowing snow':
      return Colors.deepPurple; // ثلوج متطايرة
    case 'Ice pellets':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.teal; // حبيبات جليدية
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.purple; // أمطار مع عواصف رعدية
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple; // ثلوج مع عواصف رعدية
    default:
      return Colors.blueGrey; // حالة افتراضية
  }
}
