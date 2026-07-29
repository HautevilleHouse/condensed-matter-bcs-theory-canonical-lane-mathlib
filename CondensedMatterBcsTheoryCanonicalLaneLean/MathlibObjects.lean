import CondensedMatterBcsTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CondensedMatterBcsTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BCSSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BCSAdmittedObject where
  space : BCSSpace
  fermionicFockSpace : Prop
  hamiltonianDefined : Prop
  superconductingOrder : Type
  orderTopology : TopologicalSpace superconductingOrder
  orderParameterNonzero : Prop
  conclusion : orderParameterNonzero

structure BCSEndgameState where
  object : BCSAdmittedObject

def BCSWitnessClosed (O : BCSAdmittedObject) : Prop :=
  O.orderParameterNonzero

end CondensedMatterBcsTheoryCanonicalLaneLean
end HautevilleHouse