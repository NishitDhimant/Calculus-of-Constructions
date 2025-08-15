Inductive Nats: Type:=
  |O
  |X
  |S(n:Nats).
Notation "0":= O.

Definition next (n:Nats): Nats:=
  match n with
  |n => S(n)
  |S X => 0
  end.

Definition prev (n:Nats): Nats:=
  match n with
  |n => P(n)
  end.

Fixpoint mod (n: Nats): Nats:=
  match n with
  |0 => 0
  |S m => S m
  |P m => S (mod m)
  end.
Compute (mod (P(S 0))).

Compute prev (next(S(next(S(next(S(prev(S 0)))))))). (*5*)
(*This proves the need to simplify "prev(next n)" is redundant.*)
Compute next (S 0).
Compute prev (S(S 0)).

Fixpoint even (n: Nats): bool:=
  match n with
  |S 0 => false
  |S(S m) => even m
  |0 => true
  |P m => even (mod m)
  end.
Compute even (S(S(S 0))).

Fixpoint add (a b: Nats): Nats:=
  match a with
  |S a' => S (add a' b)
  |0=> b
  |P a' => 
  end.

Fixpoint mul (a b: Nats): Nats:=
  match a with
  |S a' => add b (mul a' b)
  |0 => 0
  end.

Fixpoint pow (base power: Nats): Nats:=
  match power with
  |S a' => mul base (pow base a')
  |0 => S 0
  end.
Compute pow (S(S 0)) (S(S(S 0))).


Fixpoint subt (a b:Nats): Nats:=
  match a with
  |