import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'index_stack_event.dart';
part 'index_stack_state.dart';

class IndexStackBloc extends Bloc<IndexStackEvent, IndexStackState> {
  IndexStackBloc() : super(IndexStackInitial()) {
    on<IndexStackEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<AfterPageEvent>((event, emit) {
      emit(IndexState(event.activindex));
    });
  }
}
