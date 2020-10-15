Bootstrap: docker
From: ubuntu:18.04


%environment
    CONDA_INSTALL_PATH="/usr/local/miniconda3"
    CONDA_BIN_PATH="/usr/local/miniconda3/bin"
    export PATH="$CONDA_BIN_PATH:$PATH"


%files
    scripts/1_samtools_install.sh /opt
    scripts/2_miniconda_install.sh /opt
    scripts/3_asffast_activate.sh /opt


%post
    cd $HOME
    export DEBIAN_FRONTEND=noninteractive
    apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    unzip \
    gcc \
    python-dev \
    python-pip \
    python3-dev \
    python3-pip \
    python-numpy \
    python-matplotlib \
    python-setuptools \
    pkg-config \
    apt-transport-https \
    && apt-get update \
    && apt-get upgrade
    bash /opt/1_samtools_install.sh
    bash /opt/2_miniconda_install.sh
    export PATH="/usr/local/miniconda3/bin:$PATH"
    bash /opt/3_asffast_activate.sh
