# Train VIM custom Dataset

## Environment

- Python 3.10.13
  - `conda create -n your_env_name python=3.10.13`

- torch 2.1.1 + cu118
  - `pip install torch==2.1.1 torchvision==0.16.1 torchaudio==2.1.1 --index-url https://download.pytorch.org/whl/cu118`

- Requirements: vim_requirements.txt
  - `pip install -r vim/vim_requirements.txt`

- Install ``causal_conv1d`` and ``mamba``
  `pip install causal_conv1d==1.1.1`
  `pip install mamba-ssm==1.2.0.post1`

## Docker 
`docker build -f Dockerfile -t vim .`
`docker run -it --gpus=all --ipc=host --name=vim vim:latest /bin/bash`

## Train Your Vim (Multi-GPU)

`bash vim/scripts/pt-vim-t.sh`

## Train Your Vim (Single-GPU)

`bash vim/scripts/one-gpu-vim.sh`

## Evaluation on Provided Weights
To evaluate `Vim-Ti` on ImageNet-1K, run:
```bash
python main.py --eval --resume /path/to/ckpt --model vim_tiny_patch16_224_bimambav2_final_pool_mean_abs_pos_embed_with_midclstok_div2 --data-path /path/to/imagenet
```

## Inference 
I also wrote a [JUPYTER](./vim/infer.ipynb) script for inference, including how to use my own data set and final inference pictures and evaluation indicators.

## Acknowledgement :heart:
This project is based on Mamba ([paper](https://arxiv.org/abs/2312.00752), [code](https://github.com/state-spaces/mamba)), Causal-Conv1d ([code](https://github.com/Dao-AILab/causal-conv1d)), DeiT ([paper](https://arxiv.org/abs/2012.12877), [code](https://github.com/facebookresearch/deit)),Vim ([paper](https://arxiv.org/abs/2401.09417), [code](https://github.com/hustvl/Vim)). Thanks for their wonderful works.