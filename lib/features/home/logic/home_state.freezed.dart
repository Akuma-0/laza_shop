// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ProductsLoading value)?  productsLoading,TResult Function( ProductsSuccess value)?  productsSuccess,TResult Function( ProductsError value)?  productsError,TResult Function( CategoriesLoading value)?  categoriesLoading,TResult Function( CategoriesSuccess value)?  categoriesSuccess,TResult Function( CategoriesError value)?  categoriesError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ProductsLoading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsError() when productsError != null:
return productsError(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesError() when categoriesError != null:
return categoriesError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ProductsLoading value)  productsLoading,required TResult Function( ProductsSuccess value)  productsSuccess,required TResult Function( ProductsError value)  productsError,required TResult Function( CategoriesLoading value)  categoriesLoading,required TResult Function( CategoriesSuccess value)  categoriesSuccess,required TResult Function( CategoriesError value)  categoriesError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ProductsLoading():
return productsLoading(_that);case ProductsSuccess():
return productsSuccess(_that);case ProductsError():
return productsError(_that);case CategoriesLoading():
return categoriesLoading(_that);case CategoriesSuccess():
return categoriesSuccess(_that);case CategoriesError():
return categoriesError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ProductsLoading value)?  productsLoading,TResult? Function( ProductsSuccess value)?  productsSuccess,TResult? Function( ProductsError value)?  productsError,TResult? Function( CategoriesLoading value)?  categoriesLoading,TResult? Function( CategoriesSuccess value)?  categoriesSuccess,TResult? Function( CategoriesError value)?  categoriesError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ProductsLoading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsError() when productsError != null:
return productsError(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesError() when categoriesError != null:
return categoriesError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  productsLoading,TResult Function( List<Product?>? productsDataList)?  productsSuccess,TResult Function( ErrorHandler errorHandler)?  productsError,TResult Function()?  categoriesLoading,TResult Function( List<Category?>? categoriesDataList)?  categoriesSuccess,TResult Function( ErrorHandler errorHandler)?  categoriesError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ProductsLoading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.productsDataList);case ProductsError() when productsError != null:
return productsError(_that.errorHandler);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categoriesDataList);case CategoriesError() when categoriesError != null:
return categoriesError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  productsLoading,required TResult Function( List<Product?>? productsDataList)  productsSuccess,required TResult Function( ErrorHandler errorHandler)  productsError,required TResult Function()  categoriesLoading,required TResult Function( List<Category?>? categoriesDataList)  categoriesSuccess,required TResult Function( ErrorHandler errorHandler)  categoriesError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ProductsLoading():
return productsLoading();case ProductsSuccess():
return productsSuccess(_that.productsDataList);case ProductsError():
return productsError(_that.errorHandler);case CategoriesLoading():
return categoriesLoading();case CategoriesSuccess():
return categoriesSuccess(_that.categoriesDataList);case CategoriesError():
return categoriesError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  productsLoading,TResult? Function( List<Product?>? productsDataList)?  productsSuccess,TResult? Function( ErrorHandler errorHandler)?  productsError,TResult? Function()?  categoriesLoading,TResult? Function( List<Category?>? categoriesDataList)?  categoriesSuccess,TResult? Function( ErrorHandler errorHandler)?  categoriesError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ProductsLoading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.productsDataList);case ProductsError() when productsError != null:
return productsError(_that.errorHandler);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categoriesDataList);case CategoriesError() when categoriesError != null:
return categoriesError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class ProductsLoading implements HomeState {
  const ProductsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.productsLoading()';
}


}




/// @nodoc


class ProductsSuccess implements HomeState {
  const ProductsSuccess(final  List<Product?>? productsDataList): _productsDataList = productsDataList;
  

