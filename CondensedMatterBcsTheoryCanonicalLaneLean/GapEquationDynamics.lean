import canonicalLaneMathlib.AdmissibleClass
import CondensedMatterBcsTheoryCanonicalLaneLean.BCSAdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure GapEquationPackage where
  electronPhononInteraction : Prop
  selfConsistentEquation : Prop
  criticalTemperatureFormula : Prop
  isotopeEffect : Prop

structure GapEquationEvidence (G : GapEquationPackage) where
  electronPhononInteractionClosed : G.electronPhononInteraction
  selfConsistentEquationClosed : G.selfConsistentEquation
  criticalTemperatureFormulaClosed : G.criticalTemperatureFormula
  isotopeEffectClosed : G.isotopeEffect

def GapEquationClosed (G : GapEquationPackage) : Prop :=
  G.electronPhononInteraction ∧ G.selfConsistentEquation ∧
  G.criticalTemperatureFormula ∧ G.isotopeEffect

theorem gap_equation_closed_from_evidence (G : GapEquationPackage)
    (E : GapEquationEvidence G) : GapEquationClosed G := by
  exact And.intro E.electronPhononInteractionClosed
    (And.intro E.selfConsistentEquationClosed
      (And.intro E.criticalTemperatureFormulaClosed
        E.isotopeEffectClosed))

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse