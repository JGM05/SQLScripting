select PRSNUM, PRSDATENVAR.BEHIND_FLAG, PRSDATENVAR.BEHIND_ARBZEIT from PRSDATENVAR where PRSDATENVAR.BEHIND_FLAG is not null and PRSDATENVAR.Jahr = 2016 and PRSDATENVAR.MONAT = 6;