import CondensedMatterBcsTheoryCanonicalLaneLean.BCSHamiltonian

/-!
# Nambu Green's Function Package
-/

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure NambuGreenFunctionPackage {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C} where
  nambuSpinor : Type
  greenFunction : Type
  dysonEquation : Prop
  selfEnergyApproximation : Prop
  anomalousCorrelation : Prop

structure NambuGreenFunctionEvidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    (N : NambuGreenFunctionPackage H) where
  dysonEquationClosed : N.dysonEquation
  selfEnergyApproximationClosed : N.selfEnergyApproximation
  anomalousCorrelationClosed : N.anomalousCorrelation

def NambuGreenFunctionClosed {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    (N : NambuGreenFunctionPackage H) : Prop :=
  N.dysonEquation ∧ N.selfEnergyApproximation ∧ N.anomalousCorrelation

theorem nambu_green_function_closed_from_evidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} {H : BCSHamiltonianPackage C}
    (N : NambuGreenFunctionPackage H) (E : NambuGreenFunctionEvidence N) :
    NambuGreenFunctionClosed N := by
  exact And.intro E.dysonEquationClosed
    (And.intro E.selfEnergyApproximationClosed E.anomalousCorrelationClosed)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse