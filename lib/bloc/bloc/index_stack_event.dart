part of 'index_stack_bloc.dart';

@immutable
abstract class IndexStackEvent {}

class AfterPageEvent extends IndexStackEvent {
  int activindex;
  AfterPageEvent(this.activindex);
}
