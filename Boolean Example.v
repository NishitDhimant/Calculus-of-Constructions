Inductive bool: Type:=
  |true
  |false.

Definition neg (b:bool): bool :=
match b with
  |true=>false
  |false=>true
end.

Definition and (a b:bool): bool :=
match b with
  |true=>a
  |false=>false
end.

Definition or (a b:bool): bool :=
match b with
  |true=>true
  |false=>a
end.

Notation "x && y" := (and x y).
Notation "x || y" := (or x y).
Notation "- x" := (neg x).

Definition xor (a b:bool): bool:=
  (a&&b) || -(a||b).
Notation "x + y" := (xor x y).

Compute (neg true).
Compute (neg false).

Compute (and true true).
Compute (and false true).
Compute (and true false).
Compute (and false false).

Compute (or true true).
Compute (or false true).
Compute (or true false).
Compute (or false false).

Compute (xor true true).
Compute (xor false true).
Compute (xor true false).
Compute (xor false false).