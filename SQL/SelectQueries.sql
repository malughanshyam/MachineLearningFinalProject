select count(*) from test_raw; --48707
select count(*) from training_raw; --72983

select count(*) from test_raw_with_mm_yyyy; --48707
select count(*) from training_raw_with_mm_yyyy; --72983

select count(*) from test_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30; --48707
select count(*) from training_exluding_f5_f8_f9_f10_f11_f13_f27_f28_f30; --72983