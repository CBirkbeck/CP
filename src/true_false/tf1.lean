import tactic --hide 

/-
##  True and False

 `Prop` has two special inhabitants, the logical statements <mark style ="background-color : #ebdef0 ">`true`</mark>,
with truth value true and <mark style ="background-color : #ebdef0 ">`false`</mark> with truth value
false.


In the following levels we will work with logical statements combining `true` and `false`.

To help us we need to introduce a new tactic:

## The `triv` tactic

If your lemma has the goal: 

```
⊢ true
```

then <mark style ="background-color : #ebdef0 ">`triv`</mark> will complete the proof for you. Try it out below:

-/

/-Lemma
The logical statement `true` is true.
-/
lemma true_is_true : true :=
begin 
  triv,
end

/-Tactic : triv

If your lemma has the goal: 

```
⊢ true
```
then `triv` will complete the proof for you.

-/