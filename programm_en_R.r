# Définir les paramètres
x <- seq(-5, 5, length.out = 100)
y <- seq(-5, 5, length.out = 100)

# Créer une grille de valeurs
z <- outer(x, y, function(x, y) { exp(-((x^2 + y^2)/10)) })

# Créer la visualisation
filled.contour(x, y, z,
               color.palette = terrain.colors,
               xlab = "X",
               ylab = "Y",
               main = "Carte de contours remplie de la fonction gaussienne",
               plot.axes = {
                 axis(1)
                 axis(2)
                 contour(x, y, z, add = TRUE, drawlabels = FALSE)
               })
