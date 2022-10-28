import tactic --hide

/-
## `left` and `right`

If your lemma has the goal: 

```
⊢ P ∨ Q
```

then   <mark style ="background-color : #ebdef0 ">`left`</mark>  changes the goal to `⊢ P`. 
Similarly,  <mark style ="background-color : #ebdef0 ">`right`</mark>  changes the goal to `⊢ Q`.
-/

/-Hint : Why does this work?
The logic is that `P` implies `P ∨ Q` so it is enough to prove `P`. 

-/


/-Lemma
Let $P,Q$ be logical statements and assume $P$ is true, then $P ∨ Q$ is true.
-/
lemma left_example (P Q : Prop) (p : P) : P ∨ Q :=
begin
  left,
  exact p,
end



/- Tactic : left and right

If your lemma has the goal: 

```
⊢ P ∨ Q
```

then `left` changes the goal to `⊢ P`. Similarly `right` changes the goal to `⊢ Q`.

-/