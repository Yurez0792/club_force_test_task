abstract class UseCase<T> {
  Future<T> call();
}

abstract class UseCaseWithParam<T, V> {
  Future<T> call(V value);
}
