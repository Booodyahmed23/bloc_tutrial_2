part of 'pizza_bloc.dart';

@immutable
sealed class PizzaState {}

final class PizzaInitial extends PizzaState {}

final class PizzaLoaded extends PizzaState {
  final List<Pizza> pizzas;

   PizzaLoaded({required this.pizzas});

  @override
  int get hashCode => pizzas.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PizzaLoaded &&
        other.pizzas == pizzas;
  }
}
