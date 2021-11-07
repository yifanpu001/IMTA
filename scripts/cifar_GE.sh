
# run
srun -J IMTA_ge_r1 -N 1 -p RTX2080Ti -w node01 --gres gpu:1 python main_GE.py \
--gpu 0 --seed 1 \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r1 \
--data-root /home/data --data cifar100 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
--arch msdnet_ge --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 &\

srun -J IMTA_ge_r2 -N 1 -p RTX2080Ti -w node01 --gres gpu:1 python main_GE.py \
--gpu 0 --seed 2 \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r2 \
--data-root /home/data --data cifar100 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
--arch msdnet_ge --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 &\

srun -J IMTA_ge_r3 -N 1 -p RTX2080Ti -w node08 --gres gpu:1 python main_GE.py \
--gpu 0 --seed 1 \
--save /cluster/home2/hanyz/exp_multi_exits/IMTA/cifar100/ge/r3 \
--data-root /home/data --data cifar100 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
--arch msdnet_ge --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 &\
