import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_confirmation_state.freezed.dart';

@freezed
class EmailConfirmationState<T> with _$EmailConfirmationState<T> {
  const factory EmailConfirmationState.initial() = _Initial;
  const factory EmailConfirmationState.loading() = Loading;
  const factory EmailConfirmationState.success(T data) = Success<T>;
  const factory EmailConfirmationState.error({required String error}) = Error;
}
