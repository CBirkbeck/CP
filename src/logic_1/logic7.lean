import tactic --hide

-- Level name : Boss level

/- Hint : Hint 1
 Notice we have three implications, so we need to introduce all of them using `intros`.

-/

/-Hint : Hint 2
When using `apply` we need to make sure that we use an assumption that contains our goal.

-/

/-Hint : Hint 3
If we have more than one goal to prove, then we need to do them in order. By default the lean 
applies the tactics to the first goal until complete and then moves on to the next.  

-/


/-Lemma 
If $P,Q,R$ are logical statements and
 $(P \implies Q \implies R)$  then $((P \implies Q) \implies (P \implies R)$.
-/
lemma lemma_5 (P Q R : Prop) : (P → Q → R) → (P → Q) → (P → R) :=
begin
  intros hPQR hPQ hP,
  apply hPQR,
  { exact hP },
  { apply hPQ,
    exact hP }



end

/- Hint : Tip
To skip proving a goal you can  write `sorry,`. But don't forget to go back and prove it to solve the
level.  

-/