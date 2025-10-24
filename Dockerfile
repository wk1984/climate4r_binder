FROM santandermetgroup/meteohub:20250325

USER root

RUN conda env list && \
    conda --version && \
    conda init && \
    source activate && \
    conda activate climate4tf && \
    which jupyter