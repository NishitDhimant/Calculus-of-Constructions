Inductive bool: Type:=
  |true
  |false.

Definition neg (b:bool) : bool :=
  if b then false else true.

Definition and (a b:bool) : bool :=
  if a then b else false.

Definition or (a b:bool): bool:=
  if a then true else b.

Definition xor (a b:bool): bool:=
  if (or (and a b) (neg (or a b))) then true else false.

Notation "x'" := neg x.

(* Example test1: and true true = true.
Proof. simpl. reflexivity. Qed.
Example test2: and true false = false.
Proof. simpl. reflexivity. Qed.
Example test3: and false true = false.
Proof. simpl. reflexivity. Qed.
Example test4: and false false = false.
Proof. simpl. reflexivity. Qed.
Example test5: or true true = true.
Proof. simpl. reflexivity. Qed.
Example test6: or true false = true.
Proof. simpl. reflexivity. Qed.
Example test7: or false true = true.
Proof. simpl. reflexivity. Qed.
Example test8: or false false = false.
Proof. simpl. reflexivity. Qed.
Example test9: neg true = false.
Proof. simpl. reflexivity. Qed.
Example test10: neg false = true.
Proof. simpl. reflexivity. Qed. *)
