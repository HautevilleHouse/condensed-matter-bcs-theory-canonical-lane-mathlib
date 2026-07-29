import CondensedMatterBcsTheoryCanonicalLaneLean.ElectronPhononCoupling

/-!
# BCS Hamiltonian Package
-/

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSHamiltonianPackage {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} where
  kineticEnergy : Type
  pairingPotential : Type
  gapEquation : Prop
  meanFieldDecoupling : Prop
  numberEquation : Prop

structure BCSHamiltonianEvidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} (H : BCSHamiltonianPackage C) where
  gapEquationClosed : H.gapEquation
  meanFieldDecouplingClosed : H.meanFieldDecoupling
  numberEquationClosed : H.numberEquation

def BCSHamiltonianClosed {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} (H : BCSHamiltonianPackage C) : Prop :=
  H.gapEquation ∧ H.meanFieldDecoupling ∧ H.numberEquation

theorem bcs_hamiltonian_closed_from_evidence {P : BCSCoherenceGapPackage}
    {C : ElectronPhononCouplingPackage P} (H : BCSHamiltonianPackage C)
    (E : BCSHamiltonianEvidence H) : BCSHamiltonianClosed H := by
  exact And.intro E.gapEquationClosed
    (And.intro E.meanFieldDecouplingClosed E.numberEquationClosed)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse