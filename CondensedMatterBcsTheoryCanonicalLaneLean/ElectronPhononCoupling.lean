import CondensedMatterBcsTheoryCanonicalLaneLean.BCSCoherenceGap

/-!
# Electron-Phonon Coupling Package
-/

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure ElectronPhononCouplingPackage {P : BCSCoherenceGapPackage} where
  deformationPotential : Type
  phononDispersion : Type
  couplingConstant : Prop
  retardedInteraction : Prop
  isotopeEffectObserved : Prop

structure ElectronPhononCouplingEvidence {P : BCSCoherenceGapPackage}
    (C : ElectronPhononCouplingPackage P) where
  couplingConstantClosed : C.couplingConstant
  retardedInteractionClosed : C.retardedInteraction
  isotopeEffectObservedClosed : C.isotopeEffectObserved

def ElectronPhononCouplingClosed {P : BCSCoherenceGapPackage}
    (C : ElectronPhononCouplingPackage P) : Prop :=
  C.couplingConstant ∧ C.retardedInteraction ∧ C.isotopeEffectObserved

theorem electron_phonon_coupling_closed_from_evidence {P : BCSCoherenceGapPackage}
    (C : ElectronPhononCouplingPackage P) (E : ElectronPhononCouplingEvidence C) :
    ElectronPhononCouplingClosed C := by
  exact And.intro E.couplingConstantClosed
    (And.intro E.retardedInteractionClosed E.isotopeEffectObservedClosed)

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse