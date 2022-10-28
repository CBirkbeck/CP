import tactic --hide

-- Level name : The `exfalso` tactic.

/-
In this level we want to prove prove that `false` implies any proposition `P`.

-/


/-Hint : Hint
You can do this using only `intro` and `cases`.
-/

/-Lemma
If $P$ is a logical statement then $\mathrm{false}$ implies $P$.
-/
lemma false_imp_P (P : Prop) : false → P :=
begin
 intro h,
 cases h,


 
 




  
end

/-Hint : What is going on here?
One way to solve this level is to use `intro h` followed by `cases h`.  Notice that using `intro h`,
introduces the assumption `h : false`. Lean thinks of `false` as empty, i.e having no elements. 
`cases h` goes through each element in `h` and tries to prove our goal. 
But since our assumption is `false` there are no cases, so the result is trivially true. 
To make sense of this outside of Lean, we think that starting from a false statement we can have 
any outcome, both true and false (see levels 3 & 4 of "True and False" world).

-/

/-
## The `exfalso` tactic 

A way to use this result in Lean is with the <mark style ="background-color : #ebdef0 "> `exfalso`</mark> tactic, 
which changes any goal to `false`. 
-/

/-Tactic : exfalso
This changes any goal to `false`.
-/

