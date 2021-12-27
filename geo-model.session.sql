-- ** DELETE TABLES ** --

-- DROP TABLE public.drivers;
-- DROP TABLE public.driver_types;
-- DROP TABLE public.climates;
-- DROP TABLE public.timezones;

-- ** SCHEMA ** -- TODO -- ADD UNIQUE AND FOREIGN KEY CONSTRAINTS !!!

CREATE TABLE public.drivers
(
    "driver_id" INT GENERATED ALWAYS AS IDENTITY,
    "driver_name" VARCHAR(60) NOT NULL,
    "driver_type_id" VARCHAR(60) NOT NULL,
    PRIMARY KEY(driver_id)
);
ALTER TABLE public.drivers OWNER TO postgres;

CREATE TABLE public.driver_types
(
    driver_type_id SMALLINT GENERATED ALWAYS AS IDENTITY,
    driver_type VARCHAR(40) NOT NULL,
    PRIMARY KEY(driver_type_id)
);
ALTER TABLE public.driver_types OWNER TO postgres;

CREATE TABLE public.climates
(
    climate_id SMALLINT GENERATED ALWAYS AS IDENTITY,
    climate_name VARCHAR(220) NOT NULL,
    PRIMARY KEY(climate_id)
);
ALTER TABLE public.climates OWNER TO postgres;

CREATE TABLE public.timezones
(
    timezone_id INT GENERATED ALWAYS AS IDENTITY,
    timezone VARCHAR(220) NOT NULL,
    PRIMARY KEY(timezone_id)
);
ALTER TABLE public.timezones OWNER TO postgres;

-- CREATE TABLE public.coutries
-- (
--     "contry_id" INT GENERATED ALWAYS AS IDENTITY,
--     "country_name" VARCHAR(180) NOT NULL,
--     "cities" INT NOT NULL,
--     "climates" INT NOT NULL,
--     "timezone_id" INT NOT NULL
-- );
-- ALTER TABLE public.countries OWNER to postgres;

-- CREATE TABLE public.cities
-- (
--     "city_id" INT GENERATED ALWAYS AS IDENTITY,
--     "city_name" VARCHAR(240) NOT NULL,
--     "country_id" INT NOT NULL,
--     "region_id" SMALLINT NOT NULL,
--     "sites" BIGINT
-- );
-- ALTER TABLE public.cities OWNER TO postgres;

-- CREATE TABLE public.regions
-- (
--     "region_id" SMALLINT GENERATED ALWAYS AS IDENTITY,
--     "region_name" VARCHAR(40) NOT NULL
-- );
-- ALTER TABLE public.regions OWNER TO postgres;



-- ****** INSERTING DATA INTO THE DB ******* --

-- INSERT INTO public.drivers ("name", "type")
-- VALUES ('BACnet', 'SERIAL'),
--         ('BACnet', 'IP_WIRED'),
--         ('LON', 'SERIAL'),
--         ('LON', 'IP_WIRED'),
--         ('MODbus', 'SERIAL'),
--         ('MODbus', 'IP_WIRED'),
--         ('MQTT', 'IP_WIRED'),
--         ('SNMP', 'IP_WIRED'),
--         ('OPC-UA', 'IP_WIRED'),
--         ('N2', 'SERIAL');




