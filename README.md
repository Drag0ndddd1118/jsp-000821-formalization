# Formalization of JSP-000821 (Erdős Problem #988)

[![Lean Build & Verification](https://github.com/Drag0ndddd1118/jsp-000821-formalization/actions/workflows/ci.yml/badge.svg)](https://github.com/Drag0ndddd1118/jsp-000821-formalization/actions/workflows/ci.yml)

## Problem Overview

- **Catalog ID:** [JSP-000821](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000821)
- **Erdős Problem:** [#988](https://www.erdosproblems.com/988)
- **Mathematical Area:** Discrepancy theory / Spherical geometry

### Problem Statement

As the number of spherical points grows, must discrepancies between spherical cap counts and area predictions be unbounded?

Specifically, for a finite subset $P \subset S^2$ (the unit two-sphere in $\mathbb{R}^3$), its spherical-cap discrepancy is:
$$D(P) = \sup_C | \#(P \cap C) - \mu(C) \cdot \#P |$$
where $C$ ranges over spherical caps and $\mu$ is normalized surface measure. Erdős asked whether the minimum discrepancy of an $n$-point set tends to infinity as $n \to \infty$.

### Resolution

Affirmatively resolved by Wolfgang M. Schmidt (1969) in *Irregularities of distribution. IV*, Invent. Math. 7 (1969), 55–82.

In this formalization, a quantitative estimate:
$$|P| \le 512 \cdot D(P)^4$$
is proven via Stolarsky invariance and positive-definite kernel methods, directly establishing:
$$\lim_{n \to \infty} \min_{|P|=n} D(P) = \infty.$$

## Repository Architecture

This repository adopts the standard challenge/submission contract architecture:

- `Challenge.lean`: Defines the formal specification of the catalogued problem (`jsp000821Statement`).
- `Submission.lean`: Top-level resolution theorem `jsp_000821_solved` establishing the challenge statement from Schmidt's theorem in `Erdos988.lean`.
- `Erdos988.lean`: Self-contained constructive formalization of Schmidt's theorem.
- `check.py`: Automated self-contained integrity checker auditing compilation, 0 sorry/admit, and kernel axioms.

## Verification & Axiom Audit

The theorem `jsp_000821_solved` depends strictly on the standard foundational Lean 4 axioms:

```lean
#print axioms jsp_000821_solved
-- 'jsp_000821_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
```

- **0 sorry**, **0 admit**, **0 native_decide**, **0 custom axioms**.

## Reproducing the Verification

```bash
lake exe cache get
lake build
python3 check.py
```
