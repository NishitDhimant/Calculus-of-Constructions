Inductive Nats: Type:=
  |O
  |S(n:Nats).
Notation "0" := O.

Definition next (n:Nats): Nats:=
  match n with
  |m => S(m)
  end.

Definition prev (n:Nats): Nats:=
  match n with
  |0 => 0
  |S(m) => m
  end.

Compute prev (next(S(next(S(next(S(prev(S 0)))))))). (*5*)
(*This proves the need to simplify "prev(next n)" is redundant.*)
Compute next (S 0).
Compute prev (S(S 0)).

Fixpoint even (n: Nats): bool:=
  match n with
  |S 0 => false
  |S(S m) => even m
  |0 => true
  end.
Definition odd (n:Nats): bool:=
  if (even n) then false else true.
Compute even (S(S(S 0))).
Compute odd (S(S(S 0))).

Fixpoint add (a b: Nats): Nats:=
  match a with
  |S a' => S (add a' b)
  |0=> b
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
  |0 => 0
  |S a' => match b with
           |0 => a
           |S b' => subt a' b'
           end
  end.
Compute subt (S(S(S(S 0)))) (S(S(S(S(S 0))))).

Fixpoint equal (a b: Nats): bool:=
  match a,b with
  |0,0 => true
  |S _,0 => false
  |0,S _ => false
  |S a', S b' => equal a' b'
  end.
Compute equal (S(S(S 0))) (S(S 0)).
