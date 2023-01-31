from wicked_expressions:api import Scoreboard, Data

objective_0 = Scoreboard('objective_0')
storage_0 = Data.storage('test:storage_0')
score_0 = objective_0['$score_0']
data_0 = storage_0['data_0']




# if exists check

function ./if_exists_score:
    if score_0:
        say true
    else:
        say false

    if not objective_0['$holder']:
        say true
    else:
        say false

function ./if_exists_data:
    if data_0:
        say true
    else:
        say false

    if not storage_0['nbt_path']:
        say true
    else:
        say false



# ==

function ./eq_score_int:
    if score_0 == 10:
        say true
    else:
        say false

function ./eq_score_score:
    if score_0 == score_0:
        say true
    else:
        say false

function ./eq_score_data:
    if score_0 == data_0:
        say true
    else:
        say false

function ./eq_data_any:
    if data_0 == 0.5:
        say true
    else:
        say false

function ./eq_data_score:
    if data_0 == score_0:
        say true
    else:
        say false

function ./eq_data_data:
    if data_0 == data_0:
        say true
    else:
        say false


# !=

function ./ne_score_int:
    if score_0 != 10:
        say true
    else:
        say false

function ./ne_score_score:
    if score_0 != score_0:
        say true
    else:
        say false

function ./ne_score_data:
    if score_0 != data_0:
        say true
    else:
        say false

function ./ne_data_any:
    if data_0 != 0.5:
        say true
    else:
        say false

function ./ne_data_score:
    if data_0 != score_0:
        say true
    else:
        say false

function ./ne_data_data:
    if data_0 != data_0:
        say true
    else:
        say false


# <

function ./lt_score_int:
    if score_0 < 10:
        say true
    else:
        say false

function ./lt_score_score:
    if score_0 < score_0:
        say true
    else:
        say false

function ./lt_score_data:
    if score_0 < data_0:
        say true
    else:
        say false

function ./lt_data_any:
    if data_0 < 10:
        say true
    else:
        say false

function ./lt_data_score:
    if data_0 < score_0:
        say true
    else:
        say false

function ./lt_data_data:
    if data_0 < data_0:
        say true
    else:
        say false


# >

function ./gt_score_int:
    if score_0 > 10:
        say true
    else:
        say false

function ./gt_score_score:
    if score_0 > score_0:
        say true
    else:
        say false

function ./gt_score_data:
    if score_0 > data_0:
        say true
    else:
        say false

function ./gt_data_any:
    if data_0 > 10:
        say true
    else:
        say false

function ./gt_data_score:
    if data_0 > score_0:
        say true
    else:
        say false

function ./gt_data_data:
    if data_0 > data_0:
        say true
    else:
        say false


# <= 

function ./le_score_int:
    if score_0 <= 10:
        say true
    else:
        say false

function ./le_score_score:
    if score_0 <= score_0:
        say true
    else:
        say false

function ./le_score_data:
    if score_0 <= data_0:
        say true
    else:
        say false

function ./le_data_any:
    if data_0 <= 10:
        say true
    else:
        say false

function ./le_data_score:
    if data_0 <= score_0:
        say true
    else:
        say false

function ./le_data_data:
    if data_0 <= data_0:
        say true
    else:
        say false


# >=

function ./ge_score_int:
    if score_0 >= 10:
        say true
    else:
        say false

function ./ge_score_score:
    if score_0 >= score_0:
        say true
    else:
        say false

function ./ge_score_data:
    if score_0 >= data_0:
        say true
    else:
        say false

function ./ge_data_any:
    if data_0 >= 10:
        say true
    else:
        say false

function ./ge_data_score:
    if data_0 >= score_0:
        say true
    else:
        say false

function ./ge_data_data:
    if data_0 >= data_0:
        say true
    else:
        say false

