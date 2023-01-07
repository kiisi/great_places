import 'package:flutter/material.dart';
import 'package:great_places/screens/add_place_screen.dart';
import 'package:great_places/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import 'package:great_places/providers/great_places.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          colorScheme: const ColorScheme.light().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber,
          ),
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
        },
      ),
    );
  }
}
// indigo amber