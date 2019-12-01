--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

-- Started on 2019-12-01 12:01:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16837)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16895)
-- Name: dept_employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_employees (
    emp_no character varying,
    dept_no character varying,
    from_date date,
    to_date date
);


ALTER TABLE public.dept_employees OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16829)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no character varying NOT NULL,
    birth_date date,
    first_name character varying,
    last_name character varying,
    gender character varying,
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16856)
-- Name: managers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.managers (
    dept_no character varying,
    emp_no character varying,
    from_date date,
    to_date date
);


ALTER TABLE public.managers OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16872)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    emp_no character varying,
    salary integer,
    from_date date,
    to_date date
);


ALTER TABLE public.salary OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16883)
-- Name: title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.title (
    emp_no character varying,
    title character varying,
    from_date date,
    to_date date
);


ALTER TABLE public.title OWNER TO postgres;

--
-- TOC entry 2712 (class 2606 OID 16844)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


--
-- TOC entry 2710 (class 2606 OID 16836)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);


--
-- TOC entry 2717 (class 2606 OID 16901)
-- Name: dept_employees dept_employees_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_employees
    ADD CONSTRAINT dept_employees_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2713 (class 2606 OID 16862)
-- Name: managers managers_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2714 (class 2606 OID 16867)
-- Name: managers managers_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2715 (class 2606 OID 16878)
-- Name: salary salary_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2716 (class 2606 OID 16889)
-- Name: title title_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.title
    ADD CONSTRAINT title_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2019-12-01 12:01:11

--
-- PostgreSQL database dump complete
--

