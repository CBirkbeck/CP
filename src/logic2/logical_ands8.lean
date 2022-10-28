import tactic --hide

-- Level name : Super Boss


/-Lemma
Time for a super boss fight!
-/
lemma and_impl_equiv (P Q R : Prop) : (P  → Q) ∧ (Q → R) ↔ (P → R) ∧ ((P ↔ Q) ∨ (R ↔ Q)) :=
begin
  tauto!,
  

end

/-Hint : Cheat code
Congratulations! If you are reading this you are about to unlock a cheat code!
Lean has more advanced tactics that can solve all of the levels very quickly. For example,
using the `tauto!` tactic should allow you to solve the whole game! (but what's the fun in that?)
-/

/-
That's all folks! If you enjoyed this then check out the
<a href="https://www.ma.imperial.ac.uk/~buzzard/xena/natural_number_game/" target="blank">Natural Numbers Game</a>
and Kevin Buzzard's <a href="https://www.ma.imperial.ac.uk/~buzzard/xena/formalising-mathematics-2022/" target="blank">Formalising mathematics</a> course.

-/