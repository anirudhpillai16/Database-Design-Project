--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: Instabook; Type: SCHEMA; Schema: -; Owner: aanirudh
--

CREATE SCHEMA "Instabook";


ALTER SCHEMA "Instabook" OWNER TO aanirudh;

SET search_path = "Instabook", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: book; Type: TABLE; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

CREATE TABLE book (
    author_fname character varying(255),
    author_lname character varying(255),
    title character varying(255),
    price integer,
    isbn integer NOT NULL,
    category_id integer,
    edition character varying(255),
    publisher character varying(255),
    quantity integer NOT NULL
);


ALTER TABLE "Instabook".book OWNER TO aanirudh;

--
-- Name: category; Type: TABLE; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

CREATE TABLE category (
    category_id integer NOT NULL,
    category_name character varying(255)
);


ALTER TABLE "Instabook".category OWNER TO aanirudh;

--
-- Name: customer; Type: TABLE; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

CREATE TABLE customer (
    cus_fname character varying(255),
    cus_lname character varying(255),
    email character varying(255) NOT NULL,
    address character varying(255),
    city character varying(255),
    state character varying(255),
    zip bigint,
    phone bigint,
    card character varying(255)
);


ALTER TABLE "Instabook".customer OWNER TO aanirudh;

--
-- Name: employee; Type: TABLE; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

CREATE TABLE employee (
    emp_id integer NOT NULL,
    emp_fname character varying(255),
    emp_lname character varying(255),
    emp_email character varying(255)
);


ALTER TABLE "Instabook".employee OWNER TO aanirudh;

--
-- Name: orders; Type: TABLE; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

CREATE TABLE orders (
    order_id integer,
    email character varying(255),
    isbn bigint,
    quantity integer NOT NULL,
    order_date date
);


ALTER TABLE "Instabook".orders OWNER TO aanirudh;

--
-- Data for Name: book; Type: TABLE DATA; Schema: Instabook; Owner: aanirudh
--

COPY book (author_fname, author_lname, title, price, isbn, category_id, edition, publisher, quantity) FROM stdin;
Stewart	Lynette	Palms for the home and garden	15	20714270	66	Hardcover	Angus & Robertson	8
Garfield	Sobers	Health Today	6	536610304	33	Paperback	Angus & Robertson	2
Bruce Edward	Moon	Existential art therapy: the canvas mirror	20	398059993	33	Hardcover	C.C. Thomas	10
Daniel	Vettori	Modern Art (Essential Art)	50	752553569	22	Hardcover	Parragon Publishing	12
Kenneth	Brookbank	Educational administration	8	58203339	55	Paperback	Longman	14
Clive	Beck	Moral education:interdisciplinary approaches	10	809117568	55	Paperback	Newman P	1
Rupert	Greer	Building Societies	14	716313197	77	Hardcover	Fabian Society	6
John P	McKay	Western Society	25	230594530	77	Paperback	Scholastic	20
Carolyn	Gage	The second coming of Joan of Arc and other plays	12	939821060	88	Paperback	Herbooks	9
Kristin	Hannah	Angel Falls	30	609605925	88	Hardback	Crown Publishers	16
Frank	Rosenow	Manual Art	50	393013987	22	Hardcover	Norton	25
John D	Radebaugh	International Business	21	1314097634	11	Paperback	McGraw	7
RS	Bharadwaj	Business Statistics	30	978817466	11	Paperback	Schand	15
John D	Roscecrance	Gambling without guilt:the legitimation of an American \r\n\r\npastime	61	534089542	99	Paperback	Brooks/Cole Pub. Co	50
Stephen	Bugg	Understanding Art	11	590531301	22	Paperback	Scholastic	5
Jean	Ferris	Across the grain	13	374300305	88	Paperback	Farrar Straus Giroux	4
Riccardo	Poli	Genetic Programming	23	2147483647	44	Hardcover	Springer	11
David	Bowie	Better Homes and Gardens New Garden Book	5	696025574	66	Paperback	Meredith	3
Siv Cedering	Fox	Joys of fantasy:the book for loving couples	5	812821823	88	Paperback	Stein and Day	31
Joyce	Farrell	Java Programming	24	1111578354	44	Paperback	ButterWorths	21
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: Instabook; Owner: aanirudh
--

COPY category (category_id, category_name) FROM stdin;
11	Business
22	Arts
33	Health
44	Programming
55	Education
66	Home & Garden
77	Society
88	Fiction
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: Instabook; Owner: aanirudh
--

