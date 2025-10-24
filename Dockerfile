FROM santandermetgroup/meteohub:20250325

USER root

RUN conda env list && \
    conda --version && \
    conda init && \
    source activate && \
    conda activate climate4tf && \
	mamba install r-devtools -c conda-forge && \
    which jupyter && \
	R -e "library(devtools);install_github('jasonleebrown/machisplin')"
    
USER jovyan
WORKDIR /home/jovyan

RUN echo "reticulate::use_condaenv('climate4tf')" > "/home/jovyan/.Rprofile"

RUN wget https://raw.githubusercontent.com/wk1984/climate4r_binder/refs/heads/main/demo_downscaleR.ipynb && \
    wget https://raw.githubusercontent.com/wk1984/climate4r_binder/refs/heads/main/demo_downscaleR_keras.ipynb