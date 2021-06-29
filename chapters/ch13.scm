;; Generalized coordinates
;; set-input-method tex

;; Ralph H. Abraham and Jerrold E. Marsden, Foundations of Mechanics:
;; diffgeo version of classical mech.

;; Recall. LocalTuple / T[γ](t) ≡ (t, γ(t), Dγ(t), ...); LocalTuple[γ] : (t: Time) → Germ(γ|ₜ)
;; χ :: ConfigSpace → R^n
;; ConfigPath / γ :: Time → ConfigSpace
;; CoordPath / q ::  Time → R^n; q ≡ χ . γ
;; Derivative /  D. (Dq)(t) ≡ (Dq^0(t), Dq^1(t), ..., Dq^n(t)). Returns tangent vector to coord. path at time t.
;; Chart_χ (t, γ(t), Dγ(t), ...) ≡ let q = χ.γ in (t, q(t), Dq(t), ...) 
;; Γ :: CoordPath → LocalTuple;  Γ[q](t) ≡ (t, q(t), Dq(t), ...)
;; Γ[q](t) = chart_χ(T[\gamma](t))
;; See that we described L as taking input T. But LocalTuple/T is abstract coordinates(jet bundle), not local coordinates.
;; So we define a new thing called Lχ which is the lagrangian in local coordinates.
;; S[γ](a, b) = ∫ₐᵇ L(T(γ))
;; S_χ[γ](a, b) = ∫ₐᵇ L(chart_χ^{-1} (chart_χ T(γ)))
;; S_χ[γ](a, b) = ∫ₐᵇ L_χ (Γ(γ)) where L_χ = L ∘ chart^{-1}

