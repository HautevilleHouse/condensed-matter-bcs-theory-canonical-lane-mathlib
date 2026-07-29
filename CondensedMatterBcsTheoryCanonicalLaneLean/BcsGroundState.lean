import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

structure BCSGroundStatePackage where
  groundStateEnergy : ℝ
  coherenceFactors : Type u
  condensationEnergy : ℝ
  groundStateConstructed : Prop
  energyMinimal : Prop

structure BCSGroundStateEvidence (G : BCSGroundStatePackage) where
  groundStateConstructedClosed : G.groundStateConstructed
  energyMinimalClosed : G.energyMinimal

def BCSGroundStateClosed (G : BCSGroundStatePackage) : Prop :=
  G.groundStateConstructed ∧ G.energyMinimal

theorem bcs_ground_state_closed_from_evidence (G : BCSGroundStatePackage) (E : BCSGroundStateEvidence G) :
    BCSGroundStateClosed G := by
  exact And.intro E.groundStateConstructedClosed E.energyMinimalClosed

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse