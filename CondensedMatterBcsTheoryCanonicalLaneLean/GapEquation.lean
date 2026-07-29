import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure GapEquationPackage where
  gapFunction : Type u
  densityOfStates : ℝ
  interactionStrength : ℝ
  criticalTemperature : ℝ
  gapEquationFormulated : Prop
  nontrivialSolutionExists : Prop

structure GapEquationEvidence (G : GapEquationPackage) where
  gapEquationFormulatedClosed : G.gapEquationFormulated
  nontrivialSolutionExistsClosed : G.nontrivialSolutionExists

def GapEquationClosed (G : GapEquationPackage) : Prop :=
  G.gapEquationFormulated ∧ G.nontrivialSolutionExists

theorem gap_equation_closed_from_evidence (G : GapEquationPackage) (E : GapEquationEvidence G) :
    GapEquationClosed G := by
  exact And.intro E.gapEquationFormulatedClosed E.nontrivialSolutionExistsClosed

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse