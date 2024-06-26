CUDA_VISIBLE_DEVICES=3,4 python ada_train.py --task ada_mot --exp_id mot17_half_dla34 --gpus 0,1 --load_model './models/ctdet_coco_dla_2x.pth' --data_cfg '/data/users/litianhao/AdaMOT/src/lib/cfg/mot17_half.json' --print_iter 1

CUDA_VISIBLE_DEVICES=0 python ada_track.py --task mot --load_model ./exp/ada_mot/mot17_half_dla34/model_last.pth --conf_thres 0.4 --val_mot17 True --exp_id mot17_half_dla34-mot17_half_th04


CUDA_VISIBLE_DEVICES=0,3 python ada_train.py --task ada_mot --exp_id crowdhuman_dla34 --gpus 0,1 --load_model './models/ctdet_coco_dla_2x.pth' --data_cfg '/data/users/litianhao/AdaMOT/src/lib/cfg/crowdhuman.json' --print_iter 1 --batch_size 12