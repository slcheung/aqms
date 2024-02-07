-- Equipment 1: Wind lidar not in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date, retire_date)
values (1, 'lidar', 'Wind A100', 'A100', '123456', '2020-01-01', '2021-03-31');

-- Equipment 2: Wind lidar in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (2, 'lidar', 'Wind A200', 'A200', '123457', '2020-01-01');

-- Equipment 3: O3 lidar in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (3, 'lidar', 'PTC O3', 'O300', '123458', '2020-01-01');

-- Equipment 4: PM sensor in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (4, 'sensor', 'PM sensor', 'F123', '000001', '2020-01-01');

-- Equipment 5: PM sensor in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (5, 'sensor', 'PM sensor', 'F123', '000002', '2020-01-01');

-- Equipment 6: NOx sensor in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (6, 'sensor', 'NOx sensor', 'N80', '900001', '2020-01-01');

-- Equipment 7: NOx sensor in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (7, 'sensor', 'NOx sensor', 'N80', '900002', '2020-01-01');

-- Equipment 8: Monitoring station in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (8, 'station', 'Monitoring Station', 'ST', '30001', '2020-01-01');

-- Equipment 9: Monitoring station in use
insert into equipment (equip_id, equip_type, equip_name, equip_model, equip_sn, operate_date)
values (9, 'station', 'Monitoring Station', 'TP', '30002', '2020-01-01');



select * 
from equipment;