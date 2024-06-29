import 'package:carrent/firebase_options.dart';
import 'package:data/models.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

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
