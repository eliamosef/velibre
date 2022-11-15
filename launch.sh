#!/bin/shell

START_DATE=$(date)

DATA_PATH=$1
CITY=$2
echo "BEGIN AT: " ${START_DATE}
echo "DATA PATH AT: " ${DATA_PATH}
echo "CITY CHOSEN: " ${CITY}

bash /root/new_project/data-collect/src/main/shell/data_getter.sh ${DATA_PATH}

source /root/miniconda3/etc/profile.d/conda.sh
conda activate
python /root/new_project/data-processer/src/main/python/process.py ${DATA_PATH} ${CITY}
conda deactivate

