// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga_reader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MangaReaderState {
  int get currentPage => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;
  bool get isControlsVisible => throw _privateConstructorUsedError;
  List<String> get pages => throw _privateConstructorUsedError;

  /// Create a copy of MangaReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaReaderStateCopyWith<MangaReaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaReaderStateCopyWith<$Res> {
  factory $MangaReaderStateCopyWith(
          MangaReaderState value, $Res Function(MangaReaderState) then) =
      _$MangaReaderStateCopyWithImpl<$Res, MangaReaderState>;
  @useResult
  $Res call(
      {int currentPage,
      double scale,
      bool isControlsVisible,
      List<String> pages});
}

/// @nodoc
class _$MangaReaderStateCopyWithImpl<$Res, $Val extends MangaReaderState>
    implements $MangaReaderStateCopyWith<$Res> {
  _$MangaReaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? scale = null,
    Object? isControlsVisible = null,
    Object? pages = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      isControlsVisible: null == isControlsVisible
          ? _value.isControlsVisible
          : isControlsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaReaderStateImplCopyWith<$Res>
    implements $MangaReaderStateCopyWith<$Res> {
  factory _$$MangaReaderStateImplCopyWith(_$MangaReaderStateImpl value,
          $Res Function(_$MangaReaderStateImpl) then) =
      __$$MangaReaderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentPage,
      double scale,
      bool isControlsVisible,
      List<String> pages});
}

/// @nodoc
class __$$MangaReaderStateImplCopyWithImpl<$Res>
    extends _$MangaReaderStateCopyWithImpl<$Res, _$MangaReaderStateImpl>
    implements _$$MangaReaderStateImplCopyWith<$Res> {
  __$$MangaReaderStateImplCopyWithImpl(_$MangaReaderStateImpl _value,
      $Res Function(_$MangaReaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaReaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? scale = null,
    Object? isControlsVisible = null,
    Object? pages = null,
  }) {
    return _then(_$MangaReaderStateImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
      isControlsVisible: null == isControlsVisible
          ? _value.isControlsVisible
          : isControlsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MangaReaderStateImpl implements _MangaReaderState {
  const _$MangaReaderStateImpl(
      {this.currentPage = 0,
      this.scale = 1.0,
      this.isControlsVisible = true,
      final List<String> pages = const []})
      : _pages = pages;

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final double scale;
  @override
  @JsonKey()
  final bool isControlsVisible;
  final List<String> _pages;
  @override
  @JsonKey()
  List<String> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  String toString() {
    return 'MangaReaderState(currentPage: $currentPage, scale: $scale, isControlsVisible: $isControlsVisible, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaReaderStateImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.scale, scale) || other.scale == scale) &&
            (identical(other.isControlsVisible, isControlsVisible) ||
                other.isControlsVisible == isControlsVisible) &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage, scale,
      isControlsVisible, const DeepCollectionEquality().hash(_pages));

  /// Create a copy of MangaReaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaReaderStateImplCopyWith<_$MangaReaderStateImpl> get copyWith =>
      __$$MangaReaderStateImplCopyWithImpl<_$MangaReaderStateImpl>(
          this, _$identity);
}

abstract class _MangaReaderState implements MangaReaderState {
  const factory _MangaReaderState(
      {final int currentPage,
      final double scale,
      final bool isControlsVisible,
      final List<String> pages}) = _$MangaReaderStateImpl;

  @override
  int get currentPage;
  @override
  double get scale;
  @override
  bool get isControlsVisible;
  @override
  List<String> get pages;

  /// Create a copy of MangaReaderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaReaderStateImplCopyWith<_$MangaReaderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
