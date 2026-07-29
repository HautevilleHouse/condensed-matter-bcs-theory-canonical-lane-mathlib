import CondensedMatterBcsTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : BCSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BCSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse