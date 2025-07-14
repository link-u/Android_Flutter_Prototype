import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga_reader_state.freezed.dart';

@freezed
class MangaReaderState with _$MangaReaderState {
  const factory MangaReaderState({
    @Default(0) int currentPage,
    @Default(1.0) double scale,
    @Default(true) bool isControlsVisible,
    @Default([]) List<String> pages,
  }) = _MangaReaderState;
} 