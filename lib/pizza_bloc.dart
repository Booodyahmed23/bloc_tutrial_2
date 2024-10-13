import 'package:bloc/bloc.dart';
import 'package:bloc_tutrial/models/pizza_model.dart';
import 'package:meta/meta.dart';

part 'pizza_event.dart';
part 'pizza_state.dart';

class PizzaBloc extends Bloc<PizzaEvent, PizzaState> {
  PizzaBloc() : super(PizzaInitial()) {
   on<LoadPizzaCounter>(
       (event,emit) async {
         await Future <void>.delayed (const Duration(seconds: 1));
   emit( PizzaLoaded(pizzas: const <Pizza>[]));
       }
   );
   on<AddPizza>(
       (event,emit){
         if (state is PizzaLoaded){
           final state = this.state as PizzaLoaded;
          emit(
            PizzaLoaded(
              pizzas: List.from(state.pizzas)..add(event.pizza),
            ),
          );
         }  
       },
   );
   on<RemovePizza>(
       (event,emit) {
         if (state is PizzaLoaded) {
           final state = this.state as PizzaLoaded;
           emit(
             PizzaLoaded(
               pizzas: List.from(state.pizzas)..remove(event.pizza),
             ),
           );
           
         }  
       },
   );
  }
}
