import CondensedMatterBcsTheoryCanonicalLaneLean.BCSBridgeLemmas

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

def BCSConstrainedClosure (A : BCSAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bcs_constrained_endgame (A : BCSAdmissibleClass) :
    BCSConstrainedClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse