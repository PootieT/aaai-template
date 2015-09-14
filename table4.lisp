

(ql:quickload :rcl)
(use-package :rcl)
(r-init)



(r "bartlett.test" '((571 573 571) (572 572 570) (573 575 571)))
((:|method| "Bartlett test of homogeneity of variances")
 (:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, " "571L))")
 (:|p.value| 0.7011873875408634d0) (:|parameter| (:|df| . 2.0d0))
 (:|statistic| (:|Bartlett's K-squared| . 0.7099602261215922d0)))

;; with original 10 runs:
(r "bartlett.test" '((571 573 571)
                     (572 572 570)
                     (573 575 571)
                     (571 571 571 572 570 568 571 573 569 569 572)))

((:|method| "Bartlett test of homogeneity of variances")
 (:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, "
  "571L), c(571L, 571L, 571L, 572L, 570L, 568L, 571L, 573L, 569L, " "569L, 572L))")
 (:|p.value| 0.8634127710249012d0) (:|parameter| (:|df| . 3.0d0))
 (:|statistic| (:|Bartlett's K-squared| . 0.7414545412359859d0)))

;; fligner is non-parametric

(r "fligner.test" '((571 573 571) (572 572 570) (573 575 571)))

((:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, " "571L))")
 (:|method| "Fligner-Killeen test of homogeneity of variances") (:|p.value| 0.6703200460356405d0)
 (:|parameter| (:|df| . 2.0d0))
 (:|statistic| (:|Fligner-Killeen:med chi-squared| . 0.7999999999999959d0)))

(r "fligner.test" '((571 573 571) (572 572 570) (573 575 571) (571 571 571 572 570 568 571 573 569 569 572)))

((:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, "
  "571L), c(571L, 571L, 571L, 572L, 570L, 568L, 571L, 573L, 569L, " "569L, 572L))")
 (:|method| "Fligner-Killeen test of homogeneity of variances") (:|p.value| 0.8090943120044383d0)
 (:|parameter| (:|df| . 3.0d0))
 (:|statistic| (:|Fligner-Killeen:med chi-squared| . 0.9675867686749586d0)))


(ql:quickload :rcl)
(use-package :rcl)
(r-init)
(r "kruskal.test" '((571 573 571) (572 572 570) (573 575 571)))
((:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, " "571L))")
 (:|method| "Kruskal-Wallis rank sum test") (:|p.value| 0.47862297251123237d0)
 (:|parameter| (:|df| . 2.0d0))
 (:|statistic| (:|Kruskal-Wallis chi-squared| . 1.4736842105263144d0)))

(r "kruskal.test"
 '((571 573 571) (572 572 570) (573 575 571) (571 571 571 572 570 568 571 573 569 569 572)))
((:|data.name| "list(c(571L, 573L, 571L), c(572L, 572L, 570L), c(573L, 575L, "
  "571L), c(571L, 571L, 571L, 572L, 570L, 568L, 571L, 573L, 569L, " "569L, 572L))")
 (:|method| "Kruskal-Wallis rank sum test") (:|p.value| 0.2622950762112915d0)
 (:|parameter| (:|df| . 3.0d0))
 (:|statistic| (:|Kruskal-Wallis chi-squared| . 3.9923158452570244d0)))
