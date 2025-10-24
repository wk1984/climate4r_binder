FROM santandermetgroup/meteohub:20250325

USER root

RUN conda env list && \
    conda --version && \
    conda init && \
    source activate && \
    conda activate climate4tf && \
    which jupyter
    
USER jovyan
WORKDIR /home/jovyan
RUN wget https://raw.githubusercontent.com/wk1984/climate4r_binder/refs/heads/main/demo_downscaleR.ipynb && \
    wget https://raw.githubusercontent.com/wk1984/climate4r_binder/refs/heads/main/demo_downscaleR_keras.ipynb