# Formalization of JSP-000821 (Erdős Problem #988)

## Problem Overview

**Catalog ID:** [JSP-000821](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0801-0900.md#JSP-000821)  
**Erdős Problem:** [#988](https://www.erdosproblems.com/988)  
**Mathematical Area:** Discrepancy theory / Spherical geometry  

### Problem Statement
As the number of spherical points grows, must discrepancies between spherical cap counts and area predictions be unbounded?

Specifically, for a finite subset $P \subset S^2$, its spherical-cap discrepancy is:
$$D(P) = \sup_C | \#(P \cap C) - \mu(C) \cdot \#P |$$
where $C$ ranges over spherical caps and $\mu$ is normalized surface measure. Erdős asked whether the minimum discrepancy of an $n$-point set tends to infinity as $n \to \infty$.

### Resolution
Affirmatively resolved by Wolfgang M. Schmidt (1969) in *Irregularities of distribution. IV*, Invent. Math. 7 (1969), 55–82. In this formalization, a quantitative estimate:
$$|P| \le 512 \cdot D(P)^4$$
is proven via Stolarsky invariance / positive-kernel methods, directly implying that the minimal spherical-cap discrepancy tends to infinity with $n$.

## Formalization Details

- **Bridge File:** `JSP_000821.lean`
- **Main Theorem:**
  ```lean
  theorem jsp_000821_solved :
      Filter.Tendsto Erdos988.minimumDiscrepancy Filter.atTop Filter.atTop :=
    Erdos988.erdos_988
  ```
- **Axioms Check:**
  `#print axioms jsp_000821_solved` yields strictly:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  **Zero** unproved hypotheses, zero `sorry`, zero `admit`.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build
```bash
lake exe cache get
lake build
```

## Attribution & Provenance
- **Mathematical Solution:** Wolfgang M. Schmidt (1969).
- **Formal Authors:** Codex, GPT-5.6 Sol, with upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos988.lean`).
- **Packaging & Verification:** Maintained and verified by 赵钦 (Qin Zhao, GitHub: [@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
