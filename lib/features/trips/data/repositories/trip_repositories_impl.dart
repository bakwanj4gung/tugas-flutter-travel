import 'package:dartz/dartz.dart';
import 'package:travel_app/core/error/failures.dart';
import 'package:travel_app/features/trips/data/datasources/trip_local_datasource.dart';
import 'package:travel_app/features/trips/data/models/trip_model.dart';
import 'package:travel_app/features/trips/domain/entities/trip.dart';
import 'package:travel_app/features/trips/domain/repositories/trip_repositories.dart';


class TripRepositoryImpl implements TripRepository {
  final TripLocalDataSource localDataSource;

  TripRepositoryImpl(this.localDataSource);

  @override
  Future<void> AddTrip(Trip trip) async {
    Future tripModel = TripModel.fromEntity(trip);
    localDataSource.addTrip(tripModel);
  }

  @override
  Future<void> deleteTrip(int index) async {
    localDataSource.deleteTrip(index);
  }

  @override
  Future<Either<Failure, List<Trip>>> GetTrips() async {
    try {
      final tripModels = localDataSource.getTrips();
      List<Trip> res = tripModels.map((model) => model.toEntity()).toList();
    } catch (error){
      return Left(SomeSpecificError(error.toString()));
    }
  }
  }