list.of.packages <- c(
  'mvtnorm'
);

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, 'Package'])]

if (length(new.packages)) install.packages(new.packages, repos = 'https://cran.ma.imperial.ac.uk')
