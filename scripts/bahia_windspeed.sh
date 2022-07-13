for pred_len in 24 48 168 336 720
do
    python -u main_informer.py --model informer --data Windspeed --features MS --attn prob \
    --e_layers 3 --d_layers 2 --seq_len 24 --label_len 24 --pred_len $pred_len \
    --des "WindspeedMS_sl24_ll24_pl${pred_len}_ep50_lr1e-4" \
    --train_epochs 50

    python -u main_informer.py --model informer --data Windspeed --features MS --attn prob \
    --e_layers 3 --d_layers 2 --seq_len 48 --label_len 48 --pred_len $pred_len \
    --des "WindspeedMS_sl24_ll24_pl${pred_len}_ep50_lr1e-4" \
    --train_epochs 50

    python -u main_informer.py --model informer --data Windspeed --features MS --attn prob \
    --e_layers 3 --d_layers 2 --seq_len 168 --label_len 168 --pred_len $pred_len \
    --des "WindspeedMS_sl24_ll24_pl${pred_len}_ep50_lr1e-4" \
    --train_epochs 50

    python -u main_informer.py --model informer --data Windspeed --features MS --attn prob \
    --e_layers 3 --d_layers 2 --seq_len 336 --label_len 168 --pred_len $pred_len \
    --des "WindspeedMS_sl24_ll24_pl${pred_len}_ep50_lr1e-4" \
    --train_epochs 50

    python -u main_informer.py --model informer --data Windspeed --features MS --attn prob \
    --e_layers 3 --d_layers 2 --seq_len 720 --label_len 336 --pred_len $pred_len \
    --des "WindspeedMS_sl24_ll24_pl${pred_len}_ep50_lr1e-4" \
    --train_epochs 50
done