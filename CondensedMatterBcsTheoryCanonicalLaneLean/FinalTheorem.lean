import CondensedMatterBcsTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

def ConstrainedBcsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bcs_endgame (A : AdmissibleClass) :
    ConstrainedBcsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse