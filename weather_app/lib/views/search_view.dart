
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 1,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Search City",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Ubuntu', fontSize: 24),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              labelText: 'Search',
              labelStyle: TextStyle(fontSize: 20, fontFamily: 'Ubuntu'),
              suffixIcon: Icon(Icons.search),
              suffixIconColor: Colors.black,
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
