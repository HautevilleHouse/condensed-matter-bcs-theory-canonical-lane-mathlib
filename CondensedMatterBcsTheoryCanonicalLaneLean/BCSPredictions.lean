import CondensedMatterBcsTheoryCanonicalLaneLean.NambuGreenFunction

/-!
# BCS Predictions Package
-/

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSPredictionsPackage {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    {N : NambuGreenFunctionPackage H} where
  criticalTemperatureFormula : Prop
  isotopeExponentHalf : Prop
  specificHeatJump : Prop
  penetrationDepth : Prop
  tlsGapZero : Prop

structure BCSPredictionsEvidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    {N : NambuGreenFunctionPackage H} (Pred : BCSPredictionsPackage N) where
  criticalTemperatureFormulaClosed : Pred.criticalTemperatureFormula
  isotopeExponentHalfClosed : Pred.isotopeExponentHalf
  specificHeatJumpClosed : Pred.specificHeatJump
  penetrationDepthClosed : Pred.penetrationDepth
  tlsGapZeroClosed : Pred.tlsGapZero

def BCSPredictionsClosed {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    {N : NambuGreenFunctionPackage H} (Pred : BCSPredictionsPackage N) : Prop :=
  Pred.criticalTemperatureFormula ∧ Pred.isotopeExponentHalf ∧
  Pred.specificHeatJump ∧ Pred.penetrationDepth ∧ Pred.tlsGapZero

theorem bcs_predictions_closed_from_evidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    {N : NambuGreenFunctionPackage H} (Pred : BCSPredictionsPackage N)
    (E : BCSPredictionsEvidence Pred) : BCSPredictionsClosed Pred := by
  exact And.intro E.criticalTemperatureFormulaClosed
    (And.intro E.isotopeExponentHalfClosed
      (And.intro E.specificHeatJumpClosed
        (And.intro E.penetrationDepthClosed E.tlsGapZeroClosed)))

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse