select distinct SV_ZMV_IN.DSVZ_BBNREP from SV_ZMV_IN;

select * from SV_ZMV_IN where SV_ZMV_IN.PRSNUM = 50042

select * from SV_ZMV_OUT where SV_ZMV_OUT.PRSNUM = 50042

select distinct SV_ZMV_IN.PRSNUM from SV_ZMV_IN

select * from SV_ZMV_OUT where SV_ZMV_OUT.PRSNUM = 50023

select * from SV_ZMV_IN where SV_ZMV_IN.PRSNUM = 50023

select distinct SV_ZMV_IN.DSVZ_AZKK, SV_ZMV_IN.TRANSFERDATE from SV_ZMV_IN


delete from SV_ZMV_IN where SV_ZMV_IN.PRSNUM in (50042,50093, 50462, 50472, 50503);

