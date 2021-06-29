(define ((L-free-particle mass) local)
  (let ((v (velocity local)))
  (* 1/2 mass (dot-product v v))))

(define q
  (up (literal-function 'x)
      (literal-function 'y)
      (literal-function 'z)))

(q 't)
;; crazy!
(show-expression (q 't))

(show-expression ((D q) 't))

;; three tuple of (t, pos, vel). Why not higher?
(show-expression ((Gamma q) 't))

;; incorrect: assumes the (vel) is the third component of q!
(show-expression
  ((compose (L-free-particle 'm) q) 't))

;; correct: extracts out velocity as the third component.
(show-expression
  ((compose (L-free-particle 'm) (Gamma q)) 't))



(define (Lagrangian-action L q t1 t2)
  (definite-integral (compose L (Gamma q)) t1 t2))



(define (test-path t) (up (+ (* 4 t) 7) (+ (* 3 t) 5) (+ (* 2 t) 1)))
(show-expression (test-path 't))

(Lagrangian-action (L-free-particle 3.0) test-path 0.0 10.0)

;; Ex1.4: Lagrangian action
;; L(t, x, v) ≡ 1/2mv²
;; Let x be coordinate of constant vel. straight-line path such that xa= x(ta) and xb = x(tb).
;; Show that the action of the solution path is 1/2m (xb - xa)/(tb - ta)².
;; Solution: the velocity of the path is v ≡ (xb - xa)/(tb - ta). The lagrangian is
;; L ≡ 1/2mv². Substitute and we are done.



;; Paths of minimum action.

;; We already know that a free particle should travel in a straight line. We can verify this,
;; by checking the action of perturbed paths.


;; η is function that decays ν at endpoints t1 and t2.
(define ((make-eta nu t1 t2) t)
  (* (- t t1) (- t t2) (nu t)))

;; create path: q + ε (η ν) to keep endpoints of q fixed, while varying path q by εν.
(define ((varied-free-particle-action mass q nu t1 t2) epsilon)
  (let ((eta (make-eta nu t1 t2)))
    (Lagrangian-action (L-free-particle mass)
    (+ q (* epsilon eta))
    t1 t2)))

;; noise-path(t) = (sin(t), cos(t) t²)
(define noise-path (up sin cos square))


;; test-path was the straight line path.
(Lagrangian-action (L-free-particle 3.0) test-path 0.0 10.0) ;; 435

;; for ε = 0.001, we get 436.
((varied-free-particle-action 3.0 test-path noise-path 0.0 10.0) 0.001) ;; 436.

;; find minimum value for (varied-free-particle-action) by varying ε between [-2, 2]
(minimize (varied-free-particle-action 3.0 test-path (up sin cos square) 0.0 10.0)
	  -2.0 2.0)
;; minimum value was obtained at:
;; ε = -1.5765166949677223e-14 ~= 0
;; minimum value was = 434.99999999999983 ~= 435
;; 5 iterations were used.

;; Finding trajectories that minimize the action
;; =============================================
;; We can *find* the best trajectory

;; evaluate the Lagrangian on the parametric paths given by qs, with
;; p(t0) = q0, p(t1) = q1, and spread time equally to lerp between the qs.
(define ((evaluate-parametric-path-action L t0 q0 t1 q1) qs)
    (let ((gamma (make-path t0 q0 t1 q1 qs)))
      (Lagrangian-action L gamma t0 t1)))

;; find path with n parameters, such that p(t0) = q0, p(t1) = q1
;; which minimizes L
(define (find-path-minimizing-L L t0 q0 t1 q1 n)
  (let ((initial-qs (linear-interpolants q0 q1 n))) ;; start with straight line
  (let ((minimizing-qs (multidimensional-minimize
			   (parametric-path-action L t0 q0 t1 q1) initial-qs)))
    (make-path t0 q0 t1 q1 minimizing-qs))))

(+ 1 2)
(define q-free-particle (find-path-minimizing-L (L-free-particle 3.0) 0.0 0.0 10.0 10.0 3))
(define win (frame -20 20 -20 20 500 500))
;; plot function from 0 to 10, sampling at 0.1 interval
(plot-function win q-free-particle 0 10.0 0.1) ;; see that this plots a straight line!
(map q-free-particle (iota 10 1))







