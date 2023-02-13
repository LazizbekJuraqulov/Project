part of 'index_stack_bloc.dart';

@immutable
abstract class IndexStackState {}

class IndexStackInitial extends IndexStackState {}

class IndexState extends IndexStackState {
  int activeIndex;
  IndexState(this.activeIndex);
}
