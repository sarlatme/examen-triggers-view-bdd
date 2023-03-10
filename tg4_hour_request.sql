-- CREATE OR REPLACE TRIGGER tg4_time_check
-- BEFORE INSERT OR UPDATE OR DELETE ON Vin
-- DECLARE
--    current_hour NUMBER;
-- BEGIN
--    SELECT TO_NUMBER(TO_CHAR(SYSDATE, 'HH24')) INTO current_hour FROM DUAL;
--    IF current_hour >= 22 OR current_hour < 6 THEN
--       RAISE_APPLICATION_ERROR(-20001, 'Les requetes sur la table Vin ne sont pas autorisees entre 22h et 6h.');
--    END IF;
-- END;


-- Requete a faire
