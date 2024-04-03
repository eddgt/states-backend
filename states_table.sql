-- Table: public.states

-- DROP TABLE IF EXISTS public.states;

CREATE TABLE IF NOT EXISTS public.states
(
    id integer NOT NULL DEFAULT nextval('states_state_id_seq'::regclass),
    name character varying(255) COLLATE pg_catalog."default" NOT NULL,
    population integer,
    counties integer,
    CONSTRAINT states_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.states
    OWNER to postgres;