COPY customer (cus_fname, cus_lname, email, address, city, state, zip, phone, card) FROM stdin;
Anika	Hopper	ahopper@gmail.com	754-742 Non Av	Fayetteville	AR	72701	9085748736	Credit
Neve	Santana	nsantana@hotmail.com	P.O. Box 559, 8827 Cursus Ave	Annapolis	MD	21401	8180576134	Credit
Christopher	Haley	chaley@yahoo.com	Ap #259-9730 Non, St	Tulsa	OK	74103	3666023575	Debit
Jameson	Bright	jamesbright@gmail.com	706-2855 Laoreet Rd.	Eugene	OR	97401	6526866931	Debit
Jescie	Holloway	jholloway@hotmail.com	Ap #757-1842 Odio Street	Chicago	IL	60290	7826692428	Credit
Alika	Rocha	alirocha@nytimes.com	P.O. Box 548, 3946 Sed Avenue	Baton Rouge	LA	70801	917084895	Credit
Xavier	Pollard	xpollard@hotmail.com	P.O. Box 528986 Lectus Avenue	Tacoma	WA	98402	916491741	Credit
Raya	Gregory	ragreg@yahoo.com	Ap #661-4800 Velit. St.	Worcester	MA	1606	9634699121	Debit
Hyatt	Barlow	hbarlow@yahoo.com	777-4344 Commodo Ave.	Duluth	MN	55801	9634699121	Credit
Barclay	Hale	barkhl@hotmail.com	5889 Vel, Road	Saint Paul	MN	55104	4302352231	Debit
Chase	Wilkinson	cwilkinson@aol.com	Ap #359-4838 Sed Road	Mobile	AL	36601	2946205743	Credit
Rana	Livingston	ranliving@yahoo.com	3261 Feugiat Rd.	San Francisco	CA	94130	7976086012	Credit
Wendy	Ryan	wenry@usc.com	765-8607 Nulla. Street	Los Angles	CA	90007	2333550911	Credit
Cheyenne	Webb	nec@eu.ca	P.O. Box 3425558 Consequat Rd	Henderson	NV	89002	9330459712	Debit
Heather	Melton	metus@eget.co.uk	2960 Cras Rd.	Henderson	NV	89006	9330459132	Credit
Kylan	Sandoval	ksandvol@hotmail.com	4469 Dis St.	San Francisco	CA	94128	7848692955	Debit
Neve	Baker	nebaker@west.com	Ap #353-8103 Mus. Road	Salem	OR	97304	5163591898	Credit
Kamal	Stanley	kstanley@gmail.com	P.O. Box 874, 3021 Ultrices Road	Phoenix	AZ	85009	8064611565	Debit
Isadora	Armstrong	isarmstrong@gmail.com	5396 Auctor Av	Phoenix	AZ	85005	9805960134	Debit
Wang	Stone	feugiat@gravida.org	Ap #641-2871 Sagittis Avenue	Eugene	OR	97403	8834208044	Credit
Tana	Thomas	tthomas@go.org	642-3799 Vestibulum Rd	Salt Lake City	UT	84101	8518715784	Credit
Zeus	Jordan	zejord@hotmail.com	P.O. Box 958, 6749 Tellus Avenue	Phoenix	AZ	85007	3506450851	Credit
Andrew	Hayes	ahayes@gmail.com	23 West Bronx	New York	NY	10023	2147483647	Credit
Briar	Hutchinson	sagittis.lobortis@tortor.ca	P.O. Box 694, 284 Odio Rd	San Francisco	CA	94249	2147483647	Credit
Sharon	Holt	sholt@yahoo.com	1333 Arcu Rd	Salt Lake City	UT	84109	2147483647	Debit
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: Instabook; Owner: aanirudh
--

COPY employee (emp_id, emp_fname, emp_lname, emp_email) FROM stdin;
1001	Anirudh	Pillai	aanirudh@iu.edu
1002	Madhuri	Upadrasta	mupadras@indiana.edu
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: Instabook; Owner: aanirudh
--

COPY orders (order_id, email, isbn, quantity, order_date) FROM stdin;
1	alirocha@nytimes.com	536610304	5	2015-08-09
1	alirocha@nytimes.com	536610304	100	2015-08-09
\.


--
-- Name: book_pkey; Type: CONSTRAINT; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_pkey PRIMARY KEY (isbn);


--
-- Name: book_quantity_key; Type: CONSTRAINT; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

ALTER TABLE ONLY book
    ADD CONSTRAINT book_quantity_key UNIQUE (quantity);


--
-- Name: category_pkey; Type: CONSTRAINT; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: customer_pkey; Type: CONSTRAINT; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (email);


--
-- Name: employee_pkey; Type: CONSTRAINT; Schema: Instabook; Owner: aanirudh; Tablespace: 
--

ALTER TABLE ONLY employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (emp_id);


--
-- Name: orders_email_fkey; Type: FK CONSTRAINT; Schema: Instabook; Owner: aanirudh
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_email_fkey FOREIGN KEY (email) REFERENCES customer(email);


--
-- Name: orders_isbn_fkey; Type: FK CONSTRAINT; Schema: Instabook; Owner: aanirudh
--

ALTER TABLE ONLY orders
    ADD CONSTRAINT orders_isbn_fkey FOREIGN KEY (isbn) REFERENCES book(isbn);


--
-- PostgreSQL database dump complete
--

