import Lake
open Lake DSL

package «FunEq»

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.10.0"

@[default_target]
lean_lib «FunEq»
