DROP TABLE IF EXISTS accounts;

CREATE TABLE accounts (
  id int(11) NOT NULL AUTO_INCREMENT,
  ad_group_id int(11) NOT NULL,
  ad_group_name varchar(100),
  actual_spend 	double,
  in_flight_spend double,
  daily_budget double,
  item_price double,
  PRIMARY KEY (id)
);

--DROP TABLE IF EXISTS accounts_AUD;

CREATE TABLE accounts_AUD (
    id              BIGINT  NOT NULL,
    REV             INTEGER NOT NULL,
    REVTYPE         TINYINT,
    ad_group_id     INT(11) NOT NULL,
    ad_group_name   VARCHAR(100),
    actual_spend    DOUBLE,
    in_flight_spend DOUBLE,
    daily_budget    DOUBLE,
    item_price      DOUBLE,
    PRIMARY KEY (id, REV)
);

--DROP TABLE IF EXISTS revinfo;

CREATE TABLE revinfo (
    rev      INTEGER GENERATED BY DEFAULT AS IDENTITY ( START WITH 1),
    revtstmp BIGINT,
    PRIMARY KEY (rev)
);

ALTER TABLE accounts_aud
    ADD CONSTRAINT
    fkllaf9w93qaiooguo8mfvwtwbg
FOREIGN KEY (REV) REFERENCES revinfo;