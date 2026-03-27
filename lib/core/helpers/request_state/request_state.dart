import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<T> with _$RequestState<T> {
  const factory RequestState.initial() = InitialState<T>;
  const factory RequestState.loading() = LoadingState<T>;
  const factory RequestState.success(T data) = SuccessState<T>;
  const factory RequestState.error(String message) = ErrorState<T>;
}