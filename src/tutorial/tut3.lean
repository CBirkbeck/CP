import tactic --hide 

/-

#Combining logical statements

We can combine basic statements to create new ones. For example, we can write `¬P` for the 
statement "Not `P`" and if we have two statements `P Q : Prop` 
we can write `P → Q` to mean `P` implies `Q`. 

Say we have the following state of our lemma:

```
P Q : Prop
h : P → Q
p : P
⊢ Q
```
As in level one, the first line says `P` and `Q` are logical statements and the third line says
that `P` has a proof `p`.

In the second line we have the implication `P → Q`, 
which we have called `h`. We think of `h`  as a one-way road from the statement `P` to the 
statement `Q` in `Prop`. In Maths, we would call `h` a function or a map. 

Finally, our goal is to prove `Q` is true.

Using <mark style ="background-color :  #ebdef0 ">`exact h(p),`</mark> will prove our lemma.

Why does this work? We know that `P` is true, since we have a proof of it `p` and `h` tells us that
if `P` is true then `Q` is true. So combining `h` and `p` results in a proof of `Q`.

**Note: We use `h(p)` rather than `h(P)`, because we want to transform the proof of `P` into 
a proof of `Q`.**



-/

/- Lemma
Let $P,Q$ be logical statements and $P$ implies $Q$. If $P$ is true, then so is $Q$.
-/
lemma implications_one (P Q : Prop) (h : P → Q) (p : P) : Q :=
begin
  exact h(p),



end