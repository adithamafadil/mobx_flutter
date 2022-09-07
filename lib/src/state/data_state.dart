import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.success(T data) = _DataStateSuccess<T>;
  const factory DataState.empty() = _DataStateEmpty<T>;
}
