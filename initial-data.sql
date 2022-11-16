DROP TABLE IF EXISTS properties;

CREATE TABLE properties(
    application CHARACTER VARYING(255),
    profile CHARACTER VARYING(255),
    label CHARACTER VARYING(255),
    "KEY" CHARACTER VARYING(255),
    "VALUE" CHARACTER VARYING(255),
    PRIMARY KEY(application, profile, label, "KEY")
);

INSERT INTO properties VALUES ('application', 'default', 'master', 'foo', 'bar');

INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.1.en', 'Error 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.1.th', 'ตาย 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.2.en', 'Error 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.2.th', 'ตาย 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.3.en', 'Error 3');
INSERT INTO properties VALUES ('application', 'error-phrases', 'master', 'errorphrase.data.3.th', 'ตาย 3');

INSERT INTO properties VALUES ('application', 'encrypted-data', 'master', 'modnar', '{cipher}860a9cd598ee946a975011af9e9d1cde73efde48b555340dd372c1eb8a6f0dff');
INSERT INTO properties VALUES ('application', 'encrypted-data', 'master', 'random', '{cipher}3d3b576dff0502d6471250efc369e640bcd5736be4fcfaa603f02ace8d2dd411');