 final  List<Product?>? _productsDataList;
 List<Product?>? get productsDataList {
  final value = _productsDataList;
  if (value == null) return null;
  if (_productsDataList is EqualUnmodifiableListView) return _productsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSuccessCopyWith<ProductsSuccess> get copyWith => _$ProductsSuccessCopyWithImpl<ProductsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSuccess&&const DeepCollectionEquality().equals(other._productsDataList, _productsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productsDataList));

@override
String toString() {
  return 'HomeState.productsSuccess(productsDataList: $productsDataList)';
}


}

/// @nodoc
abstract mixin class $ProductsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ProductsSuccessCopyWith(ProductsSuccess value, $Res Function(ProductsSuccess) _then) = _$ProductsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Product?>? productsDataList
});




}
/// @nodoc
class _$ProductsSuccessCopyWithImpl<$Res>
    implements $ProductsSuccessCopyWith<$Res> {
  _$ProductsSuccessCopyWithImpl(this._self, this._then);

  final ProductsSuccess _self;
  final $Res Function(ProductsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productsDataList = freezed,}) {
  return _then(ProductsSuccess(
freezed == productsDataList ? _self._productsDataList : productsDataList // ignore: cast_nullable_to_non_nullable
as List<Product?>?,
  ));
}


}

/// @nodoc


class ProductsError implements HomeState {
  const ProductsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsErrorCopyWith<ProductsError> get copyWith => _$ProductsErrorCopyWithImpl<ProductsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.productsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $ProductsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ProductsErrorCopyWith(ProductsError value, $Res Function(ProductsError) _then) = _$ProductsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$ProductsErrorCopyWithImpl<$Res>
    implements $ProductsErrorCopyWith<$Res> {
  _$ProductsErrorCopyWithImpl(this._self, this._then);

  final ProductsError _self;
  final $Res Function(ProductsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(ProductsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class CategoriesLoading implements HomeState {
  const CategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.categoriesLoading()';
}


}




/// @nodoc


class CategoriesSuccess implements HomeState {
  const CategoriesSuccess(final  List<Category?>? categoriesDataList): _categoriesDataList = categoriesDataList;
  

 final  List<Category?>? _categoriesDataList;
 List<Category?>? get categoriesDataList {
  final value = _categoriesDataList;
  if (value == null) return null;
  if (_categoriesDataList is EqualUnmodifiableListView) return _categoriesDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSuccessCopyWith<CategoriesSuccess> get copyWith => _$CategoriesSuccessCopyWithImpl<CategoriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSuccess&&const DeepCollectionEquality().equals(other._categoriesDataList, _categoriesDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoriesDataList));

@override
String toString() {
  return 'HomeState.categoriesSuccess(categoriesDataList: $categoriesDataList)';
}


}

/// @nodoc
abstract mixin class $CategoriesSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CategoriesSuccessCopyWith(CategoriesSuccess value, $Res Function(CategoriesSuccess) _then) = _$CategoriesSuccessCopyWithImpl;
@useResult
$Res call({
 List<Category?>? categoriesDataList
});




}
/// @nodoc
class _$CategoriesSuccessCopyWithImpl<$Res>
    implements $CategoriesSuccessCopyWith<$Res> {
  _$CategoriesSuccessCopyWithImpl(this._self, this._then);

  final CategoriesSuccess _self;
  final $Res Function(CategoriesSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoriesDataList = freezed,}) {
  return _then(CategoriesSuccess(
freezed == categoriesDataList ? _self._categoriesDataList : categoriesDataList // ignore: cast_nullable_to_non_nullable
as List<Category?>?,
  ));
}


}

/// @nodoc


class CategoriesError implements HomeState {
  const CategoriesError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesErrorCopyWith<CategoriesError> get copyWith => _$CategoriesErrorCopyWithImpl<CategoriesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.categoriesError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $CategoriesErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CategoriesErrorCopyWith(CategoriesError value, $Res Function(CategoriesError) _then) = _$CategoriesErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$CategoriesErrorCopyWithImpl<$Res>
    implements $CategoriesErrorCopyWith<$Res> {
  _$CategoriesErrorCopyWithImpl(this._self, this._then);

  final CategoriesError _self;
  final $Res Function(CategoriesError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(CategoriesError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
