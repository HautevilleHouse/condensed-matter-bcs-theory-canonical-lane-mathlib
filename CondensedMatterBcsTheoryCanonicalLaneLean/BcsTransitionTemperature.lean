import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSTransitionTemperaturePackage where
  criticalTemperature : ℝ
  isotopeCoefficient : ℝ
  debeyTemperature : ℝ
  bcsFormulaDerived : Prop
  isotopeEffectCaptured : Prop

structure BCSTransitionTemperatureEvidence (T : BCSTransitionTemperaturePackage) where
  bcsFormulaDerivedClosed : T.bcsFormulaDerived
  isotopeEffectCapturedClosed : T.isotopeEffectCaptured

def BCSTransitionTemperatureClosed (T : BCSTransitionTemperaturePackage) : Prop :=
  T.bcsFormulaDerived ∧ T.isotopeEffectCaptured

theorem bcs_transition_temperature_closed_from_evidence (T : BCSTransitionTemperaturePackage) (E : BCSTransitionTemperatureEvidence T) :
    BCSTransitionTemperatureClosed T := by
  exact And.intro E.bcsFormulaDerivedClosed E.isotopeEffectCapturedClosed

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse