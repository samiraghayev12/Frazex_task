part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeInProgress extends HomeState{}

class HomeSuccess extends HomeState{
  final List<User> users;

  HomeSuccess(this.users);

  @override
  List<Object> get props => [users];

}

class HomeFailure extends HomeState{
final String message;

  HomeFailure(this.message);

  @override
  List<Object> get props => [message];
}
