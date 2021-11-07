CUDA_VISIBLE_DEVICES=9 python main_IMTA_fromscratch.py \
--save /data1/hanyz/exp_multi_exits/IMTA/cifar100/imta_fromscratch/r1 \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 1 \
--arch msdnet_ge_isc --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &&\

CUDA_VISIBLE_DEVICES=9 python main_IMTA_fromscratch.py \
--save /data1/hanyz/exp_multi_exits/IMTA/cifar100/imta_fromscratch/r2 \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 2 \
--arch msdnet_ge_isc --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &&\

CUDA_VISIBLE_DEVICES=9 python main_IMTA_fromscratch.py \
--save /data1/hanyz/exp_multi_exits/IMTA/cifar100/imta_fromscratch/r3 \
--data-root /home/data --data cifar100 \
--gpu 0 --seed 3 \
--arch msdnet_ge_isc --nBlocks 5 --stepmode lin_grow --step 1 --base 1 --nChannels 16 --grFactor 1-2-4 --bnFactor 1-2-4 \
--epochs 300 --batch-size 512 --lr 0.8 --lr-type cosine -j 8 \
-T 1.0 --gamma 0.1 &\