-- Transacción opcional para asegurar que todos los inserts se hagan juntos
BEGIN;

-- Inserta primero en la tabla company
INSERT INTO company ("name", founder, foundation_date) 
VALUES ('Facebook', 'Mark Zuckerberg', '2004-02-04');

INSERT INTO company ("name", founder, foundation_date)
VALUES ('Google', 'Larry Page', '1998-09-04');

-- Inserta en la tabla web_site
INSERT INTO web_site (id_company, "name", category, description)
VALUES (1, 'Facebook', 'social network', 'Is an American online social media and social networking service owned by Facebook, Inc.');

INSERT INTO web_site (id_company, "name", category, description)
VALUES (1, 'Instagram', 'social network', 'Is an American online social media and social networking service owned by Facebook, Inc.');

INSERT INTO web_site (id_company, "name", category, description)
VALUES (1, 'WhatsApp', 'services', 'Is an American chat service owned by Facebook, Inc.');

INSERT INTO web_site (id_company, "name", category, description)
VALUES (2, 'Gmail', 'services', 'Is an American email service owned by Google, Inc.');

INSERT INTO web_site (id_company, "name", category, description)
VALUES (2, 'YouTube', 'streaming', 'Is an American online streaming service owned by Google, Inc.');

INSERT INTO web_site (id_company, "name", category, description)
VALUES (2, 'Google Cloud Platform', 'cloud computing', 'Is an American cloud computing service owned by Google, Inc.');

-- Termina la transacción
COMMIT;

