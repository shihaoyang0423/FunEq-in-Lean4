# What have been modified
This dataset has been migrated from Lean 3 to Lean 4.10.0. Below are the detailed syntax changes made during the migration.

## Syntax Changes from Lean 3 to Lean 4

### 1. Import Statement Changes
Changed all import statements from specific modules to the general Mathlib import:
```lean
-- Lean 3
import data.real.basic

-- Lean 4
import Mathlib
```

### 2. Proof Syntax Changes
Replaced all `begin...end` blocks with `by`:
```lean
-- Lean 3
theorem simple_funeq_1
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f(x) = 3) :
f(2) = 3 :=
begin
  sorry
end

-- Lean 4
theorem simple_funeq_1
(f : ℝ → ℝ)
(h : ∀ x : ℝ, f x = 3) :
f 2 = 3 := by
  sorry
```

### 3. Function Application Format Changes
Added requisite spaces between functions and arguments and removed parentheses from function applications where not needed:
```lean
-- Lean 3
f(x)
f(2)
f(x + 1)

-- Lean 4
f x
f 2
f (x + 1)  -- parentheses kept when needed for complex expressions
```

### 4. Type Name Capitalization
Updated type names to follow Lean 4 conventions (in **imo_2004_a6**):
```lean
-- Lean 3
(X : set ℝ)

-- Lean 4
(X : Set ℝ)
```

### 5. Predicate Name Capitalization
Updated predicate names to follow Lean 4 conventions (in **imo_2012_a1**):
```lean
-- Lean 3
(even x → f x = 0) ∧ (odd x → f x = k)

-- Lean 4
(Even x → f x = 0) ∧ (Odd x → f x = k)
```
