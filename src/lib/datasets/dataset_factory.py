'''
Author: annzstbl@tianhaoli1996@gmail.com
Date: 2024-05-14 10:50:41
LastEditors: annzstbl@tianhaoli1996@gmail.com
LastEditTime: 2024-05-14 10:57:49
FilePath: /AdaMOT/src/lib/datasets/dataset_factory.py
Description: 

Copyright (c) 2024 by ${annzstbl}, All Rights Reserved. 
'''
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from .dataset.ada_jde import AdaJointDataset
# from .dataset.jde import JointDataset


def get_dataset(dataset, task):
    if task == 'mot':
        raise ValueError('MOT dataset is not supported in this version.')
        # return JointDataset
    elif task == 'ada_mot':
        return AdaJointDataset
    else:
        return None
