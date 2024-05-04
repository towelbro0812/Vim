FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-devel


# Install dependencies
RUN apt-get update && apt-get install -y wget && \
    apt-get install -y git

# Install Python dependencies
COPY . /workspace
WORKDIR /workspace
RUN pip install -r vim/vim_requirements.txt
# RUN pip install -e /workspace/causal_conv1d
# RUN pip install -e /workspace/mamba-1p1p1
RUN pip install causal_conv1d==1.1.1
RUN pip install mamba-ssm==1.2.0.post1
