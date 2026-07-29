import CondensedMatterBcsTheoryCanonicalLaneLean.MathlibObjects

/-!
# BCS Coherence Gap Package
-/

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSCoherenceGapPackage where
  gapParameter : Type
  coherenceLength : Type
  thermodynamicStability : Prop
  bcsGapEquationSolved : Prop
  meanFieldCriticalTemperature : Prop

structure BCSCoherenceGapEvidence (P : BCSCoherenceGapPackage) where
  thermodynamicStabilityClosed : P.thermodynamicStability
  bcsGapEquationSolvedClosed : P.bcsGapEquationSolved
  meanFieldCriticalTemperatureClosed : P.meanFieldCriticalTemperature

def BCSCoherenceGapClosed (P : BCSCoherenceGapPackage) : Prop :=
  P.thermodynamicStability ∧ P.bcsGapEquationSolved ∧ P.meanFieldCriticalTemperature

theorem bcs_coherence_gap_closed_from_evidence (P : BCSCoherenceGapPackage)
    (E : BCSCoherenceGapEvidence P) : BCSCoherenceGapClosed P := by
  exact And.intro E.thermodynamicStabilityClosed
    (And.intro E.bcsGapEquationSolvedClosed E.meanFieldCriticalTemperatureClosed)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse