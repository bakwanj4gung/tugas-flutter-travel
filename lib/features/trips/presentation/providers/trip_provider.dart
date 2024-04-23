import 'package:hive_flutter/hive_flutter.dart';
import 'package:travel_app/features/trips/data/datasources/trip_local_datasource.dart';
import 'package:travel_app/features/trips/data/models/trip_model.dart';

final tripLocalDataSourceProvider = Provider<TripLocalDataSource>((ref) {
  final Box<TripModel> tripBox = Hive.box('trips');
  return TripLocalDataSource(tripBox);
});

final 