-- Table: public.counties

-- DROP TABLE IF EXISTS public.counties;

CREATE TABLE IF NOT EXISTS public.counties
(
    id integer NOT NULL DEFAULT nextval('counties_county_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    population integer,
    state_id integer,
    CONSTRAINT counties_pkey PRIMARY KEY (id),
    CONSTRAINT counties_state_id_fkey FOREIGN KEY (state_id)
        REFERENCES public.states (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.counties
    OWNER to postgres;