FROM santandermetgroup/meteohub:20250325

RUN conda env list && \
    conda activate climate4tf && \
    which jupyter