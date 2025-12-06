// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState()';
}


}

/// @nodoc
class $CartStateCopyWith<$Res>  {
$CartStateCopyWith(CartState _, $Res Function(CartState) __);
}


/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( CartItemsLoading value)?  cartItemsLoading,TResult Function( CartItemsSuccess value)?  cartItemsSuccess,TResult Function( CartItemsError value)?  cartItemsError,TResult Function( CartItemDeleting value)?  cartItemDeleting,TResult Function( CartItemDeleteSuccess value)?  cartItemDeleteSuccess,TResult Function( CartItemDeleteError value)?  cartItemDeleteError,TResult Function( CartItemCountUpdating value)?  cartItemCountUpdating,TResult Function( CartItemCountUpdateSuccess value)?  cartItemCountUpdateSuccess,TResult Function( CartItemCountUpdateError value)?  cartItemCountUpdateError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CartItemsLoading() when cartItemsLoading != null:
return cartItemsLoading(_that);case CartItemsSuccess() when cartItemsSuccess != null:
return cartItemsSuccess(_that);case CartItemsError() when cartItemsError != null:
return cartItemsError(_that);case CartItemDeleting() when cartItemDeleting != null:
return cartItemDeleting(_that);case CartItemDeleteSuccess() when cartItemDeleteSuccess != null:
return cartItemDeleteSuccess(_that);case CartItemDeleteError() when cartItemDeleteError != null:
return cartItemDeleteError(_that);case CartItemCountUpdating() when cartItemCountUpdating != null:
return cartItemCountUpdating(_that);case CartItemCountUpdateSuccess() when cartItemCountUpdateSuccess != null:
return cartItemCountUpdateSuccess(_that);case CartItemCountUpdateError() when cartItemCountUpdateError != null:
return cartItemCountUpdateError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( CartItemsLoading value)  cartItemsLoading,required TResult Function( CartItemsSuccess value)  cartItemsSuccess,required TResult Function( CartItemsError value)  cartItemsError,required TResult Function( CartItemDeleting value)  cartItemDeleting,required TResult Function( CartItemDeleteSuccess value)  cartItemDeleteSuccess,required TResult Function( CartItemDeleteError value)  cartItemDeleteError,required TResult Function( CartItemCountUpdating value)  cartItemCountUpdating,required TResult Function( CartItemCountUpdateSuccess value)  cartItemCountUpdateSuccess,required TResult Function( CartItemCountUpdateError value)  cartItemCountUpdateError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case CartItemsLoading():
return cartItemsLoading(_that);case CartItemsSuccess():
return cartItemsSuccess(_that);case CartItemsError():
return cartItemsError(_that);case CartItemDeleting():
return cartItemDeleting(_that);case CartItemDeleteSuccess():
return cartItemDeleteSuccess(_that);case CartItemDeleteError():
return cartItemDeleteError(_that);case CartItemCountUpdating():
return cartItemCountUpdating(_that);case CartItemCountUpdateSuccess():
return cartItemCountUpdateSuccess(_that);case CartItemCountUpdateError():
return cartItemCountUpdateError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( CartItemsLoading value)?  cartItemsLoading,TResult? Function( CartItemsSuccess value)?  cartItemsSuccess,TResult? Function( CartItemsError value)?  cartItemsError,TResult? Function( CartItemDeleting value)?  cartItemDeleting,TResult? Function( CartItemDeleteSuccess value)?  cartItemDeleteSuccess,TResult? Function( CartItemDeleteError value)?  cartItemDeleteError,TResult? Function( CartItemCountUpdating value)?  cartItemCountUpdating,TResult? Function( CartItemCountUpdateSuccess value)?  cartItemCountUpdateSuccess,TResult? Function( CartItemCountUpdateError value)?  cartItemCountUpdateError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CartItemsLoading() when cartItemsLoading != null:
return cartItemsLoading(_that);case CartItemsSuccess() when cartItemsSuccess != null:
return cartItemsSuccess(_that);case CartItemsError() when cartItemsError != null:
return cartItemsError(_that);case CartItemDeleting() when cartItemDeleting != null:
return cartItemDeleting(_that);case CartItemDeleteSuccess() when cartItemDeleteSuccess != null:
return cartItemDeleteSuccess(_that);case CartItemDeleteError() when cartItemDeleteError != null:
return cartItemDeleteError(_that);case CartItemCountUpdating() when cartItemCountUpdating != null:
return cartItemCountUpdating(_that);case CartItemCountUpdateSuccess() when cartItemCountUpdateSuccess != null:
return cartItemCountUpdateSuccess(_that);case CartItemCountUpdateError() when cartItemCountUpdateError != null:
return cartItemCountUpdateError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  cartItemsLoading,TResult Function( List<CartItem>? cartItemsDataList)?  cartItemsSuccess,TResult Function( ErrorHandler errorHandler)?  cartItemsError,TResult Function()?  cartItemDeleting,TResult Function()?  cartItemDeleteSuccess,TResult Function( ErrorHandler errorHandler)?  cartItemDeleteError,TResult Function()?  cartItemCountUpdating,TResult Function( UpdateItemCountResponseModel updateItemCountResponseModel)?  cartItemCountUpdateSuccess,TResult Function( ErrorHandler errorHandler)?  cartItemCountUpdateError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CartItemsLoading() when cartItemsLoading != null:
return cartItemsLoading();case CartItemsSuccess() when cartItemsSuccess != null:
return cartItemsSuccess(_that.cartItemsDataList);case CartItemsError() when cartItemsError != null:
return cartItemsError(_that.errorHandler);case CartItemDeleting() when cartItemDeleting != null:
return cartItemDeleting();case CartItemDeleteSuccess() when cartItemDeleteSuccess != null:
return cartItemDeleteSuccess();case CartItemDeleteError() when cartItemDeleteError != null:
return cartItemDeleteError(_that.errorHandler);case CartItemCountUpdating() when cartItemCountUpdating != null:
return cartItemCountUpdating();case CartItemCountUpdateSuccess() when cartItemCountUpdateSuccess != null:
return cartItemCountUpdateSuccess(_that.updateItemCountResponseModel);case CartItemCountUpdateError() when cartItemCountUpdateError != null:
return cartItemCountUpdateError(_that.errorHandler);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  cartItemsLoading,required TResult Function( List<CartItem>? cartItemsDataList)  cartItemsSuccess,required TResult Function( ErrorHandler errorHandler)  cartItemsError,required TResult Function()  cartItemDeleting,required TResult Function()  cartItemDeleteSuccess,required TResult Function( ErrorHandler errorHandler)  cartItemDeleteError,required TResult Function()  cartItemCountUpdating,required TResult Function( UpdateItemCountResponseModel updateItemCountResponseModel)  cartItemCountUpdateSuccess,required TResult Function( ErrorHandler errorHandler)  cartItemCountUpdateError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case CartItemsLoading():
return cartItemsLoading();case CartItemsSuccess():
return cartItemsSuccess(_that.cartItemsDataList);case CartItemsError():
return cartItemsError(_that.errorHandler);case CartItemDeleting():
return cartItemDeleting();case CartItemDeleteSuccess():
return cartItemDeleteSuccess();case CartItemDeleteError():
return cartItemDeleteError(_that.errorHandler);case CartItemCountUpdating():
return cartItemCountUpdating();case CartItemCountUpdateSuccess():
return cartItemCountUpdateSuccess(_that.updateItemCountResponseModel);case CartItemCountUpdateError():
return cartItemCountUpdateError(_that.errorHandler);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  cartItemsLoading,TResult? Function( List<CartItem>? cartItemsDataList)?  cartItemsSuccess,TResult? Function( ErrorHandler errorHandler)?  cartItemsError,TResult? Function()?  cartItemDeleting,TResult? Function()?  cartItemDeleteSuccess,TResult? Function( ErrorHandler errorHandler)?  cartItemDeleteError,TResult? Function()?  cartItemCountUpdating,TResult? Function( UpdateItemCountResponseModel updateItemCountResponseModel)?  cartItemCountUpdateSuccess,TResult? Function( ErrorHandler errorHandler)?  cartItemCountUpdateError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CartItemsLoading() when cartItemsLoading != null:
return cartItemsLoading();case CartItemsSuccess() when cartItemsSuccess != null:
return cartItemsSuccess(_that.cartItemsDataList);case CartItemsError() when cartItemsError != null:
return cartItemsError(_that.errorHandler);case CartItemDeleting() when cartItemDeleting != null:
return cartItemDeleting();case CartItemDeleteSuccess() when cartItemDeleteSuccess != null:
return cartItemDeleteSuccess();case CartItemDeleteError() when cartItemDeleteError != null:
return cartItemDeleteError(_that.errorHandler);case CartItemCountUpdating() when cartItemCountUpdating != null:
return cartItemCountUpdating();case CartItemCountUpdateSuccess() when cartItemCountUpdateSuccess != null:
return cartItemCountUpdateSuccess(_that.updateItemCountResponseModel);case CartItemCountUpdateError() when cartItemCountUpdateError != null:
return cartItemCountUpdateError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CartState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.initial()';
}


}




/// @nodoc


class CartItemsLoading implements CartState {
  const CartItemsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.cartItemsLoading()';
}


}




/// @nodoc


class CartItemsSuccess implements CartState {
  const CartItemsSuccess(final  List<CartItem>? cartItemsDataList): _cartItemsDataList = cartItemsDataList;
  

 final  List<CartItem>? _cartItemsDataList;
 List<CartItem>? get cartItemsDataList {
  final value = _cartItemsDataList;
  if (value == null) return null;
  if (_cartItemsDataList is EqualUnmodifiableListView) return _cartItemsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemsSuccessCopyWith<CartItemsSuccess> get copyWith => _$CartItemsSuccessCopyWithImpl<CartItemsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemsSuccess&&const DeepCollectionEquality().equals(other._cartItemsDataList, _cartItemsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cartItemsDataList));

@override
String toString() {
  return 'CartState.cartItemsSuccess(cartItemsDataList: $cartItemsDataList)';
}


}

/// @nodoc
abstract mixin class $CartItemsSuccessCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartItemsSuccessCopyWith(CartItemsSuccess value, $Res Function(CartItemsSuccess) _then) = _$CartItemsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CartItem>? cartItemsDataList
});




}
/// @nodoc
class _$CartItemsSuccessCopyWithImpl<$Res>
    implements $CartItemsSuccessCopyWith<$Res> {
  _$CartItemsSuccessCopyWithImpl(this._self, this._then);

  final CartItemsSuccess _self;
  final $Res Function(CartItemsSuccess) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cartItemsDataList = freezed,}) {
  return _then(CartItemsSuccess(
freezed == cartItemsDataList ? _self._cartItemsDataList : cartItemsDataList // ignore: cast_nullable_to_non_nullable
as List<CartItem>?,
  ));
}


}

