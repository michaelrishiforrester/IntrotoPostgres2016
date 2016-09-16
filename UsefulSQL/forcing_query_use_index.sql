
dvdrental=# create table test_no_index(id int);

dvdrental=# set enable_seqscan to false;

dvdrental=# explain select * from test_no_index where id > 12;

dvdrental=# create index new_idx_test_no_index on test_no_index(id);

dvdrental=# explain select * from test_no_index where id > 12;

dvdrental=# set random_page_cost = 2;
