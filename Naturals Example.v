Inductive Nats: Type:=
  |O
  |S(n:Nats).

Definition next (n:Nats): Nats:=
  match n with
  |n => S(n)
  end.

Definition prev (n:Nats): Nats:=
  match n with
  |O    => O
  |S n' => n'
  end.

Compute next (S O).
Compute prev (S(S O)).

Definition add (a b:Nats): Nats:=
  match a with
  |S a' => S (add a' b)
  |O => b
  end.