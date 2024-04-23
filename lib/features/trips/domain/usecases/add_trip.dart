import 'package:travel_app/features/trips/domain/entities/trip.dart';
import 'package:travel_app/features/trips/domain/repositories/trip_repositories.dart';

class AddTrip {
  final TripRepository repository;

  AddTrip(this.repository);

  Future<void> call(Trip trip) {
    return repository.addTrip(trip);
  }
}