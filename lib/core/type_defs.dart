import 'package:fpdart/fpdart.dart';
import 'package:flutterfeed/core/failure.dart';

typedef FutureEither<T> = Future<Either<failure, T>>;
typedef FutureEitherVoid = FutureEither<void>;