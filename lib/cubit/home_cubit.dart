part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState()) {
    getNews();
  }

  NewsService newsService = NewsService();

  Future<void> getNews() async {
    emit(HomeLoadingState());
    dynamic response = await newsService.getNews();
    if (response is NewsModel) {
      emit(HomeCompleteState(response));
    }
    emit(HomeErrorState(response));
  }
}
