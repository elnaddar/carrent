import 'package:car_card/car_card.dart';
import 'package:carrent/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CarCard(
          carModel: CarModel(
              model: "Fortuner GR",
              distance: 870,
              fuelCapacity: 50,
              pricePerHour: 45),
        ),
      ),
    );
  }
}
