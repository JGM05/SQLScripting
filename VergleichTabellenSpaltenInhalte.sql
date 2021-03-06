SELECT SV_ORGEINHEIT.BETRIEBSNUM, SV_ORGEINHEIT.BETRIEBSNUM_DAV as DAVNEU, SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_DAV as DAVALT 
from SV_ORGEINHEIT inner join SV_ORGEINHEIT_ECHTS on SV_ORGEINHEIT.BETRIEBSNUM = SV_ORGEINHEIT_ECHTS.BETRIEBSNUM 
where SV_ORGEINHEIT.BETRIEBSNUM_DAV <> SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_DAV
UNION
SELECT SV_ORGEINHEIT.BETRIEBSNUM, SV_ORGEINHEIT.BETRIEBSNUM_AST as ASTNEU, SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_AST as ASTALT 
from SV_ORGEINHEIT inner join SV_ORGEINHEIT_ECHTS on SV_ORGEINHEIT.BETRIEBSNUM = SV_ORGEINHEIT_ECHTS.BETRIEBSNUM 
where SV_ORGEINHEIT.BETRIEBSNUM_AST <> SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_AST;

SELECT SV_ORGEINHEIT.BETRIEBSNUM, SV_ORGEINHEIT.BETRIEBSNUM_AST as ASTNEU, SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_AST as ASTALT 
from SV_ORGEINHEIT inner join SV_ORGEINHEIT_ECHTS on SV_ORGEINHEIT.BETRIEBSNUM = SV_ORGEINHEIT_ECHTS.BETRIEBSNUM 
where SV_ORGEINHEIT.BETRIEBSNUM_AST <> SV_ORGEINHEIT_ECHTS.BETRIEBSNUM_AST;