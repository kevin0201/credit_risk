
library(poisson)

# lamda représente l'intensité du processus c'est à dire la quantité moyenne de survenance des évènements...
# puisque nous somme dans un contexte de défaut nous prenons un lamda petit qui matérialise la rareté des évèneents...

# On simule 20 loi de poisson et on le plot
# Les évènement vont des plus sensible au moins sensible...
# une loi de poisson représente 
# On a un portefeuille de 20 crédits, donc 20 débiteurs différents num.events = 20
# pour chaque ddébiteurs on simule un procéssus de poisson...

pois_proc_sys = hpp.plot(rate=3, num.events=20, num.sims = 20)

Zi = c()

j = 2
     
for (i in 1:20){
  
      Zi[i] = pois_proc_sys$x[j,i]
      j=j+1
}

# On ordonne 

Zi = sort(Zi)
   
# Factor idiosyncratic

