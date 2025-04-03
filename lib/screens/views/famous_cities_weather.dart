import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../models/famous_city.dart';
import '../widgets/city_weather_tile.dart';

class FamousCitiesWeather extends StatelessWidget {
  const FamousCitiesWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: famousCities.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        final city = famousCities[index];

        return InkWell(
          onTap: () {
            context.go("/weather-details", extra: city.name);
          },
          child: CityWeatherTile(
            index: index,
            city: city,
          ),
        );
      },
    );
  }
}
