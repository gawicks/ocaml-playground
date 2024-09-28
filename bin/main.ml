let rec fac n = 
  if n = 0 then 1
  else  n * fac (n - 1)
;;

let fac5 = fac 5;;

print_int fac5

let add a b = a + b;;
let addTo5 = add 5;; (* Automatically curried *)

print_int (addTo5 5)

let myList = [3;4;5];; (* Note the use of ; *)
let myTuple = (4,5);;

let mappedList = List.map (fun x -> x * 2) myList;;
print_int (List.hd mappedList)


type ml = OCaml | Haskell | StandardML
let lang = OCaml (* type ml *)

(* Tagged unions / Type constructors  with Algebric data types *)
type myNumber = PlusInfinity 
| MinusInfinity 
| Real of float
| Imaginary of (int * int);;

let num = Real(5.0);;

(* Pattern matching *)
let x = match num with
| Real y -> string_of_float y
| MinusInfinity -> "Minus"
| PlusInfinity -> "Postivie"
| Imaginary (r,i) when r >= 0 -> "positive real" ^ string_of_int r ^ "+" ^ string_of_int i
| Imaginary(r,i) ->  "negative real" ^ string_of_int r ^ "+" ^ string_of_int i













