import 'package:car_card/car_card.dart';
import 'package:car_card/src/widgets/text_with_asset_icon.dart';
import 'package:flutter/material.dart';
import 'package:utils/utils.dart';

/// A widget that displays information about a [CarModel].
///
/// This includes the model name, an image (if available),
/// distance traveled, fuel capacity, and price per hour.
class CarCard extends StatelessWidget {
  /// Creates a new [CarCard] instance.
  ///
  /// Requires a [CarModel] to display its details.
  const CarCard({
    required this.carModel,
    super.key,
  });

  /// The car model data to display.
  final CarModel carModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (carModel.img != null) carModel.img!,
              Text(
                carModel.model,
                style: context.theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextWithAssetIcon(
                        assetPath: 'assets/gps.png',
                        text: '${carModel.distance.toStringAsFixed(0)}km',
                      ),
                      const SizedBox.square(dimension: 8),
                      TextWithAssetIcon(
                        assetPath: 'assets/pump.png',
                        text: '${carModel.fuelCapacity.toStringAsFixed(0)}L',
                      ),
                    ],
                  ),
                  Text('\$${carModel.pricePerHour.toStringAsFixed(2)}/h'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
