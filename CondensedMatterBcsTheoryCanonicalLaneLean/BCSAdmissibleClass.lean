import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSAdmittedObject where
  superconductorType : Type
  criticalTemperature : Prop
  gapEquationSolved : Prop
  conclusion : gapEquationSolved

structure BCSAdmissibleClass where
  object : BCSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : BCSAdmissibleClass) : Prop :=
  BCSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse