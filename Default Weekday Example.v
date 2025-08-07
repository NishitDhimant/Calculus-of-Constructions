Inductive day : Type :=
  |sunday
  |monday
  |tuesday
  |wednesday
  |thursday
  |friday
  |saturday.

Definition nextDay (d:day) : day :=
match d with
  |monday=>tuesday
  |tuesday=>wednesday
  |wednesday=>thursday
  |thursday=>friday
  |friday=>saturday
  |saturday=>sunday
  |sunday=>monday
end.

Example test1: (nextDay (nextDay friday))=sunday.
Proof. simpl. reflexivity. Qed.