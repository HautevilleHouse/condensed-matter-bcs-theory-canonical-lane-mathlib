import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure CooperInstabilityPackage where
  cooperPairWavefunction : Type u
  bindingEnergy : ℝ
  instabilityThreshold : ℝ
  pairFormation : Prop
  instabilityPredicted : Prop

structure CooperInstabilityEvidence (C : CooperInstabilityPackage) where
  pairFormationClosed : C.pairFormation
  instabilityPredictedClosed : C.instabilityPredicted

def CooperInstabilityClosed (C : CooperInstabilityPackage) : Prop :=
  C.pairFormation ∧ C.instabilityPredicted

theorem cooper_instability_closed_from_evidence (C : CooperInstabilityPackage) (E : CooperInstabilityEvidence C) :
    CooperInstabilityClosed C := by
  exact And.intro E.pairFormationClosed E.instabilityPredictedClosed

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse