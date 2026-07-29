import canonicalLaneMathlib.AdmissibleClass
import CondensedMatterBcsTheoryCanonicalLaneLean.BCSAdmissibleClass

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

def bridgeClosed (A : BCSAdmissibleClass) : Prop :=
  BCSWitnessClosed A.object

theorem bridge_from_admissible_class (A : BCSAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse