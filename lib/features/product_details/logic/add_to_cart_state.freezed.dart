// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddToCartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState()';
}


}

/// @nodoc
class $AddToCartStateCopyWith<$Res>  {
$AddToCartStateCopyWith(AddToCartState _, $Res Function(AddToCartState) __);
}


/// Adds pattern-matching-related methods to [AddToCartState].
extension AddToCartStatePatterns on AddToCartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( AddingToCart value)?  addingToCart,TResult Function( AddToCartSuccess value)?  addToCartSuccess,TResult Function( AddToCartError value)?  addToCartError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddingToCart() when addingToCart != null:
return addingToCart(_that);case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that);case AddToCartError() when addToCartError != null:
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( AddingToCart value)  addingToCart,required TResult Function( AddToCartSuccess value)  addToCartSuccess,required TResult Function( AddToCartError value)  addToCartError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case AddingToCart():
return addingToCart(_that);case AddToCartSuccess():
return addToCartSuccess(_that);case AddToCartError():
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( AddingToCart value)?  addingToCart,TResult? Function( AddToCartSuccess value)?  addToCartSuccess,TResult? Function( AddToCartError value)?  addToCartError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case AddingToCart() when addingToCart != null:
return addingToCart(_that);case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that);case AddToCartError() when addToCartError != null:
return addToCartError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  addingToCart,TResult Function( AddToCartResponseModel addToCartResponseModel)?  addToCartSuccess,TResult Function( ErrorHandler errorHandler)?  addToCartError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddingToCart() when addingToCart != null:
return addingToCart();case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that.addToCartResponseModel);case AddToCartError() when addToCartError != null:
return addToCartError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  addingToCart,required TResult Function( AddToCartResponseModel addToCartResponseModel)  addToCartSuccess,required TResult Function( ErrorHandler errorHandler)  addToCartError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case AddingToCart():
return addingToCart();case AddToCartSuccess():
return addToCartSuccess(_that.addToCartResponseModel);case AddToCartError():
return addToCartError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  addingToCart,TResult? Function( AddToCartResponseModel addToCartResponseModel)?  addToCartSuccess,TResult? Function( ErrorHandler errorHandler)?  addToCartError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case AddingToCart() when addingToCart != null:
return addingToCart();case AddToCartSuccess() when addToCartSuccess != null:
return addToCartSuccess(_that.addToCartResponseModel);case AddToCartError() when addToCartError != null:
return addToCartError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddToCartState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState.initial()';
}


}




/// @nodoc


class AddingToCart implements AddToCartState {
  const AddingToCart();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddingToCart);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddToCartState.addingToCart()';
}


}




/// @nodoc


class AddToCartSuccess implements AddToCartState {
  const AddToCartSuccess(this.addToCartResponseModel);
  

 final  AddToCartResponseModel addToCartResponseModel;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartSuccessCopyWith<AddToCartSuccess> get copyWith => _$AddToCartSuccessCopyWithImpl<AddToCartSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartSuccess&&(identical(other.addToCartResponseModel, addToCartResponseModel) || other.addToCartResponseModel == addToCartResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,addToCartResponseModel);

@override
String toString() {
  return 'AddToCartState.addToCartSuccess(addToCartResponseModel: $addToCartResponseModel)';
}


}

/// @nodoc
abstract mixin class $AddToCartSuccessCopyWith<$Res> implements $AddToCartStateCopyWith<$Res> {
  factory $AddToCartSuccessCopyWith(AddToCartSuccess value, $Res Function(AddToCartSuccess) _then) = _$AddToCartSuccessCopyWithImpl;
@useResult
$Res call({
 AddToCartResponseModel addToCartResponseModel
});




}
/// @nodoc
class _$AddToCartSuccessCopyWithImpl<$Res>
    implements $AddToCartSuccessCopyWith<$Res> {
  _$AddToCartSuccessCopyWithImpl(this._self, this._then);

  final AddToCartSuccess _self;
  final $Res Function(AddToCartSuccess) _then;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addToCartResponseModel = null,}) {
  return _then(AddToCartSuccess(
null == addToCartResponseModel ? _self.addToCartResponseModel : addToCartResponseModel // ignore: cast_nullable_to_non_nullable
as AddToCartResponseModel,
  ));
}


}

/// @nodoc


class AddToCartError implements AddToCartState {
  const AddToCartError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartErrorCopyWith<AddToCartError> get copyWith => _$AddToCartErrorCopyWithImpl<AddToCartError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'AddToCartState.addToCartError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $AddToCartErrorCopyWith<$Res> implements $AddToCartStateCopyWith<$Res> {
  factory $AddToCartErrorCopyWith(AddToCartError value, $Res Function(AddToCartError) _then) = _$AddToCartErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$AddToCartErrorCopyWithImpl<$Res>
    implements $AddToCartErrorCopyWith<$Res> {
  _$AddToCartErrorCopyWithImpl(this._self, this._then);

  final AddToCartError _self;
  final $Res Function(AddToCartError) _then;

/// Create a copy of AddToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(AddToCartError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
