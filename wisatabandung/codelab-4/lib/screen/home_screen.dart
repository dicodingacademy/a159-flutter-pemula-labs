import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';
import 'package:wisatabandung/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Wisata Bandung'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          if (maxWidth <= 600) {
            return TourismPlaceList();
          } else {
            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: TourismPlaceGrid(),
              ),
            );
          }
        },
      ),
    );
  }
}

class TourismPlaceGrid extends StatelessWidget {
  const TourismPlaceGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 350,
        childAspectRatio: 0.8,
      ),
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        final tourismPlace = tourismPlaceList[index];
        return TourismPlaceCardForGrid(
          tourismPlace: tourismPlace,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(tourismPlace: tourismPlace);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class TourismPlaceCardForGrid extends StatelessWidget {
  const TourismPlaceCardForGrid({
    super.key,
    required this.tourismPlace,
    required this.onTap,
  });

  final TourismPlace tourismPlace;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(tourismPlace.imageHeader, fit: BoxFit.cover),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      tourismPlace.name,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    Text(tourismPlace.location),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      itemCount: tourismPlaceList.length,
      itemBuilder: (context, index) {
        final tourismPlace = tourismPlaceList[index];
        return TourismPlaceCard(
          tourismPlace: tourismPlace,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(tourismPlace: tourismPlace);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class TourismPlaceCard extends StatelessWidget {
  const TourismPlaceCard({
    super.key,
    required this.tourismPlace,
    required this.onTap,
  });

  final TourismPlace tourismPlace;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Expanded(flex: 1, child: Image.asset(tourismPlace.imageHeader)),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      tourismPlace.name,
                      style: const TextStyle(fontSize: 16.0),
                    ),
                    Text(tourismPlace.location),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
