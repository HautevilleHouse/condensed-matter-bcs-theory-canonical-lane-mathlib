import CondensedMatterBcsTheoryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BCSWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse