insert into PRSKSTSTL (PRSKSTSTL.PRSNUM, PRSKSTSTL.ARBVHID, PRSKSTSTL.GUELTIGAB, PRSKSTSTL.KSTSTL, PRSKSTSTL.ANTEIL, PRSKSTSTL.HAUPTKSTSTL, PRSKSTSTL.CREATEDDATE)
select PRSDATEN.PRSNUM, PRSARBVH.ID, '01.01.2017 00:00:00', '352990', 100.00, 'T', '23.01.2017' from PRSDATEN
left join PRSARBVH on PRSDATEN.PRSNUM = PRSARBVH.PRSNUM


