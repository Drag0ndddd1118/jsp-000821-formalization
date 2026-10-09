/-
  The Justin Sun Prize (孙宇晨奖) — JSP-000821
  Submission.lean: Top-Level Resolution Theorem & Bridge

  This file bridges the underlying constructive Lean 4 formalization of Erdős
  Problem #988 (Wolfgang M. Schmidt 1969) to the challenge contract in `Challenge.lean`.
-/

import Challenge
import Erdos988

open JSP000821

/--
Top-level resolution theorem for JSP-000821 (Erdős Problem #988).
Proves `jsp000821Statement` by bridging from Wolfgang M. Schmidt's theorem in `Erdos988.lean`.
-/
theorem jsp_000821_solved : jsp000821Statement :=
  Erdos988.erdos_988

#print axioms jsp_000821_solved
-- 'jsp_000821_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
