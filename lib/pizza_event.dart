part of 'pizza_bloc.dart';

abstract class PizzaEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Equatable {
}

class LoadPizzaCounter extends PizzaEvent {}

class AddPizza extends PizzaEvent { // Updated to CamelCase
  final Pizza pizza;

   AddPizza(this.pizza);

  @override
  List<Object> get props => [pizza];
}

class RemovePizza extends PizzaEvent {
  final Pizza pizza;

  RemovePizza(this.pizza);

  @override
  List<Object> get props => [pizza];
}
