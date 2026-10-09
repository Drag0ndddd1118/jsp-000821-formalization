/-
  The Justin Sun Prize (孙宇晨奖) — JSP-000821
  Challenge.lean: Official Mathematical Problem Statement Contract

  Erdős Problem #988 / Schmidt's Spherical Cap Discrepancy Theorem:
  "As the number of spherical points grows, must discrepancies between cap counts and area predictions be unbounded?"
-/

import Mathlib.Analysis.Asymptotics.Defs
import Mathlib.Topology.Order.Basic
import Erdos988

namespace JSP000821

/--
Statement of record for JSP-000821 (Erdős Problem #988 / Schmidt's Discrepancy Theorem):
The minimum spherical-cap discrepancy among n-point subsets of the unit two-sphere
tends to infinity as n → ∞.
-/
def jsp000821Statement : Prop :=
  Filter.Tendsto Erdos988.minimumDiscrepancy Filter.atTop Filter.atTop

end JSP000821