/// @nodoc


class CartItemsError implements CartState {
  const CartItemsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemsErrorCopyWith<CartItemsError> get copyWith => _$CartItemsErrorCopyWithImpl<CartItemsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'CartState.cartItemsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $CartItemsErrorCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartItemsErrorCopyWith(CartItemsError value, $Res Function(CartItemsError) _then) = _$CartItemsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$CartItemsErrorCopyWithImpl<$Res>
    implements $CartItemsErrorCopyWith<$Res> {
  _$CartItemsErrorCopyWithImpl(this._self, this._then);

  final CartItemsError _self;
  final $Res Function(CartItemsError) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(CartItemsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class CartItemDeleting implements CartState {
  const CartItemDeleting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDeleting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.cartItemDeleting()';
}


}




/// @nodoc


class CartItemDeleteSuccess implements CartState {
  const CartItemDeleteSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDeleteSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.cartItemDeleteSuccess()';
}


}




/// @nodoc


class CartItemDeleteError implements CartState {
  const CartItemDeleteError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemDeleteErrorCopyWith<CartItemDeleteError> get copyWith => _$CartItemDeleteErrorCopyWithImpl<CartItemDeleteError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDeleteError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'CartState.cartItemDeleteError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $CartItemDeleteErrorCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartItemDeleteErrorCopyWith(CartItemDeleteError value, $Res Function(CartItemDeleteError) _then) = _$CartItemDeleteErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$CartItemDeleteErrorCopyWithImpl<$Res>
    implements $CartItemDeleteErrorCopyWith<$Res> {
  _$CartItemDeleteErrorCopyWithImpl(this._self, this._then);

  final CartItemDeleteError _self;
  final $Res Function(CartItemDeleteError) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(CartItemDeleteError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class CartItemCountUpdating implements CartState {
  const CartItemCountUpdating();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemCountUpdating);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CartState.cartItemCountUpdating()';
}


}




/// @nodoc


class CartItemCountUpdateSuccess implements CartState {
  const CartItemCountUpdateSuccess(this.updateItemCountResponseModel);
  

