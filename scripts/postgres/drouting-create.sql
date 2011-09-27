INSERT INTO version (table_name, table_version) values ('dr_gateways','4');
CREATE TABLE dr_gateways (
    id SERIAL PRIMARY KEY NOT NULL,
    gwid VARCHAR(64) NOT NULL,
    type INTEGER DEFAULT 0 NOT NULL,
    address VARCHAR(128) NOT NULL,
    strip INTEGER DEFAULT 0 NOT NULL,
    pri_prefix VARCHAR(16) DEFAULT NULL,
    attrs VARCHAR(255) DEFAULT NULL,
    probe_mode INTEGER DEFAULT 0 NOT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

INSERT INTO version (table_name, table_version) values ('dr_rules','3');
CREATE TABLE dr_rules (
    ruleid SERIAL PRIMARY KEY NOT NULL,
    groupid VARCHAR(255) NOT NULL,
    prefix VARCHAR(64) NOT NULL,
    timerec VARCHAR(255) NOT NULL,
    priority INTEGER DEFAULT 0 NOT NULL,
    routeid VARCHAR(255) NOT NULL,
    gwlist VARCHAR(255) NOT NULL,
    attrs VARCHAR(255) DEFAULT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

INSERT INTO version (table_name, table_version) values ('dr_carriers','1');
CREATE TABLE dr_carriers (
    id SERIAL PRIMARY KEY NOT NULL,
    carrierid VARCHAR(64) NOT NULL,
    gwlist VARCHAR(255) NOT NULL,
    flags INTEGER NOT NULL,
    attrs VARCHAR(255) NOT NULL,
    description VARCHAR(128) DEFAULT ''
);

INSERT INTO version (table_name, table_version) values ('dr_groups','2');
CREATE TABLE dr_groups (
    id SERIAL PRIMARY KEY NOT NULL,
    username VARCHAR(64) NOT NULL,
    domain VARCHAR(128) DEFAULT '' NOT NULL,
    groupid INTEGER DEFAULT 0 NOT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

