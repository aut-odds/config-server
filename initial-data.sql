DROP TABLE IF EXISTS properties;

CREATE TABLE properties(
    application CHARACTER VARYING(32),
    profile CHARACTER VARYING(32),
    label CHARACTER VARYING(32),
    "KEY" CHARACTER VARYING(128),
    "VALUE" CHARACTER VARYING(512),
    PRIMARY KEY(application, profile, label, "KEY")
);

INSERT INTO properties VALUES ('application', 'default', 'master', 'foo', 'bar');

INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.1.en', 'Error 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.1.th', 'ตาย 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.2.en', 'Error 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.2.th', 'ตาย 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.3.en', 'Error 3');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.3.th', 'ตาย 3');

INSERT INTO properties VALUES ('application', 'encrypted-data', 'master', 'keytool.dname', '{cipher}text');

INSERT INTO properties VALUES ('config-client', 'default', 'master', 'management.endpoints.web.exposure.include', 'health,refresh');
