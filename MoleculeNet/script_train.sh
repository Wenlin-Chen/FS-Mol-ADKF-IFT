DATA=tox21
TDATA=tox21
NS=10
NQ=16
pretrain=1
gpu_id=0
seed=0

# nohup python -u main.py --epochs 5000 --eval_steps 10 --pretrained $pretrain \
# --n-shot-train $NS  --n-shot-test $NS --n-query $NQ --dataset $DATA --test-dataset $TDATA --seed $seed --gpu_id $gpu_id\
# > nohup_${DATA}${TDATA}-${setting}_s${NS}q${NQ} 2>&1 &

python -u -m pdb -c c main.py --epochs 5000 --eval_steps 10 --pretrained $pretrain \
--n-shot-train $NS  --n-shot-test $NS --n-query $NQ --dataset $DATA --test-dataset $TDATA --seed $seed --gpu_id $gpu_id
# > nohup_${DATA}${TDATA}-${setting}_s${NS}q${NQ} 2>&1 &