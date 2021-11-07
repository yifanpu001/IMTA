# # # # # debug
# srun -J IMTA_ft_debug -N 1 -p TITANXP -w node02 --gres gpu:1 python main_IMTA.py \
# --save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/imta/debug/r2 \
# --pretrained /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r1/save_models/checkpoint.pth.tar \
# --data-root /home/data --data cifar100 \
# --gpu 0 --seed 1 \
# --arch IMTA_MSDNet --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
# --epochs 5 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
# -T 1.0 --gamma 0.1 &\


# # # # # run
srun -J IMTA_ft_r1 -N 1 -p RTX2080Ti -w node08 --gres gpu:1 python main_IMTA.py \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/imta/r1 \
--pretrained /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r1/save_models/model_best.pth.tar \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 1 \
--arch IMTA_MSDNet --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 180 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &\

srun -J IMTA_ft_r2 -N 1 -p RTX2080Ti -w node08 --gres gpu:1 python main_IMTA.py \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/imta/r2 \
--pretrained /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r2/save_models/model_best.pth.tar \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 2 \
--arch IMTA_MSDNet --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 180 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &\

srun -J IMTA_ft_r3 -N 1 -p RTX2080Ti -w node08 --gres gpu:1 python main_IMTA.py \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/imta/r3 \
--pretrained /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r3/save_models/model_best.pth.tar \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 3 \
--arch IMTA_MSDNet --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 180 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &\