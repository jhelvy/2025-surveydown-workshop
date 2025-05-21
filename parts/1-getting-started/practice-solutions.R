# 1

# Create values
area_sf <- 47
area_chicago <- 228
area_dc <- 61
pop_sf <- 884
pop_chicago <- 2716
pop_dc <- 694

# Compute densities
dens_sf <- pop_sf / area_sf
dens_chicago <- pop_chicago / area_chicago
dens_dc <- pop_dc / area_dc
dens_sf
dens_chicago
dens_dc

# Compute addition DC population to match SF density
(dens_sf*area_dc) - pop_dc

# 2

w <- TRUE
x <- FALSE
y <- TRUE

! (w == x) & ! (y == x)

! (w & !x) | (y & x)

# For an explanation of why this works, check out this chat:
# https://chat.openai.com/share/f4d2378f-8c9b-449a-afb3-1b4fc8bd30be
