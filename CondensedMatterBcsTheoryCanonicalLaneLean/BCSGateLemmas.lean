import CondensedMatterBcsTheoryCanonicalLaneLean.BCSBridgeLemmas

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

def gateClosed (A : BCSAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BCSAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse