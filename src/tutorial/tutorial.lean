import tactic --hide

/-

#Logical statements 

In Logic, a *statement* is a sentence that is either true of false, for example: 

```md
1. The sum of two odd numbers is an even number
2. 36 is divisible by 3
3. x > 2
```

One of the goals of this game is to show you how to work with logical statements on a computer, 
specifically using a computer language called Lean. In Lean, logical staments live in a 
place called `Prop` (which is short for "Propositions"). For example, if we write  <mark style ="background-color :   #ebdef0 ">`P : Prop`</mark> 
we mean "`P` is a logical statement."  Think of the "`:`" symbol as saying `P` lives in `Prop` 
(in Maths this would be denoted by `P ∈ Prop`, to mean `P` is an element of `Prop`).

#Truth Values

The *truth value* of a logical statement (i.e. some `P : Prop` is whether the statement is true or 
false. For example, the truth value of the statement: "For all integers $x ∈ ℤ$, $0 ≤ x^2$" 
is *true*, while "For all integers $x ∈ ℤ$, $0 ≤ x^3$" is *false*. 

In Lean we assign truth values as follows: We first think of a proposition $P$ as a set with 
*at most* one element. If this set is empty, then we say `P` is *false*. Otherwise, if this set has 
an element, lets call it `p`, then this statement is *true* and `p` is the proof. We will usually 
use upper case letters for logical statements, and lower case for their proofs.

To recap, we write `P : Prop` to mean `P` is a 
proposition and we write  <mark style ="background-color : #ebdef0 ">`p : P`</mark>  to mean "`p` is a 
proof of `P`".

The aim of this game is to learn how to prove logical statements, which we call *lemmas* through a
series of manipulations which we call *tactics*. 
 
Lets start with a simple example of how a lemma looks like in Lean.

This is where the window on the right will come into play. If you delete the *sorry* below, 
on the right you will see the following state: 

```
P : Prop,
p : P,
⊢ P
```

Here, the first two lines are our assumptions, where the first line `P : Prop` says "$P$ is a 
logical statement" and the second line `p : P` says `p` is the proof of `P`.

The thing after the `⊢` symbol is what we need to prove to win the level (i.e. prove the lemma).

In this game our "moves" or, as we call them in Lean, *tactics*, are what will allow us to 
manipulate our statements and produce proofs.

The first tactic we will use is called *exact*. It is used when you need to prove a 
statement $P$ and you have the proof of it. In the example above we have `p : P` and we need to
prove `P`, then typing <mark style ="background-color :   #ebdef0 ">`exact p,`</mark>  will prove it. 

**Note:  We end each line with a comma `,` to tell Lean that this is the end of our move.** 

Try it for yourself now and see what happens!

-/


/- Lemma
If $P$ is a logical stament and $p$ is a proof of $P$ then $P$ is true.
-/
lemma example_one (P : Prop) (p : P) : P :=
begin
  exact p,


end

/- Tactic : exact
## Summary 
If the goal is `⊢ P` then `exact p,` will close the goal if
and only if `p` is a proof of `P` (i.e. `p : P`) 
## Details
Say $P$, $Q$ and $R$ are logical staments
and your lemma looks like this: 
```
p : P,
h : P → Q,
j : Q → R
⊢ R
```
Then you can solve the level by using `exact j(h(p)),`
-/
