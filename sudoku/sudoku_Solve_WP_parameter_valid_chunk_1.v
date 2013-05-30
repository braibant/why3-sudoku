(* This file is generated by Why3's Coq driver *)
(* Beware! Only edit allowed sections below    *)
Require Import BuiltIn.
Require BuiltIn.
Require int.Int.

(* Why3 assumption *)
Definition unit := unit.

Axiom map : forall (a:Type) {a_WT:WhyType a} (b:Type) {b_WT:WhyType b}, Type.
Parameter map_WhyType : forall (a:Type) {a_WT:WhyType a}
  (b:Type) {b_WT:WhyType b}, WhyType (map a b).
Existing Instance map_WhyType.

Parameter get: forall {a:Type} {a_WT:WhyType a} {b:Type} {b_WT:WhyType b},
  (map a b) -> a -> b.

Parameter set: forall {a:Type} {a_WT:WhyType a} {b:Type} {b_WT:WhyType b},
  (map a b) -> a -> b -> (map a b).

Axiom Select_eq : forall {a:Type} {a_WT:WhyType a} {b:Type} {b_WT:WhyType b},
  forall (m:(map a b)), forall (a1:a) (a2:a), forall (b1:b), (a1 = a2) ->
  ((get (set m a1 b1) a2) = b1).

Axiom Select_neq : forall {a:Type} {a_WT:WhyType a}
  {b:Type} {b_WT:WhyType b}, forall (m:(map a b)), forall (a1:a) (a2:a),
  forall (b1:b), (~ (a1 = a2)) -> ((get (set m a1 b1) a2) = (get m a2)).

Parameter const: forall {a:Type} {a_WT:WhyType a} {b:Type} {b_WT:WhyType b},
  b -> (map a b).

Axiom Const : forall {a:Type} {a_WT:WhyType a} {b:Type} {b_WT:WhyType b},
  forall (b1:b) (a1:a), ((get (const b1:(map a b)) a1) = b1).

(* Why3 assumption *)
Definition grid := (map Z Z).

(* Why3 assumption *)
Definition valid_chunk (g:(map Z Z)) (i:Z) (start:(map Z Z)) (offsets:(map Z
  Z)): Prop := let s := (get start i) in forall (o1:Z) (o2:Z),
  (((0%Z <= o1)%Z /\ (o1 < 9%Z)%Z) /\ (((0%Z <= o2)%Z /\ (o2 < 9%Z)%Z) /\
  ~ (o1 = o2))) -> let i1 := (s + (get offsets o1))%Z in let i2 :=
  (s + (get offsets o2))%Z in ((((1%Z <= (get g i1))%Z /\ ((get g
  i1) <= 9%Z)%Z) /\ ((1%Z <= (get g i2))%Z /\ ((get g i2) <= 9%Z)%Z)) ->
  ~ ((get g i1) = (get g i2))).

(* Why3 assumption *)
Definition is_index (i:Z): Prop := (0%Z <= i)%Z /\ (i < 81%Z)%Z.

(* Why3 assumption *)
Definition valid (g:(map Z Z)): Prop := forall (i:Z), (is_index i) ->
  ((valid_chunk g i
  (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map
  Z Z)) 0%Z 0%Z) 1%Z 1%Z) 2%Z 2%Z) 3%Z 3%Z) 4%Z 4%Z) 5%Z 5%Z) 6%Z 6%Z) 7%Z
  7%Z) 8%Z 8%Z) 9%Z 0%Z) 10%Z 1%Z) 11%Z 2%Z) 12%Z 3%Z) 13%Z 4%Z) 14%Z 5%Z)
  15%Z 6%Z) 16%Z 7%Z) 17%Z 8%Z) 18%Z 0%Z) 19%Z 1%Z) 20%Z 2%Z) 21%Z 3%Z) 22%Z
  4%Z) 23%Z 5%Z) 24%Z 6%Z) 25%Z 7%Z) 26%Z 8%Z) 27%Z 0%Z) 28%Z 1%Z) 29%Z 2%Z)
  30%Z 3%Z) 31%Z 4%Z) 32%Z 5%Z) 33%Z 6%Z) 34%Z 7%Z) 35%Z 8%Z) 36%Z 0%Z) 37%Z
  1%Z) 38%Z 2%Z) 39%Z 3%Z) 40%Z 4%Z) 41%Z 5%Z) 42%Z 6%Z) 43%Z 7%Z) 44%Z 8%Z)
  45%Z 0%Z) 46%Z 1%Z) 47%Z 2%Z) 48%Z 3%Z) 49%Z 4%Z) 50%Z 5%Z) 51%Z 6%Z) 52%Z
  7%Z) 53%Z 8%Z) 54%Z 0%Z) 55%Z 1%Z) 56%Z 2%Z) 57%Z 3%Z) 58%Z 4%Z) 59%Z 5%Z)
  60%Z 6%Z) 61%Z 7%Z) 62%Z 8%Z) 63%Z 0%Z) 64%Z 1%Z) 65%Z 2%Z) 66%Z 3%Z) 67%Z
  4%Z) 68%Z 5%Z) 69%Z 6%Z) 70%Z 7%Z) 71%Z 8%Z) 72%Z 0%Z) 73%Z 1%Z) 74%Z 2%Z)
  75%Z 3%Z) 76%Z 4%Z) 77%Z 5%Z) 78%Z 6%Z) 79%Z 7%Z) 80%Z 8%Z)
  (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map Z Z)) 0%Z
  0%Z) 1%Z 9%Z) 2%Z 18%Z) 3%Z 27%Z) 4%Z 36%Z) 5%Z 45%Z) 6%Z 54%Z) 7%Z 63%Z)
  8%Z 72%Z)) /\ ((valid_chunk g i
  (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map
  Z Z)) 0%Z 0%Z) 1%Z 0%Z) 2%Z 0%Z) 3%Z 0%Z) 4%Z 0%Z) 5%Z 0%Z) 6%Z 0%Z) 7%Z
  0%Z) 8%Z 0%Z) 9%Z 9%Z) 10%Z 9%Z) 11%Z 9%Z) 12%Z 9%Z) 13%Z 9%Z) 14%Z 9%Z)
  15%Z 9%Z) 16%Z 9%Z) 17%Z 9%Z) 18%Z 18%Z) 19%Z 18%Z) 20%Z 18%Z) 21%Z 18%Z)
  22%Z 18%Z) 23%Z 18%Z) 24%Z 18%Z) 25%Z 18%Z) 26%Z 18%Z) 27%Z 27%Z) 28%Z
  27%Z) 29%Z 27%Z) 30%Z 27%Z) 31%Z 27%Z) 32%Z 27%Z) 33%Z 27%Z) 34%Z 27%Z)
  35%Z 27%Z) 36%Z 36%Z) 37%Z 36%Z) 38%Z 36%Z) 39%Z 36%Z) 40%Z 36%Z) 41%Z
  36%Z) 42%Z 36%Z) 43%Z 36%Z) 44%Z 36%Z) 45%Z 45%Z) 46%Z 45%Z) 47%Z 45%Z)
  48%Z 45%Z) 49%Z 45%Z) 50%Z 45%Z) 51%Z 45%Z) 52%Z 45%Z) 53%Z 45%Z) 54%Z
  54%Z) 55%Z 54%Z) 56%Z 54%Z) 57%Z 54%Z) 58%Z 54%Z) 59%Z 54%Z) 60%Z 54%Z)
  61%Z 54%Z) 62%Z 54%Z) 63%Z 63%Z) 64%Z 63%Z) 65%Z 63%Z) 66%Z 63%Z) 67%Z
  63%Z) 68%Z 63%Z) 69%Z 63%Z) 70%Z 63%Z) 71%Z 63%Z) 72%Z 72%Z) 73%Z 72%Z)
  74%Z 72%Z) 75%Z 72%Z) 76%Z 72%Z) 77%Z 72%Z) 78%Z 72%Z) 79%Z 72%Z) 80%Z
  72%Z) (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map Z
  Z)) 0%Z 0%Z) 1%Z 1%Z) 2%Z 2%Z) 3%Z 3%Z) 4%Z 4%Z) 5%Z 5%Z) 6%Z 6%Z) 7%Z 7%Z)
  8%Z 8%Z)) /\ (valid_chunk g i
  (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map
  Z Z)) 0%Z 0%Z) 1%Z 0%Z) 2%Z 0%Z) 3%Z 3%Z) 4%Z 3%Z) 5%Z 3%Z) 6%Z 6%Z) 7%Z
  6%Z) 8%Z 6%Z) 9%Z 0%Z) 10%Z 0%Z) 11%Z 0%Z) 12%Z 3%Z) 13%Z 3%Z) 14%Z 3%Z)
  15%Z 6%Z) 16%Z 6%Z) 17%Z 6%Z) 18%Z 0%Z) 19%Z 0%Z) 20%Z 0%Z) 21%Z 3%Z) 22%Z
  3%Z) 23%Z 3%Z) 24%Z 6%Z) 25%Z 6%Z) 26%Z 6%Z) 27%Z 27%Z) 28%Z 27%Z) 29%Z
  27%Z) 30%Z 30%Z) 31%Z 30%Z) 32%Z 30%Z) 33%Z 33%Z) 34%Z 33%Z) 35%Z 33%Z)
  36%Z 27%Z) 37%Z 27%Z) 38%Z 27%Z) 39%Z 30%Z) 40%Z 30%Z) 41%Z 30%Z) 42%Z
  33%Z) 43%Z 33%Z) 44%Z 33%Z) 45%Z 27%Z) 46%Z 27%Z) 47%Z 27%Z) 48%Z 30%Z)
  49%Z 30%Z) 50%Z 30%Z) 51%Z 33%Z) 52%Z 33%Z) 53%Z 33%Z) 54%Z 54%Z) 55%Z
  54%Z) 56%Z 54%Z) 57%Z 57%Z) 58%Z 57%Z) 59%Z 57%Z) 60%Z 60%Z) 61%Z 60%Z)
  62%Z 60%Z) 63%Z 54%Z) 64%Z 54%Z) 65%Z 54%Z) 66%Z 57%Z) 67%Z 57%Z) 68%Z
  57%Z) 69%Z 60%Z) 70%Z 60%Z) 71%Z 60%Z) 72%Z 54%Z) 73%Z 54%Z) 74%Z 54%Z)
  75%Z 57%Z) 76%Z 57%Z) 77%Z 57%Z) 78%Z 60%Z) 79%Z 60%Z) 80%Z 60%Z)
  (set (set (set (set (set (set (set (set (set (const (-1%Z)%Z:(map Z Z)) 0%Z
  0%Z) 1%Z 1%Z) 2%Z 2%Z) 3%Z 9%Z) 4%Z 10%Z) 5%Z 11%Z) 6%Z 18%Z) 7%Z 19%Z) 8%Z
  20%Z)))).

