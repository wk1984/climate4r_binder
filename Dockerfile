FROM santandermetgroup/meteohub:20250325

RUN conda env list && \
    conda --version && \
    conda init && \
    source /home/jovyan/.bashrc && \
    conda activate climate4tf && \
    which jupyter