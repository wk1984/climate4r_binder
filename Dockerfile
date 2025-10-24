FROM santandermetgroup/meteohub:20250325

RUN conda env list && \
    conda init && \
    conda activate climate4tf && \
    which jupyter