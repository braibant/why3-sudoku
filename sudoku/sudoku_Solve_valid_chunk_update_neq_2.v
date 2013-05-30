(* This file is generated by Why3's Coq 8.4 driver *)
(* Beware! Only edit allowed sections below    *)
Require Import BuiltIn.
Require BuiltIn.
Require int.Int.
Require map.Map.
Require bool.Bool.

(* Why3 assumption *)
Definition unit := unit.

(* Why3 assumption *)
Definition grid := (map.Map.map Z Z).

(* Why3 assumption *)
Definition valid_chunk (g:(map.Map.map Z Z)) (i:Z) (start:(map.Map.map Z Z))
  (offsets:(map.Map.map Z Z)): Prop := let s := (map.Map.get start i) in
  forall (o1:Z) (o2:Z), (((0%Z <= o1)%Z /\ (o1 < 9%Z)%Z) /\
  (((0%Z <= o2)%Z /\ (o2 < 9%Z)%Z) /\ ~ (o1 = o2))) -> let i1 :=
  (s + (map.Map.get offsets o1))%Z in let i2 := (s + (map.Map.get offsets
  o2))%Z in ((((1%Z <= (map.Map.get g i1))%Z /\ ((map.Map.get g
  i1) <= 9%Z)%Z) /\ ((1%Z <= (map.Map.get g i2))%Z /\ ((map.Map.get g
  i2) <= 9%Z)%Z)) -> ~ ((map.Map.get g i1) = (map.Map.get g i2))).

(* Why3 assumption *)
Definition is_index (i:Z): Prop := (0%Z <= i)%Z /\ (i < 81%Z)%Z.

(* Why3 assumption *)
Definition valid (g:(map.Map.map Z Z)): Prop := forall (i:Z), (is_index i) ->
  ((valid_chunk g i
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
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
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
  Z Z)) 0%Z 0%Z) 1%Z 9%Z) 2%Z 18%Z) 3%Z 27%Z) 4%Z 36%Z) 5%Z 45%Z) 6%Z 54%Z)
  7%Z 63%Z) 8%Z 72%Z)) /\ ((valid_chunk g i
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
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
  72%Z)
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
  Z Z)) 0%Z 0%Z) 1%Z 1%Z) 2%Z 2%Z) 3%Z 3%Z) 4%Z 4%Z) 5%Z 5%Z) 6%Z 6%Z) 7%Z
  7%Z) 8%Z 8%Z)) /\ (valid_chunk g i
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
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
  (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.set (map.Map.const (-1%Z)%Z:(map.Map.map
  Z Z)) 0%Z 0%Z) 1%Z 1%Z) 2%Z 2%Z) 3%Z 9%Z) 4%Z 10%Z) 5%Z 11%Z) 6%Z 18%Z) 7%Z
  19%Z) 8%Z 20%Z)))).

(* Why3 assumption *)
Definition full (g:(map.Map.map Z Z)): Prop := forall (i:Z), (is_index i) ->
  ((1%Z <= (map.Map.get g i))%Z /\ ((map.Map.get g i) <= 9%Z)%Z).

(* Why3 assumption *)
Definition included (g1:(map.Map.map Z Z)) (g2:(map.Map.map Z Z)): Prop :=
  forall (i:Z), ((is_index i) /\ ((1%Z <= (map.Map.get g1 i))%Z /\
  ((map.Map.get g1 i) <= 9%Z)%Z)) -> ((map.Map.get g2 i) = (map.Map.get g1
  i)).

(* Why3 assumption *)
Definition is_solution_for (sol:(map.Map.map Z Z)) (data:(map.Map.map Z
  Z)): Prop := (included data sol) /\ ((full sol) /\ (valid sol)).

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

(* Why3 assumption *)
Definition distinct_pair (g:(map.Map.map Z Z)) (s:Z) (offsets:(map.Map.map Z
  Z)) (o1:Z) (o2:Z): Prop := let i1 := (s + (map.Map.get offsets o1))%Z in
  let i2 := (s + (map.Map.get offsets o2))%Z in ((~ (o1 = o2)) ->
  ((((1%Z <= (map.Map.get g i1))%Z /\ ((map.Map.get g i1) <= 9%Z)%Z) /\
  ((1%Z <= (map.Map.get g i2))%Z /\ ((map.Map.get g i2) <= 9%Z)%Z)) ->
  ~ ((map.Map.get g i1) = (map.Map.get g i2)))).

