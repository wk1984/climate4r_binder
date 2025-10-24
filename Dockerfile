FROM santandermetgroup/meteohub:20250325

RUN conda env list && \
    conda --version && \
    conda init && \
    conda run climate4tf && \
    which jupyter