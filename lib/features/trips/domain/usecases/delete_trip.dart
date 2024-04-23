
import 'package:travel_app/features/trips/domain/repositories/trip_repositories.dart';

class DeleteTrip {
  final TripRepository repository;

  DeleteTrip(this.repository);

  Future<void> call(int index) {
    return repository.deleteTrip(index);
  }
}