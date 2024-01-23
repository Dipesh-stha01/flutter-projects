part of 'counter_bloc.dart';

sealed class CounterEvent {}

//this is event
//naming convention = blocname+functionname
final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}
