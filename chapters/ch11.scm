;; we could look for a path-distinguishing function
;;that has a minimum on the realizable paths—on nearby unreal-
;; izable paths the value of the function is higher than it is on the
;;realizable path. This is the variational strategy: for each physical
;;system we invent a path-distinguishing function that distinguishes
;; realizable motions of the system by having a stationary point for
;; each realizable path.


;; If there are positional constraints among the particles of a system
;; the Newtonian formulation requires that we consider the forces
;; maintaining these constraints, whereas in the variational formu-
;; lation the constraints can be built into the coordinates

;; 1.1 Principle of Stationary Action

;; Let us suppose that for each physical system there is a path-
;; distinguishing function that is stationary on realizable paths. We
;; will try to deduce some of its properties.

;; 1. Our ordinary experience suggests that physical motion can be de-
;;   scribed by configuration paths that are continuous and smooth.3
;;   We do not see the juggling pin jump from one place to another.
;;   Nor do we see the juggling pin suddenly change the way it is moving.
;; 2. Our ordinary experience suggests that the motion of physical
;;  systems does not depend upon the entire history of the system.
;; 3. Our ordinary experience suggests that the motion of physical
;; systems is deterministic. 
;; 4.  If a path is realizable, then
;;     any segment of the path is a realizable path segment. Conversely,
;;     a path is realizable if every segment of the path is a realizable path segment.
;; 5. The realizability of a path segment depends on
;;    all points of the path in the segment.
;; 6. The realizability of a path
;;    segment depends on every point of the path segment in the same
;;    way; no part of the path is special.
;;  7. The realizability of a path
;;     segment depends only on points of the path within the segment;
;;     the realizability of a path segment is a local property.
;; Conclusion: So the path-distinguishing function aggregates some local property
;; of the system measured at each moment along the path seg-
;; ment. Each moment along the path must be treated the same way.
;; The contributions from each moment along the path segment must
;; be combined in a way that maintains the independence of the con-
;; tributions from disjoint subsegments. One method of combination
;; that satisfies these requirements is to add up the contributions,
;; making the path-distinguishing function an integral over the path
;; segment of some local property of the path.
;;
;; We will therefore build a path-distinguishing function which integrates data along a path,
;; and attains maxima/extrema on realisable paths.

;; S[path: [0, T] -> X](t1: time, t2: time) = integral_t1^t2 F[path] dt.
;;   where F: [p: [0, T] -> X] * (t: time) -> |R
;;         F can depend on the value of p at t, and the derivatives of p at t.
;; We use square brackets to describe an argument that is a function.
;; To be more formal, I guess F depends on the germ of p at t.
;; Actually, I guess it depends on the jet of p at t (?)


;; The function F measures some local property of the configura-
;; tion path γ. We can decompose F[p] into two parts: a part that
;; measures some property of a local description and a part that ex-
;; tracts a local description of the path from the path function.
;; F[p] = L . T[p]. So T is some kind of projection of the germ.
;; T[p](t0) = (t0, p(t0), p'(t0), p''(t0), \dots).
;; Right, so if we formalize F in terms of germs, this p is implicit in the construction of a germ.
;; This tuple T[p](t0) is called as the LOCAL TUPLE.
;; L is some system specfic function that captures properties of the system. Moreover, we might want to say that L
;; only looks at a finite number of components of the output of T[p](t0).

;; The final function S[path](t1, t2) = integral_t1^t2 L(T(path, t)) dt
;; is called as the Lagrangian action associated to L.

;; The Principle of Stationary Action14 asserts that for each dy-
;; namical system we can cook up a Lagrangian such that a realizable
;; path connecting the configurations at two times t1 and t2 is dis-
;; tinguished from all conceivable paths by the fact that the action
;; S[γ](t1 , t2 ) is stationary with respect to variations of the path.
;; For Lagrangians that depend only on the configuration and rate
;; of change of configuration the variations are restricted to those
;; that preserve the configurations at t1 and t2 .15






