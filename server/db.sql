--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Homebrew)
-- Dumped by pg_dump version 14.6 (Homebrew)

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

SET default_table_access_method = heap;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: tpl622_3
--

CREATE TABLE public.posts (
    post_id integer NOT NULL,
    post_title character varying(255),
    post_excerpt character varying(1000),
    post_img_url character varying,
    post_body text,
    user_id integer,
    interview_person_name character varying(255),
    interview_person_occupation character varying(255),
    interview_person_alma character varying(255)
);


ALTER TABLE public.posts OWNER TO tpl622_3;

--
-- Name: posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: tpl622_3
--

ALTER TABLE public.posts ALTER COLUMN post_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.posts_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: users; Type: TABLE; Schema: public; Owner: tpl622_3
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_email character varying(1000)
);


ALTER TABLE public.users OWNER TO tpl622_3;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: tpl622_3
--

ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: tpl622_3
--

INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (1, 'Raw Story #1: Striving past Adversity', 'There were so many times when I thought the last rejection was my final shot, and that it was over.', 'https://static.wixstatic.com/media/71b1e6_38155ab6b5f24de88a7209040bc1a5d8~mv2.jpg/v1/fill/w_266,h_266,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_38155ab6b5f24de88a7209040bc1a5d8~mv2.jpg', '<p><strong>MIFRAH MALIK:</strong> <em>Where were you born and raised? Why did you decide to attend UConn?</em></p>
<p><strong>NICOLAS CHAPMAN:</strong> I am a Connecticut native. I was born and raised in Haddam, CT and spent most of my time in the Middletown [bordering town] area. Going to UConn was an easy decision because it was the only school I was accepted into, and I had no plans of joining the military. The reason I applied in the first place was because I enjoyed my experiences there up to that point.</p>
<p><strong>MIFRAH MALIK:</strong> <em>What kind of internships were you trying to pursue while you were in college and what helped you realize the path you chose?</em></p>
<p><strong>NICOLAS CHAPMAN:</strong> I was very good at math in high school and wanted to pursue engineering as an application of those quantitative skills. However, my parents have always been a very big influence in my life and at 17 years old I was quite malleable. They recommended business would be a better fit than engineering. I went into UConn School of Business not knowing exactly what I wanted to do, but I wanted to find a field where I could leverage my quantitative abilities. I learned about high frequency trading and algorithm investing as a sophomore, and landed a summer internship at Aetna in Hartford, CT. I was in the underwriting office, which was more about claims and FP&A, but nonetheless it seemed like a step in the right direction versus working at a factory like I had been prior summers.</p>
<p>By my junior year, I was heavily involved in the Real Estate department at UConn, and I secured a summer internship at Fitch Ratings in lower Manhattan. It felt like step in the right direction, but wasn''t the investing role I was truly after. So I didn’t apply for the return position there and kept looking at full-time opportunities.</p>
<p><strong>MIFRAH MALIK:</strong> <em>So then where did you end up after college?</em></p>
<p><strong>NICOLAS CHAPMAN:</strong> So I’ve known I didn’t want to do banking ever since I learned what it entailed. It seemed like way too much of a time commitment for something not very intellectually stimulating - at least that was my impression. Which is something easier said than done because anybody that’s a finance major, especially from UConn, wants to land a front office role at a bank somewhere. There’s definitely the emotional side to it where it would be great to get the status and compensation that goes along with that sort of thing. But I didn’t want it and searched for opportunities in investing.</p>', 1, 'Nicolas Chapman', 'Associate Director at The University of Miami', 'University of Connecticut ’15 – Major: Finance Minor: Real Estate');
INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (3, 'Raw Story #3: Finding Happiness', 'To this day, a lot of my friends ask me if I''ve ever regretted the decision to not return to banking.', 'https://static.wixstatic.com/media/71b1e6_e480b42c156f4ddfa1aa47a0508b3d0e~mv2.jpg/v1/fill/w_266,h_266,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_e480b42c156f4ddfa1aa47a0508b3d0e~mv2.jpg', '<p><strong>Mifrah Malik:</strong> Tell me a little bit about yourself and why you chose to go to Baruch College?</p>
<p><strong>Milyza Flores:</strong> I was born and raised in Queens, NY, and grew up naturally business savvy: as a kid, I traded on simulated stock markets and made real money through my own entrepreneurial ventures until college. Going to a business school was the natural choice. I went for different colleges, but ended up with a full scholarship to Baruch College through the Macaulay Honors Program. When presented with the opportunity, I just knew I had to take it because I didn''t want my parents to have the burden of paying for college.</p>
<p><strong>Mifrah Malik:</strong> Why did you want to break into investment banking in the first place?</p>
<p><strong>Milyza Flores:</strong> Looking back, I was definitely misguided and heavily influenced by the perception of banking and by everyone around me. At Baruch, everyone glorified finance and saw banking as the best, most prestigious job out there. It was a herd mentality. Breaking in meant being at the top, and I wanted to be the best of the best. Banking is also an intense job, and as a workaholic at the time, being put through the wringer and worked to the bone felt like something I wanted. As for the actual job, it provides so many transferable skills and a world-class training. And it’s so prestigious and pays so well that those who go through it are set up for eternal success and wealth.</p>
<p><strong>Mifrah Malik:</strong> You broke into Goldman Sachs Investment Banking Summer Analyst Program during your sophomore year. Obviously, you put in a lot of hard work breaking into front office from a public school and went back for your junior year. What made you decide not to go back for full-time?</p>
<p><strong>Milyza Flores:</strong> When I accepted my junior year internship, I had all intentions to return full-time. I had worked so hard to get where I was, and I had achieved my wildest dreams. But between my sophomore and junior year summers, I studied abroad in Amsterdam for a semester and had a life-changing experience. I realized that there was more to life than work and finance. I discovered a level of happiness that I don''t think I had before, and I learned that the most important thing for me in life was being happy.</p>
<p>I knew that I wouldn''t be happy in my investment banking job, and I knew that I couldn’t sacrifice my happiness for anything. So I decided to stay true to myself and not return full-time.</p>
<p><strong>Mifrah Malik:</strong> You mentioned that you felt like you wouldn’t be happy if you went back, why was that?</p>
<p><strong>Milyza Flores:</strong> Investment banking requires 100-hour work weeks. Life has to be dedicated entirely to work, leaving not much room for anything else. These conditions lend themselves to unhappiness. I thought about it this way: If I got hit by a bus tomorrow, would I be happy with how my life was spent? A lot of people say the job only lasts for two years. But two years is a long time to live that way. And I always thought if I were to get hit by a bus on the last day, then my past two years would have been spent unhappily and in the office, instead of living a life that I wanted. I knew I couldn’t be happy in this environment and that I couldn’t sacrifice even a single day to that. Why delay</p>', 1, 'Milyza Flores', 'Fractional Chief of Staff', 'Baruch College, Macaulay Honors Program B.A. Mathematics ‘18');
INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (2, 'Raw Story #2: Real Talk', 'I was literally living out of a luggage... One minute I’m in San Francisco and the next I am in Beirut at some investor meeting.', 'https://static.wixstatic.com/media/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png/v1/fill/w_266,h_259,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png', '
<p><strong>MIFRAH MALIK:</strong> <em>Tell me about where you were born and raised and what prompted you to get a Bachelor’s Degree in Finance from Baruch College?</em></p>

<p><strong>HUMAIRA KHAN:</strong> I was born in Saudi Arabia, raised in Toronto and then moved to New York around 13 years ago. I was working there for a year at an accounting and real estate office, exploring New York and just trying to set up my business. I always liked tech, but computer science was too boring for me to sit and code. So I went to Baruch. I didn''t necessarily go for finance, I was just exploring majors. I started with a computer information systems degree, but then I switched to finance. I wanted a more quantitative background on top of my computer science affiliates degree. I did not go into finance with the idea of going to a financial firm. I knew I always wanted to be at a tech start-up. Finance is a big part of growing, scaling and exiting your start-up.

</p><p><strong>MIFRAH MALIK:</strong> <em>How did you end up landing your full-time job? What did you learn from that experience?</em></p>


<p><strong>MIFRAH MALIK:</strong> Tell me about where you were born and raised and what prompted you to get a Bachelor’s Degree in Finance from Baruch College?</p>

<p><strong>HUMAIRA KHAN:</strong> I was born in Saudi Arabia, raised in Toronto and then moved to New York around 13 years ago. I was working there for a year at an accounting and real estate office, exploring New York and just trying to set up my business. I always liked tech, but computer science was too boring for me to sit and code. So I went to Baruch. I didn''t necessarily go for finance, I was just exploring majors. I started with a computer information systems degree, but then I switched to finance. I wanted a more quantitative background on top of my computer science affiliates degree. I did not go into finance with the idea of going to a financial firm. I knew I always wanted to be at a tech start-up. Finance is a big part of growing, scaling and exiting your start-up.</p>

<p><strong>MIFRAH MALIK:</strong> How did you end up landing your full-time job what did you learn from that experience?</p>

<p><strong>HUMAIRA KHAN:</strong> Well, in high school I was working at all these retail jobs, but I was always really entrepreneurial. Even when I had my retail jobs, I would invest it back into other businesses that I wanted to do. My father had a little retail shop and I invested its money into developing these line of burgers that are now sold at Walmart and all these grocery retailers in Canada. I always liked the idea of working at a startup. I thought that after I graduate with this finance degree from Baruch, I am going to look for a tech startup, know the ins and outs of the tech startup world and then start my own. At that time, early stage startups would post their jobs on angel list. It was an easy process applying. I ended up interviewing at a bunch of places to be honest; different types of startups, ones that I thought would even excite me. I even got an internship at NBC Universal and Universal Media Group, which you know, are probably better to put on your resume because they are these crazy media companies. I was conflicted if I want to be in these cool companies because they are a media empire. I would get to meet celebrities all the time, it would be luxurious and fun. At the same time, my long term vision was to start a company and I thought if I just came into a 10,000+ company, I will never learn how to start my own company. And luckily this one start-up I came across and I say lucky because a lot of tech startups come and go and not all of them are successful. This particular one I came across was very tech enabled and the two founders were these hedge fund guys, super brilliant, and had worked for major firms. I thought they had a good vision and were super legit. They did not have job titles for us, but I wanted to join a team that was so early that you did not even have a title yet. The founders wanted to hire people they thought were hustlers in their world. Some guy was a quarterback for the Princeton football team on a scholarship. One girl was doing volleyball from Columbia. People that just had all these crazy backgrounds. The founders thought, people who work in sports or military, or whatever have super rigorous schedules so they have a hustle and drive. For some reason, they told me, you know your mind because I was not a CFA. I do not even have a masters, but they said they knew from all my projects. Because all my life, even when I was working at that desk job, I always had 3 other businesses on the side and they had just seen all my businesses and saw how I was able to start it from the ground up.</p>', 1, 'Humaira Khan', 'CEO and Founder of Walzay', 'Baruch College B.B.A. Finance and Investments ‘16');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tpl622_3
--

INSERT INTO public.users (user_id, user_email) OVERRIDING SYSTEM VALUE VALUES (1, 'mifrah.malik@Gmail.com');


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tpl622_3
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 12, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tpl622_3
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1, true);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: tpl622_3
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (post_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: tpl622_3
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: posts fk_posts; Type: FK CONSTRAINT; Schema: public; Owner: tpl622_3
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT fk_posts FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

