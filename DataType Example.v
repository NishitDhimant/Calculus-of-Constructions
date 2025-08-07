Inductive rgb: Type:=
  |red
  |green
  |blue.

Inductive color: Type:=
  |black
  |white
  |primary (p:rgb).

Definition monochrome (c:color): bool:=
  match c with
  |black => true
  |white => true
  |primary p =>false
  end.

Definition isRed (c:color): bool:=
  match c with
  |black => false
  |white => false
  |primary red => true
  |primary _ => false
  end.

Module xyz.
  Definition foo: rgb:=
  blue.
End xyz.
Definition foo: bool:= 
  true.

Check xyz.foo.
Check foo.

