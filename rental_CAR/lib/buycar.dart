import 'package:flutter/material.dart';

class SellCar {
  final String modelName;
  final double pricePerDay;
  final String imageUrl;

  SellCar({
    required this.modelName,
    required this.pricePerDay,
    required this.imageUrl,
  });
}

class BuyCarScreen extends StatefulWidget {
  @override
  _BuyCarScreenState createState() => _BuyCarScreenState();
}

class _BuyCarScreenState extends State<BuyCarScreen> {
  List<SellCar> _cars = [
    SellCar(
      modelName: 'Toyota Innova',
      pricePerDay: 2000,
      imageUrl: 'images/mc.jpg',
    ),
    SellCar(
      modelName: 'Ford Mustang GT',
      pricePerDay: 4000,
      imageUrl: 'images/suv.jpg',
    ),
    SellCar(
      modelName: 'Porsche 911 Carrera S',
      pricePerDay: 1200,
      imageUrl: 'images/truck.jpg',
    ),
    SellCar(
      modelName: 'Picanto',
      pricePerDay: 1000,
      imageUrl: 'images/picanto.jpg',
    ),
    SellCar(
      modelName: 'Suzuki Ertiga',
      pricePerDay: 2500,
      imageUrl: 'images/ertiga.jpg',
    ),
    SellCar(
      modelName: 'Suzuki Mirage',
      pricePerDay: 1000,
      imageUrl: 'images/mirage.jpg',
    ),
    SellCar(
      modelName: 'mini cooper',
      pricePerDay: 700,
      imageUrl: 'images/mc.jpg',
    ),
    SellCar(
      modelName: 'Mitsubishi Montero Sport',
      pricePerDay: 2000,
      imageUrl: 'images/montero.jpg',
    ),
    SellCar(
      modelName: 'Toyota Veloz',
      pricePerDay: 1000,
      imageUrl: 'images/veloz.jpg',
    ),
    SellCar(
      modelName: 'Toyota Vios',
      pricePerDay: 1800,
      imageUrl: 'images/vios.jpg',
    ),
    SellCar(
      modelName: 'Toyota Wigo',
      pricePerDay: 1000,
      imageUrl: 'images/wigo.jpg',
    ),

  ];

  double _totalPrice = 0;

  void _addToCar(double price) {
    setState(() {
      _totalPrice += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Car'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _cars.length,
              itemBuilder: (BuildContext context, int index) {
                final car = _cars[index];
                return ListTile(
                  leading: Image.asset(
                    car.imageUrl,
                    width: 48,
                    height: 48,
                  ),
                  title: Text(car.modelName),
                  subtitle: Text(
                    'Price per day: \$${car.pricePerDay.toStringAsFixed(2)}',
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      _addToCar(car.pricePerDay);
                    },
                    child: Text('Add to Car'),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Total: \$${_totalPrice.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
