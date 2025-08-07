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

Definition ident := .
Inductive ident : :=
  | : .
Fixpoint ident (_ : _) {struct _} : _ :=
.

