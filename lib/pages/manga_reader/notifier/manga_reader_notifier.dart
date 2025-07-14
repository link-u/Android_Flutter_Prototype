import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../state/manga_reader_state.dart';

class MangaReaderNotifier extends StateNotifier<MangaReaderState> {
  MangaReaderNotifier() : super(const MangaReaderState());

  void setPages(List<String> pages) {
    state = state.copyWith(pages: pages);
  }

  void nextPage() {
    if (state.currentPage < state.pages.length - 1) {
      state = state.copyWith(currentPage: state.currentPage + 1);
    }
  }

  void previousPage() {
    if (state.currentPage > 0) {
      state = state.copyWith(currentPage: state.currentPage - 1);
    }
  }

  void goToPage(int page) {
    if (page >= 0 && page < state.pages.length) {
      state = state.copyWith(currentPage: page);
    }
  }

  void setScale(double scale) {
    state = state.copyWith(scale: scale.clamp(0.5, 3.0));
  }

  void toggleControlsVisibility() {
    state = state.copyWith(isControlsVisible: !state.isControlsVisible);
  }
} 