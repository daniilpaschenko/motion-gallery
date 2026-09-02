import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart'; // ==, hashCode, copyWith

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
  }) = _User;
}