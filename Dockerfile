FROM ubuntu:24.04
RUN apt-get update && apt-get install -y -q --no-install-recommends \
        python3 \
        python3-venv \
        python3-pip \
      && rm -rf /var/lib/apt/lists/* \
      && rm -rf /var/cache/*
WORKDIR /opt/StaticJinjaPlus
ADD https://github.com/MrDave/StaticJinjaPlus.git /opt/StaticJinjaPlus
RUN python3 -m venv venv \
    && venv/bin/pip install --no-cache-dir -r requirements.txt
ENTRYPOINT ["./venv/bin/python", "main.py"]
CMD ["--srcpath=data/templates/", "--outpath=data/build/"]



