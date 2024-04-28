import 'package:dartz/dartz.dart';
import 'package:ecommerce_c9_monday/features/signup/domain/entities/UserEntity.dart';

import '../../../../core/error/failuers.dart';
import '../../data/models/request_data.dart';

abstract class SignupRepo {
  Future<Either<Failures, UserEntity>> signUp(RequestData requestData);
}
