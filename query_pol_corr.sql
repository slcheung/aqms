-- To query the correlation between pollutants NO2 
-- PM10 at a particular datetime 2022-10-10 from 
-- hour 11 to 13
with avg_pol as (
select ed.poltype pol, extract(hour from ed.record_date) hr, avg(ed.polval) avg_val
from equip_data ed
where extract(year from record_date) = '2022' 
and extract(month from record_date) = '10' 
and extract(day from record_date) = '10' 
group by pol, hr
),
get_avg_no2 as (
select hr, avg_val avg_no2
	from avg_pol
	where pol = 'NO2'
),
get_avg_pm10 as (
select hr, avg_val avg_pm10
	from avg_pol
	where pol = 'PM10'
) 
select corr(no2.avg_no2, pm10.avg_pm10) corr_no2_pm10
from get_avg_no2 no2
join get_avg_pm10 pm10 on no2.hr = pm10.hr
