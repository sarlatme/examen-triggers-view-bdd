-- CREATE OR REPLACE TRIGGER tg3_contenance_check
-- BEFORE INSERT OR UPDATE ON Article
-- FOR EACH ROW
-- DECLARE
--    contenance_min NUMBER := 25;
-- BEGIN
--    IF :NEW.contenance < contenance_min THEN
--       RAISE_APPLICATION_ERROR(-20001, 'La contenance doit etre superieure a 25.');
--    ELSIF UPDATING AND :NEW.contenance <= :OLD.contenance THEN
--       RAISE_APPLICATION_ERROR(-20002, 'La nouvelle contenance doit etre superieure a la contenance actuelle.');
--    END IF;
-- END;

-- Test insert
-- INSERT INTO Article VALUES(251, TO_DATE('1981','yyyy'), 10, 37.77, 64);

-- Test update
UPDATE Article SET contenance = 50 WHERE idarticle = 131;

