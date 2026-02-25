import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.tourismPlace});

  final TourismPlace tourismPlace;

  final informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(tourismPlace.imageHeader),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    style: IconButton.styleFrom(backgroundColor: Colors.grey),
                  ),
                  Positioned(right: 0, top: 0, child: FavoriteIcon()),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Text(
                  tourismPlace.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Staatliches",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today),
                          Text(
                            tourismPlace.openDays,
                            textAlign: TextAlign.center,
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 8,
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            tourismPlace.openTime,
                            textAlign: TextAlign.center,
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 8,
                        children: [
                          Icon(Icons.monetization_on),
                          Text(
                            tourismPlace.ticketPrice,
                            textAlign: TextAlign.center,
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  tourismPlace.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 8,
                    children: [
                      for (final image in tourismPlace.imageUrls)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(image),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({super.key});

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
      color: Colors.red,
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
