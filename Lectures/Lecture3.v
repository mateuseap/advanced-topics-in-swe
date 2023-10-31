(*
          #####################################################
                           ###  Lecture3  ###
          #####################################################


  This lecture is related to Basics chapter of Logical Foundations book.

  31st of October, 2023 - Recife, Brazil
*)

Inductive day : Type :=
  | monday
  | tuesday
  | wednesday
  | thursday
  | friday
  | saturday
  | sunday.

(* intros -> universally instance the variables *)

(* Example using intros and destruct:
 
Example t: forall (d1 : day), d1 = monday.
Proof. intros. destruct d1 as [ | | | | | | ].

*)

(* simpl -> simplifies what is beign proved *)
(* reflexivity -> verifies if both sides of a equality are equal (it uses simpl) *)
(* if and else -> can only be used to types with the max. of 2 constructors *)

Theorem negb_involutive : forall b : bool,
  negb (negb b) = b.
Proof.
  intros b. destruct b eqn:E.
  - reflexivity.
  - reflexivity.  Qed.