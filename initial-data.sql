DROP TABLE IF EXISTS properties;

CREATE TABLE properties(
    application CHARACTER VARYING(32),
    profile CHARACTER VARYING(32),
    label CHARACTER VARYING(32),
    "KEY" CHARACTER VARYING(128),
    "VALUE" CHARACTER VARYING(512),
    PRIMARY KEY(application, profile, label, "KEY")
);

-- label=dc0
INSERT INTO properties VALUES ('application', 'default', 'dc0', 'foo', 'bar');

INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.1.en', 'Error 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.1.th', 'ตาย 1');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.2.en', 'Error 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.2.th', 'ตาย 2');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.3.en', 'Error 3');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc0', 'errorphrase.data.3.th', 'ตาย 3');

INSERT INTO properties VALUES ('application', 'encrypted-data', 'dc0', 'keytool.dname', '{cipher}text');

INSERT INTO properties VALUES ('config-client', 'default', 'dc0', 'management.endpoints.web.exposure.include', 'health,refresh');

-- label=dc1
INSERT INTO properties VALUES ('application', 'default', 'dc1', 'foo', 'bar');

INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.1.en', 'Error I');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.1.th', 'ตาย I');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.2.en', 'Error II');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.2.th', 'ตาย II');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.3.en', 'Error III');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc1', 'errorphrase.data.3.th', 'ตาย III');

INSERT INTO properties VALUES ('config-client', 'default', 'dc1', 'management.endpoints.web.exposure.include', 'health,refresh');

-- label=dc2
INSERT INTO properties VALUES ('application', 'default', 'dc2', 'foo', 'bar');

INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.1.en', 'Error |');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.1.th', 'ตาย |');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.2.en', 'Error ||');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.2.th', 'ตาย ||');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.3.en', 'Error |||');
INSERT INTO properties VALUES ('application', 'error-phrases', 'dc2', 'errorphrase.data.3.th', 'ตาย |||');

INSERT INTO properties VALUES ('config-client', 'default', 'dc2', 'management.endpoints.web.exposure.include', 'health,refresh');