(* Why3 assumption *)
Definition distinct_pairs (g:(map.Map.map Z Z)) (s:Z) (offsets:(map.Map.map Z
  Z)) (o1:Z) (o2:Z): Prop := forall (a:Z) (b:Z), (((0%Z <= a)%Z /\
  (a < o1)%Z) /\ ((0%Z <= b)%Z /\ (b < o2)%Z)) -> (distinct_pair g s offsets
  a b).

Axiom distinct_pairs_to_valid_chunk : forall (g:(map.Map.map Z Z)) (i:Z)
  (start:(map.Map.map Z Z)) (offsets:(map.Map.map Z Z)), (distinct_pairs g
  (map.Map.get start i) offsets 9%Z 9%Z) -> (valid_chunk g i start offsets).

(* Why3 assumption *)
Inductive array
  (a:Type) {a_WT:WhyType a} :=
  | mk_array : Z -> (map.Map.map Z a) -> array a.
Axiom array_WhyType : forall (a:Type) {a_WT:WhyType a}, WhyType (array a).
Existing Instance array_WhyType.
Implicit Arguments mk_array [[a] [a_WT]].

(* Why3 assumption *)
Definition elts {a:Type} {a_WT:WhyType a} (v:(array a)): (map.Map.map Z a) :=
  match v with
  | (mk_array x x1) => x1
  end.

(* Why3 assumption *)
Definition length {a:Type} {a_WT:WhyType a} (v:(array a)): Z :=
  match v with
  | (mk_array x x1) => x
  end.

(* Why3 assumption *)
Definition get {a:Type} {a_WT:WhyType a} (a1:(array a)) (i:Z): a :=
  (map.Map.get (elts a1) i).

(* Why3 assumption *)
Definition set {a:Type} {a_WT:WhyType a} (a1:(array a)) (i:Z) (v:a): (array
  a) := (mk_array (length a1) (map.Map.set (elts a1) i v)).

(* Why3 assumption *)
Definition make {a:Type} {a_WT:WhyType a} (n:Z) (v:a): (array a) :=
  (mk_array n (map.Map.const v:(map.Map.map Z a))).

(* Why3 assumption *)
Definition is_grid (g:(map.Map.map Z Z)): Prop := forall (k:Z),
  ((1%Z <= (map.Map.get g k))%Z /\ ((map.Map.get g k) <= 9%Z)%Z) \/
  ((map.Map.get g k) = (-1%Z)%Z).

(* Why3 assumption *)
Definition partial (g:(map.Map.map Z Z)) (i:Z): Prop := (forall (k:Z),
  ((0%Z <= k)%Z /\ (k < i)%Z) -> ((1%Z <= (map.Map.get g k))%Z /\
  ((map.Map.get g k) <= 9%Z)%Z)) /\ forall (k:Z), (is_index k) ->
  (((1%Z <= (map.Map.get g k))%Z /\ ((map.Map.get g k) <= 9%Z)%Z) \/
  ((map.Map.get g k) = (-1%Z)%Z)).

Axiom partial_1 : forall (g:(map.Map.map Z Z)) (i:Z), (i < 81%Z)%Z ->
  ((partial g i) -> ((~ ((map.Map.get g i) = (-1%Z)%Z)) -> (partial g
  (i + 1%Z)%Z))).

(* Why3 assumption *)
Definition same_chunk (start:(map.Map.map Z Z)) (offsets:(map.Map.map Z Z))
  (i:Z) (j:Z): Prop := exists k:Z, ((1%Z <= k)%Z /\ (k <= 9%Z)%Z) ->
  (((map.Map.get start i) + (map.Map.get offsets k))%Z = ((map.Map.get start
  j) + (map.Map.get offsets k))%Z).

(* Why3 goal *)
Theorem valid_chunk_update_neq : forall (g:(map.Map.map Z Z)) (i:Z) (x:Z)
  (start:(map.Map.map Z Z)) (offsets:(map.Map.map Z Z)), forall (j:Z),
  (valid_chunk g j start offsets) -> ((~ (same_chunk start offsets i j)) ->
  ((~ (i = j)) -> ((is_grid g) -> (valid_chunk (map.Map.set g i x) j start
  offsets)))).
intros g i x start offsets j h1 h2 h3 h4.

Qed.


