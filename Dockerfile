FROM r-base:3.4.0

MAINTAINER dookie23 <dookie10@gmail.com>
USER root

# Install R DEV packages
RUN R -e "install.packages(c('testthat', 'devtools', 'roxygen2'), repos='http://cloud.r-project.org/')"

# Install JSON packages
RUN R -e "install.packages(c('RJSONIO', 'rjson'), repos='http://cloud.r-project.org/')"

# Install DPLYR
RUN R -e "install.packages(c('dplyr'), repos='http://cloud.r-project.org/')"

# Install Plumber (REST services)
RUN R -e "install.packages(c('plumber'), repos='http://cloud.r-project.org/')"

# Install packages ('Other packages')
RUN R -e "install.packages(c('ltm', 'lazyeval', 'NMF', 'fitdistrplus', 'arules', 'arulesSequence', 'mvtnorm'), repos='http://cloud.r-project.org/')"

# Install Rserve
RUN R -e "install.packages(c('Rserve'))"
