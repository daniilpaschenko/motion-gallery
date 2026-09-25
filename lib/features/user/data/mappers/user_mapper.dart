import '../models/user.dart';
import '../../domain/entities/user_entity.dart';

extension UserMapper on User {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
    );
  }
}