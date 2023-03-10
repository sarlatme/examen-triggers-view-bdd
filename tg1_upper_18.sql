-- On donne les droits à l'utilisateur pour créer des triggers (avec l'administrateur)
-- GRANT CREATE ANY TRIGGER TO examen;

-- Creation du trigger
CREATE OR REPLACE TRIGGER tg1_upper_18_check
BEFORE INSERT OR UPDATE ON Client
FOR EACH ROW
BEGIN
  IF :NEW.age < 18 THEN
    RAISE_APPLICATION_ERROR(-20001, 'L''age doit etre superieur a 18.');
  END IF;
END;

-- Insertion pour tester le trigger
-- INSERT INTO Client VALUES (16, 'Sarlat', 12, 3);
