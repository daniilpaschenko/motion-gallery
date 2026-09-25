import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  // storage
  const factory Failure.storage() = StorageFailure;

  // api
  const factory Failure.network() = NetworkFailure;
  const factory Failure.server() = ServerFailure;
  const factory Failure.notFound() = NotFoundFailure;

  // unexpected
  const factory Failure.unexpected(String message) = UnexpectedFailure;
}