 final  UpdateItemCountResponseModel updateItemCountResponseModel;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCountUpdateSuccessCopyWith<CartItemCountUpdateSuccess> get copyWith => _$CartItemCountUpdateSuccessCopyWithImpl<CartItemCountUpdateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemCountUpdateSuccess&&(identical(other.updateItemCountResponseModel, updateItemCountResponseModel) || other.updateItemCountResponseModel == updateItemCountResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,updateItemCountResponseModel);

@override
String toString() {
  return 'CartState.cartItemCountUpdateSuccess(updateItemCountResponseModel: $updateItemCountResponseModel)';
}


}

/// @nodoc
abstract mixin class $CartItemCountUpdateSuccessCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartItemCountUpdateSuccessCopyWith(CartItemCountUpdateSuccess value, $Res Function(CartItemCountUpdateSuccess) _then) = _$CartItemCountUpdateSuccessCopyWithImpl;
@useResult
$Res call({
 UpdateItemCountResponseModel updateItemCountResponseModel
});




}
/// @nodoc
class _$CartItemCountUpdateSuccessCopyWithImpl<$Res>
    implements $CartItemCountUpdateSuccessCopyWith<$Res> {
  _$CartItemCountUpdateSuccessCopyWithImpl(this._self, this._then);

  final CartItemCountUpdateSuccess _self;
  final $Res Function(CartItemCountUpdateSuccess) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateItemCountResponseModel = null,}) {
  return _then(CartItemCountUpdateSuccess(
null == updateItemCountResponseModel ? _self.updateItemCountResponseModel : updateItemCountResponseModel // ignore: cast_nullable_to_non_nullable
as UpdateItemCountResponseModel,
  ));
}


}

/// @nodoc


class CartItemCountUpdateError implements CartState {
  const CartItemCountUpdateError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemCountUpdateErrorCopyWith<CartItemCountUpdateError> get copyWith => _$CartItemCountUpdateErrorCopyWithImpl<CartItemCountUpdateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemCountUpdateError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'CartState.cartItemCountUpdateError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $CartItemCountUpdateErrorCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory $CartItemCountUpdateErrorCopyWith(CartItemCountUpdateError value, $Res Function(CartItemCountUpdateError) _then) = _$CartItemCountUpdateErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$CartItemCountUpdateErrorCopyWithImpl<$Res>
    implements $CartItemCountUpdateErrorCopyWith<$Res> {
  _$CartItemCountUpdateErrorCopyWithImpl(this._self, this._then);

  final CartItemCountUpdateError _self;
  final $Res Function(CartItemCountUpdateError) _then;

/// Create a copy of CartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(CartItemCountUpdateError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