(* Why3 assumption *)
Definition full (g:(map Z Z)): Prop := forall (i:Z), (is_index i) ->
  ((1%Z <= (get g i))%Z /\ ((get g i) <= 9%Z)%Z).

(* Why3 assumption *)
Definition included (g1:(map Z Z)) (g2:(map Z Z)): Prop := forall (i:Z),
  ((is_index i) /\ ((1%Z <= (get g1 i))%Z /\ ((get g1 i) <= 9%Z)%Z)) ->
  ((get g2 i) = (get g1 i)).

(* Why3 assumption *)
Definition is_solution_for (sol:(map Z Z)) (data:(map Z Z)): Prop :=
  (included data sol) /\ ((full sol) /\ (valid sol)).

(* Why3 assumption *)
Inductive ref (a:Type) {a_WT:WhyType a} :=
  | mk_ref : a -> ref a.
Axiom ref_WhyType : forall (a:Type) {a_WT:WhyType a}, WhyType (ref a).
Existing Instance ref_WhyType.
Implicit Arguments mk_ref [[a] [a_WT]].

(* Why3 assumption *)
Definition contents {a:Type} {a_WT:WhyType a} (v:(ref a)): a :=
  match v with
  | (mk_ref x) => x
  end.

(* Why3 goal *)
Theorem WP_parameter_valid_chunk : forall (g:(map Z Z)) (i:Z) (start:(map Z
  Z)) (offsets:(map Z Z)), (full g) -> ((0%Z <= 8%Z)%Z -> forall (o1:Z),
  ((0%Z <= o1)%Z /\ (o1 <= 8%Z)%Z) -> ((forall (o1':Z), ((0%Z <= o1')%Z /\
  (o1' < o1)%Z) -> forall (o2:Z), (((0%Z <= o2)%Z /\ (o2 < 9%Z)%Z) /\
  ~ (o1' = o2)) -> let i1 := ((get start i) + (get offsets o1'))%Z in
  let i2 := ((get start i) + (get offsets o2))%Z in ((((1%Z <= (get g
  i1))%Z /\ ((get g i1) <= 9%Z)%Z) /\ ((1%Z <= (get g i2))%Z /\ ((get g
  i2) <= 9%Z)%Z)) -> ~ ((get g i1) = (get g i2)))) -> ((0%Z <= 8%Z)%Z ->
  ((forall (o1':Z), ((0%Z <= o1')%Z /\ (o1' < o1)%Z) -> forall (o2':Z),
  (((0%Z <= o2')%Z /\ (o2' < (8%Z + 1%Z)%Z)%Z) /\ ~ (o1' = o2')) -> let i1 :=
  ((get start i) + (get offsets o1'))%Z in let i2 := ((get start
  i) + (get offsets o2'))%Z in ((((1%Z <= (get g i1))%Z /\ ((get g
  i1) <= 9%Z)%Z) /\ ((1%Z <= (get g i2))%Z /\ ((get g i2) <= 9%Z)%Z)) ->
  ~ ((get g i1) = (get g i2)))) -> forall (o1':Z), ((0%Z <= o1')%Z /\
  (o1' < (o1 + 1%Z)%Z)%Z) -> forall (o2:Z), (((0%Z <= o2)%Z /\
  (o2 < 9%Z)%Z) /\ ~ (o1' = o2)) -> let i1 := ((get start i) + (get offsets
  o1'))%Z in let i2 := ((get start i) + (get offsets o2))%Z in
  ((((1%Z <= (get g i1))%Z /\ ((get g i1) <= 9%Z)%Z) /\ ((1%Z <= (get g
  i2))%Z /\ ((get g i2) <= 9%Z)%Z)) -> ~ ((get g i1) = (get g i2))))))).
intros g i start offsets h1 h2 o1 (h3,h4) h5 h6 h7 o1' (h8,h9) o2
((h10,h11),h12) i1 i2 ((h13,h14),(h15,h16)).

Qed.


