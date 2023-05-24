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

INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (1, 'Striving past Adversity', 'There were so many times when I thought the last rejection was my final shot, and that it was over.', 'https://static.wixstatic.com/media/71b1e6_38155ab6b5f24de88a7209040bc1a5d8~mv2.jpg/v1/fill/w_266,h_266,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_38155ab6b5f24de88a7209040bc1a5d8~mv2.jpg', '<p><strong>MIFRAH MALIK:</strong><em> Where were you born and raised? Why did you decide to attend UConn?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> I am a Connecticut native. I was born and raised in Haddam, CT and spent most of my time in the Middletown [bordering town] area. Going to UConn was an easy decision because it was the only school I was accepted into, and I had no plans of joining the military. The reason I applied in the first place was because I enjoyed my experiences there up to that point.</p>

<p><strong>MIFRAH MALIK:</strong><em> What kind of internships were you trying to pursue while you were in college and what helped you realize the path you chose?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> I was very good at math in high school and wanted to pursue engineering as an application of those quantitative skills. However, my parents have always been a very big influence in my life and at 17 years old I was quite malleable. They recommended business would be a better fit than engineering. I went into UConn School of Business not knowing exactly what I wanted to do, but I wanted to find a field where I could leverage my quantitative abilities. I learned about high frequency trading and algorithm investing as a sophomore, and landed a summer internship at Aetna in Hartford, CT.  I was in the underwriting office, which was more about claims and FP&A, but nonetheless it seemed like a step in the right direction versus working at a factory like I had been prior summers.</p>

<p>By my junior year, I was heavily involved in the Real Estate department at UConn, and I secured a summer internship at Fitch Ratings in lower Manhattan. It felt like step in the right direction, but wasn''t the investing role I was truly after. So I didn’t apply for the return position there and kept looking at full time opportunities.</p>

<p><strong>MIFRAH MALIK:</strong><em> So then where did you end up after college?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong>So I’ve known I didn’t want to do banking ever since I learned what it entailed. It seemed like way too much of a time commitment for something not very intellectually stimulating - at least that was my impression. Which is something easier said than done because anybody that’s a finance major, especially from UConn, wants to land a front office role at a bank somewhere. There’s definitely the emotional side to it where it would be great to get the status and compensation that goes along with that sort of thing. But I didn’t want it and searched for opportunities in investing.</p>

<p>However, I realized how difficult it was to break into that sort of role as my first job. And ironically enough the desired demographic for professionals to be placed in those positions are bankers. So I figured my best bet would be to start at an insurance company and try to maneuver my way into their investment arm. Another important consideration was to be in a culture where I felt respected despite being so young in my career. The Hartford [A Fortune 500 company] has a reputation of having some of the kindest people to work with in the state. They also hire heavily from UConn and I was friends with some of the people that took offers there. It was very much an optimization question for me at the time, I knew it was unlikely for me to remain at the company long-term if I didn’t hustle into the investment arm (called HIMCO), but it seemed to be the option that aligned closest to my interests.</p>

<p><strong>MIFRAH MALIK:</strong><em> So you didn’t exactly land the dream investing job right out of college. How did you remain motivated, happy, and make the most out of your time there?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> I realized how difficult it was to get into investing/quantitative programming right out of college. I read somewhere that almost 40% of the Ivy League student populous ends up placing in either consulting or banking roles. So given the vast amount of competition, I tried to think of something I could do to stand out and differentiate myself. My main idea was to take the Chartered Financial Analyst exams. I thought to myself, if I can pass all three exams in under 2 years, that could be something that opens some eyes. And even better, The Hartford would pay for the exam.  Furthermore, I wasn’t expected to be in the office until 2am like some bankers and consultants, so I knew I’d have the bandwidth to be able to pursue that. So that’s what I set my mind to; I came in early and studied during lunch to get 2 hours of reading time per day, for almost 2 years. And luckily enough, I pulled it off.</p>

<p><strong>MIFRAH MALIK:</strong><em> There is so much content out there about breaking into top tier finance roles, I am thinking investment banking, hedge funds, private equity or investment roles. Recently I came across this post where was a lot of people were commenting as anonymously. I assume students and professionals – who thought it was impossible to break into a front office finance role if you start in X function of Y company. What are your thoughts on that?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> I think I’m a strong example of that not being the case. My first role out of college was in reinsurance accounting for a life insurance plan. If you want something you’ll find it interesting and not mind the effort that goes along with it to become exceptional. So through my work in the CFA and staying in sync with the markets by reading The Wall Street Journal, I was able to start making moves into HIMCO and get some interesting external looks as well.</p>

<p>I believe it''s important to mention that everyone has the mental paradigm of the top bulge bracket banks as their standard. That’s 8 or 9 companies. And they are not heavily involved on campus and only a small handful of UConn undergrads find a way into those firms per year. But if you’re not that person, I think it’s important to realize that finance is a huge end-market.</p>

<p><h2>There were so many times when I thought the last rejection was my final shot, and that it was over.</h2></p>

<p>But something else would always emerge at my step, and it became about being able to execute. I think what it ultimately boils down to is your ability to present yourself and exhibit mastery of your craft. There’s always going to be someone else with something more shiny on their resume, maybe they have an MBA and $100K in student debt, worked at a hedge fund, whatever. But I think any institution worth its weight in salt is ultimately looking for someone that will get in, contribute analysis, and create value. That comes down to what you have upstairs and I think if you are able to work on yourself enough to get to an advanced level, it really does not matter what your background is.</p>

<p><strong>MIFRAH MALIK:</strong><em>So tell me how you ultimately landed your job at the Hedge Fund in Philly? Tell me about the rejections that came along the way before you even got there?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> Yeah, so it was a rocky road as I alluded to. I was getting to the mid to late rounds in interviews for about a year until I got the offer to go to Philly. I would recommend practicing for interviews since that was my biggest flaw. I was always so obsessed with studying that I never quite had a sales pitch nailed down, or a coherent thesis on why I deserve to be hired. Unfortunately I had to learn through trial and error with real consequences. It was discouraging in a lot of ways, and honestly sometimes cringe worthy with some of the answers I thought interviewers wanted to hear. But like anything, the more you do it the more comfortable you feel. After 2 years at The Hartford, I received an offer to go down to Philadelphia and work at a Hedge Fund – which was facilitated by someone in my network that I had stayed in touch with after graduation.</p>

<p>The role was to be a quantitative investment analyst, and a key requirement was to understand and implement Visual Basic programming (VBA). Up to that point, my experience with VBA was fairly little, but not new. The role would have me spending a significant amount of time programming, so I started a deep dive into VBA beginning the week of my first interview until day one on the job; about 6 weeks or so. I knew that if an undergrad could take a 15 week course for 2 hours weekly on VBA and get to put it on their resume, I would be able to at least get to that level doing 2+ hours per day. It was tough because the interview process started the week after I took CFA Level III, so I kept my study schedule going, but for programming instead. I was pretty burnt out and my coworkers at the time were confused why I wasn’t taking it easy, but I showed up in Philly for my first day with a good understanding of the fundamentals.</p>

<p><strong>MIFRAH MALIK:</strong><em> So you landed that dream position while you were in Philly, but fundraising wasn’t gaining traction quickly enough and you had to leave. How did you grapple with that uncertainty?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> Yeah so it was an interesting situation because after about a year there, as you mentioned, we weren’t getting the inflows we thought we would, and in that context there was going to be less opportunities for growth. They set me aside and mentioned that it would be best to look at external opportunities.</p>

<p><h2>Nothing prepares you for a conversation like that, and it''s tough to keep a clear mind in such a situation. I thought of all the effort I put in to get to that spot; the rejection, the grind of studying and working everyday, the happiness of my family and friends that I finally broke through only to return home with my tail between my legs. I don’t have a well-connected family in this industry, so I kept the conversation we had to myself because it’d only make them concerned.</h2></p>

<p>However, I didn’t feel overwhelmed, because I realized I wasn’t the same as I was a year before. I had grown from the work I did there and learned from the people on my team. I was able to be in meetings with CEOs of publicly traded companies, sit across the table and discuss business and capital markets. I could code anything and make best in class financial models and automate redundant processes to save time. And I officially had the CFA designation. So I knew it would be a different conversation with whomever I interviewed with. The tone would be much less "please let me in, I can learn fast and prove my worth" to "I’m an asset and can create value for your organization in many ways". So I think I knew deep down that finding a good role wasn’t out of reach.</p>

<p><strong>MIFRAH MALIK:</strong><em> Once you were able to grapple with the uncertainty and figure out your path into getting the next job. What steps were you taking to land the position as an Investment Analyst at The University of Miami?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> Well for Miami it felt like things came full circle. I didn’t have much of a network which was my fault. I never wanted to be that overly aggressive person at a happy hour trying to get face time so I didn’t do much of it at UConn. I did meet a couple of people organically and they ended up being difference-makers for me. One was a UConn alumni that was on Wall Street who was investing for a pension fund. My first dream job was to work for that pension fund. I shadowed him for a day at his office and it hit me that this would be something I could see myself doing forever. I applied for an internship there as a junior and got to the last round and was crushed when I didn’t get it. Eighteen months later, I graduated and saw that they have a posting for an analyst with no experience requirement. I had kept in touch with this person and I told him I think I could be a fit. Again I made it to the onsite super day but came up short.</p>


<p><h2>Easier said than done, but you can learn a lot from failure if you don’t let the emotions overwhelm you.</h2></p>

<p>I thought you know what, maybe this guy will take me on as a mentor. I reached out and surprisingly he was more than happy to help me. I’ve learned that people in the industry realize how hard it is to break in, especially if you are not from the cookie cutter background. They will go the extra mile to help you get placed into that dream role. Among the things he did for me was to set me up on an endowment and pension investing newsletter. It discussed relevant themes in institutional investment and also had job postings. Sure enough, as I was looking to transition away from my role in Philadelphia, I was reading the newsletter and saw they had a posting for an investment analyst at the University of Miami. It also had the hiring office’s email on it.</p>



<p>What makes me say ‘things came full circle’ is that I’ve been a Miami Hurricanes fan since I was 11 years old from watching their football team on T.V. Back in the days of AOL or AIM my screenname was CanesFan**@aol.com. Needless to say, I thought being part of the small team that invests the pension and endowment for an institution that mattered to me would be incredibly rewarding. My main problem was that my network was thin and I didn’t know anyone within 500 miles of Florida let alone at the University. My only option was to go through the resume portal. Again, when going up against vast numbers, it''s crucial to find a way to differentiate oneself. I’ve found that if you take the time to write a specific customized cover letter, that meaningfully increases chances of a phone interview. So I wrote a one page memo that essentially said look, “I have my CFA, all this experience, and I think I would be a good fit. I’ve looked at your annual report and your portfolio is set up well, but maybe you should consider X, Y, and Z. I would love to learn more about the position and on top of it, this would be a special opportunity for me because I have been such a fan and supporter of the University for a long time now. It would make it even more fulfilling for me and exciting to come to work everyday”. I sent that to the email listed in the newsletter and was contacted for a phone screening. It was a relatively technical interview process, but not a problem given the work and experiences that took me to that point. I got the offer and its been a great fit ever since.</p>

<p><strong>MIFRAH MALIK:</strong><em>What are some lessons you have realized on this journey and would want to share with other who might be in the position you were in a few years ago?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> My advice would be don’t be afraid to take risks especially early in your career. I think back a lot about what I’d be doing at The Hartford if I still worked there. By the time I left, I was in HIMCO and had access to a good paying, steady job with a clear path to middle management. But in my heart, I knew it wasn’t going to be the most fulfilling thing and so I left for a start-up hedge fund. Start-ups come with a great amount of risk, and on top of that I had to take a pay-cut. I figured I was in my lower 20s and the opportunity was exciting and had tons of upside. So I took the risk. Even though it didn’t end up being a long term position, the risk paid off because I wouldn’t have ended up in Miami unless things unfolded the way they did. </p>

<p><strong>MIFRAH MALIK:</strong><em>To tie things up, my last question; Beyond work, and the long hours what else is important in Corporate America that people don’t typically talk about?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong>That’s an interesting question. I think it''s important to be true to who you are.</p>

<p><h2>In Corporate America, there is a certain value system and “personality type” that you are supposed to adhere to. I don’t think everyone has that personality, and it becomes sort of a face they feel forced to wear.</h2></p>

<p>I think productive and optimized work environments are places where employees feel engaged, valued, and above all that they can be themselves. And as a complement to that, be transparent with people. I’ve been clear with all my bosses so far with my goals and what I want to achieve, even if it’d have to be external. And they did what they could to facilitate that rather than be an impediment, which has been a huge tailwind.</p>

<p>Being true to yourself and being transparent has its benefits for who you are in terms of your career, and even your brand as well. I find that people see it as refreshing. They feel like you are not being corny and generic. Like you know, the usual “oh, how was your weekend, it was too short, am I right, haha.” You know, spice it up every once in a while. [laughter] </p>

<p><strong>MIFRAH MALIK:</strong><em> Final thoughts?</em></p>

<p><strong>NICOLAS CHAPMAN:</strong> Just to touch on the current role; I’m part of a three-person team that is charged with investing the endowment, pension fund, and working capital for the University which is above $2 billion in AUM. Secondly, sort of finishing the loop on originally wanting to get into engineering. Working for an educational institution, I’m able to pursue a Master’s Degree in Math, specifically Quantitative Finance. I finally have the chance to build on the calculus and technical skills that I originally wanted to pursue out of high school. So hopefully I can do that successfully for the next year and a half (it’s a three semester program), and have all the insights on quantitative investing you need in this dynamic marketplace.</p>', 1, 'Nicolas Chapman', 'Associate Director at The University of Miami', 'University of Connecticut ’15 – Major: Finance Minor: Real Estate');
INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (3, 'Finding Happiness', 'To this day, a lot of my friends ask me if I''ve ever regretted the decision to not return to banking.', 'https://static.wixstatic.com/media/71b1e6_e480b42c156f4ddfa1aa47a0508b3d0e~mv2.jpg/v1/fill/w_266,h_266,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_e480b42c156f4ddfa1aa47a0508b3d0e~mv2.jpg', '<p><strong>MIFRAH MALIK:</strong><em>Tell me a little bit about yourself and why you chose to go to Baruch College?</em></p>


<p><strong>MILYZA FLORES:</strong> I was born and raised in Queens, NY, and grew up naturally business savvy: as a kid, I traded on simulated stock markets and made real money through my own entrepreneurial ventures until college. Going to a business school was the natural choice. I went for different colleges, but ended up with a full scholarship to Baruch College through the Macaulay Honors Program. When presented with the opportunity, I just knew I had to take it because I didn''t want my parents to have the burden of paying for college.</p>


<p><strong>MIFRAH MALIK:</strong><em> Why did you want to break into investment banking in the first place?</em></p>


<p><strong>MILYZA FLORES:</strong> Looking back, I was definitely misguided and heavily influenced by the perception of banking and by everyone around me. At Baruch, everyone glorified finance and saw banking as the best, most prestigious job out there. It was a herd mentality. Breaking in meant being at the top, and I wanted to be the best of the best. Banking is also an intense job, and as a workaholic at the time, being put through the wringer and worked to the bone felt like something I wanted. As for the actual job, it provides so many transferable skills and a world-class training. And it’s so prestigious and pays so well that those who go through it are set up for eternal success and wealth.</p>


<p><strong>MIFRAH MALIK:</strong><em> You broke into Goldman Sachs Investment Banking Summer Analyst Program during your sophomore year. Obviously, you put in a lot of hard work breaking into front office from a public school and went back for your junior year. What made you decide not to go back for full-time?</em></p>


<p><strong>MILYZA FLORES:</strong> When I accepted my junior year internship, I had all intentions to return full-time. I had worked so hard to get where I was, and I had achieved my wildest dreams. But between my sophomore and junior year summers, I studied abroad in Amsterdam for a semester and had a life-changing experience. I realized that there was more to life than work and finance. I discovered a level of happiness that I don''t think I had before, and I learned that the most important thing for me in life was being happy.</p>


<p>I knew that I wouldn''t be happy in my investment banking job, and I knew that I couldn’t sacrifice my happiness for anything. So I decided to stay true to myself and not return full-time.</p>


<p><strong>MIFRAH MALIK:</strong><em> You mentioned that you felt like you wouldn''t be happy if you went back, why was that?</em></p>


<p><strong>MILYZA FLORES:</strong> Investment banking requires 100-hour work weeks. Life has to be dedicated entirely to work, leaving not much room for anything else. These conditions lend themselves to unhappiness. I thought about it this way: If I got hit by a bus tomorrow, would I be happy with how my life was spent? A lot of people say the job only lasts for two years. But two years is a long time to live that way. And I always thought if I were to get hit by a bus on the last day, then my past two years would have been spent unhappily and in the office, instead of living a life that I wanted. I knew I couldn’t be happy in this environment and that I couldn’t sacrifice even a single day to that. Why delay happiness for two years when I could have it now?</em></p>


<p><strong>MIFRAH MALIK:</strong><em> So was it more to do with the "work-life balance," being in the office given the long hours, or the impact it could have on your mental health?</em></p>


<p><strong>MILYZA FLORES:</strong> It was all of the above. Work-life balance is always important because work shouldn’t be our whole lives. And long hours aren’t necessarily bad if they’re being put to something meaningful, alongside boundaries. In banking, not only were the hours long and unforgiving to personal life, but it felt like a waste. It was cool to be able to work on prolific companies and huge deals that are in the news. But the work associated with it was mundane, like adjusting logos in PowerPoint. And the working environment was unhealthy and inefficient. For example, it was normal to sometimes have nothing to do all day while still having to show face and look busy, then get assigned to something at 8pm to have to work on until 1am. On the more extreme end of the spectrum, someone having to stay at the office for over 24 hours straight or having a public mental breakdown wasn’t a regular occurrence, but it wasn’t out of the ordinary. It was troubling that these working conditions had become so normalized, and I didn’t want them to become normalized for me, either.</p>


<p>I entered my second summer in a depression for reasons unrelated to my internship, but work only exacerbated it. I didn’t get to see my family and friends. I didn’t have time to work on myself and be happy. There was only room for it to get worse. So the problem is not only the presence of a hard work life, but also the absence of a personal life.</p>


<p><strong>MIFRAH MALIK:</strong><em> Job searching during senior year is stressful. What steps were you taking to figure out how to carve your own path?</em></p>


<p><strong>MILYZA FLORES:</strong> When I turned down my return offer for full-time, I literally had no backup plan, no job offer. I didn’t even know what I wanted to do. My first step was to try and figure that out. I spoke to so many different people to learn about all the jobs out there. I wasn’t asking them to hire me; I just wanted to learn. One thing that surprised me throughout this process was that there were so many other jobs out there besides finance, marketing and accounting. At Baruch, you get nearly zero exposure to other fields and jobs, so you don’t even know they exist.</p>


<p>To identify what the right job was for me, I had to do a lot of soul searching to identify what I was good at, what kind of environment I would thrive in and what would make me happy. As for actually applying to jobs, that was tough because outside of big corporate programs, most companies don’t hire out a year in advance; they hire for immediate need. So I couldn’t even really start looking for a job until the end of my senior year, and having to wait while living in uncertainty was painful. And when I got to applying, it was hard to get far past that stage because although I had all this great experience, it was in a completely different field.<p>


<p><strong>MIFRAH MALIK:</strong><em> Why is it important to disassociate job titles from what life and happiness really mean?</em></p>


<p><strong>MILYZA FLORES:</strong> Work is such a big part of our lives, so it’s natural for our happiness to be dependent on it. However, it should be about doing something that fulfills us, like if we can create something we’re happy to put out into the world. And even that can’t be the full answer to our happiness.</p>


<p><h2>When I started working, I soon found that even though I loved my job, that wasn’t the entire answer to feeling fulfilled. This led me to discover new passions and ways of life that allowed me to feel happy and fulfilled, including mindfulness, wellness and community organizing.</h2></p>
<p>External factors like title, company, or how others perceive us shouldn’t be the basis of our happiness. It can be a point of pride, but it shouldn’t be everything. This prestige or perception isn’t even a constant thing, so logically it doesn’t even make sense for our pride and happiness to be tied up in that. For example, someone could be working at some prestigious job, but someone else who isn’t in their field wouldn’t know and give a sh**. My job now is considered prestigious in the tech world. But people outside of tech have no idea what it is, including most of my friends and family. So it doesn’t even matter.</p>


<p>I don’t blame people for caring about these things, though. At Baruch and similar business schools, there’s a lot of pressure because people really do look down on each other for their jobs. When you’re in this kind of toxic environment, it’s hard not to care and want to live up to peoples’ expectations.</p>


<p>I definitely felt the pressure myself, and deciding to not return to finance required me to muster up a lot of courage. Not only was I walking away from an amazing opportunity, exorbitant wealth and a sure thing, but I was also concerned about looking bad to my peers and disappointing my family. And to some extent, these things did happen. But at the end of the day, it was my life to live. My own happiness outweighed their opinions. I was only able to come to this decision because I knew my values and that I had to be steadfast in them. I also believed in myself and my capabilities, so I knew that in taking this leap, things would be okay in the end. And the external pressure of how people see me doesn’t matter to me anymore, because I’m secure in myself and I’m happy.</p>


<p><strong>MIFRAH MALIK:</strong><em>So what path did you choose post-college? What do you do in your current role?</em></p>


<p><strong>MILYZA FLORES:</strong>When I was first looking for potential careers, I discovered and was really interested in product management. In product, you strategize the development of your company’s products. It seemed intensive, high-impact and fun, and I thought it aligned with what I was looking for and good at. I initially didn’t pursue it, though, because you typically need more experience to get a job in product.</p>


<p>Early on, I applied to and ended up interviewing for Google''s Associate Product Marketing Manager program. I got to the final round all the way in Mountain View, CA, but ended up choking. I didn’t get the job, which was a really hard rejection to go through that triggered another depressive episode for me. But I also ended up with the idea that if I could get so close with that program, then I could get a job in product management. With my newfound courage, I decided to go for it.</p>


<p>I ended up landing a job as a Product Manager at PebblePost, a marketing technology company, and it was the best first job out of college I could’ve possibly asked for. I loved my job, my team, my products. I got to have such a high impact on the company straight out of college, which was awesome. I also discovered that, after working mainly in corporate settings, I really loved the startup life. I had a great 2 years there and recently moved companies to join Voice, an early-stage social media startup, as a Product Manager. It’s been an amazing couple of months here so far and I’m excited to see what the future has in store for us.</p>


<p><h2>To this day, a lot of my friends ask me if I’ve ever regretted the decision to not return to banking. And I can easily say that — even when I was at my lowest and didn’t know what the future held — not for one moment did I regret it.</p></h2>
<p>In the end, all my risks, hard work and difficulties were worth it. By staying true to myself and my values, I found a career I truly loved and a life where I could finally be happy.<p>



<p><strong>Editor’s Note:</strong> ​​This article is not intended to take a stance against investment banking as a profession; rather, it serves as a personal account of one individual''s unique journey and experiences. As the author of this site, I personally have friends and mentors who have chosen this career path. I recognize the immense dedication and sacrifices it requires. I share this article with my audience to encourage them to stay true to themselves when considering their own career paths. You can never truly know if something is a good fit until you give it a try. I encourage you to pursue what brings you happiness and satisfaction.</p>', 1, 'Milyza Flores', 'Fractional Chief of Staff', 'Baruch College, Macaulay Honors Program B.A. Mathematics ‘18');
INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (2, 'Real Talk', 'I was literally living out of a luggage... One minute I’m in San Francisco and the next I am in Beirut at some investor meeting.', 'https://static.wixstatic.com/media/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png/v1/fill/w_266,h_259,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png', '
<p><strong>MIFRAH MALIK:</strong><em> Tell me about where you were born and raised and what prompted you to get a Bachelor’s Degree in Finance from Baruch College?</em></p>

<p><strong>HUMAIRA KHAN:</strong> I was born in Saudi Arabia, raised in Toronto and then moved to New York around 13 years ago. I was working there for a year at an accounting and real estate office, exploring New York and just trying to set up my business. I always liked tech, but computer science was too boring for me to sit and code. So I went to Baruch. I didn''t necessarily go for finance, I was just exploring majors. I started with a computer information systems degree, but then I switched to finance. I wanted a more quantitative background on top of my computer science affiliates degree. I did not go into finance with the idea of going to a financial firm. I knew I always wanted to be at a tech start-up. Finance is a big part of growing, scaling and exiting your start-up.</p>

<p><strong>MIFRAH MALIK:</strong><em> How did you end up landing your full-time job? What did you learn from that experience?</em></p>


<p><strong>MIFRAH MALIK:</strong> Tell me about where you were born and raised and what prompted you to get a Bachelor’s Degree in Finance from Baruch College?</p>

<p><strong>HUMAIRA KHAN:</strong> I was born in Saudi Arabia, raised in Toronto and then moved to New York around 13 years ago. I was working there for a year at an accounting and real estate office, exploring New York and just trying to set up my business. I always liked tech, but computer science was too boring for me to sit and code. So I went to Baruch. I didn''t necessarily go for finance, I was just exploring majors. I started with a computer information systems degree, but then I switched to finance. I wanted a more quantitative background on top of my computer science affiliates degree. I did not go into finance with the idea of going to a financial firm. I knew I always wanted to be at a tech start-up. Finance is a big part of growing, scaling and exiting your start-up.</p>

<p><strong>MIFRAH MALIK:</strong> How did you end up landing your full-time job what did you learn from that experience?</p>

<p><strong>HUMAIRA KHAN:</strong> Well, in high school I was working at all these retail jobs, but I was always really entrepreneurial. Even when I had my retail jobs, I would invest it back into other businesses that I wanted to do. My father had a little retail shop and I invested its money into developing these line of burgers that are now sold at Walmart and all these grocery retailers in Canada. I always liked the idea of working at a startup. I thought that after I graduate with this finance degree from Baruch, I am going to look for a tech startup, know the ins and outs of the tech startup world and then start my own.</p> 

<p>At that time, early stage startups would post their jobs on angel list. It was an easy process applying. I ended up interviewing at a bunch of places to be honest; different types of startups, ones that I thought would even excite me. I even got an internship at NBC Universal and Universal Media Group, which you know, are probably better to put on your resume because they are these crazy media companies. I was conflicted if I want to be in these cool companies because they are a media empire. I would get to meet celebrities all the time, it would be luxurious and fun. At the same time, my long term vision was to start a company and I thought if I just came into a 10,000+ company, I will never learn how to start my own company.</p>

<p>And luckily this one start-up I came across and I say lucky because a lot of tech startups come and go and not all of them are successful. This particular one I came across was very tech enabled and the two founders were these hedge fund guys, super brilliant, and had worked for major firms. I thought they had a good vision and were super legit. They did not have job titles for us, but I wanted to join a team that was so early that you did not even have a title yet. The founders wanted to hire people they thought were hustlers in their world. Some guy was a quarterback for the Princeton football team on a scholarship. One girl was doing volleyball from Columbia. People that just had all these crazy backgrounds. The founders thought, people who work in sports or military, or whatever have super rigorous schedules so they have a hustle and drive. For some reason, they told me, you know your mind because I was not a CFA. I do not even have a masters, but they said they knew from all my projects. Because all my life, even when I was working at that desk job, I always had 3 other businesses on the side and they had just seen all my businesses and saw how I was able to start it from the ground up.</p>

<p><strong>MIFRAH MALIK:</strong> You have had a few years of experience working in early-stage companies and have exited them, most notably Vettery, when it was bought out by Adecco Group for $113M.<em>What experiences in jobs, travel, and personal interests made you embark on your own start-up journey, move to Dubai, and create Walzay?</em></p> 
<p><strong>HUMAIRA KHAN:</strong> I always wanted to have a tech startup, but I didn’t know what. I was visiting Dubai with my family for two days because we were on our way to Pakistan since my brother was getting married and we were just getting outfits. I thought to just check the scene out there. Dubai is a really cool place, but there were these really antiquated job boards with a horrible user experience. The whole region is shifting out of this oil and gas economy into a successful digital world, but their biggest problem was getting tech talent. I thought that this was the perfect thing for me. I figured out the demand, what people were paying for it and saw this was a huge opportunity. So I decided to come here.</p>

<p>The reason I was traveling a lot was because I joined a team in Qatar at first called 9to5.ai, which luckily because of them, I was able to come to the Middle East. From that experience, I got in the game and figured out the whole market. I was able to come here and travel because we were raising our series A at that time and I was the one fundraising from the team. To be honest, everyone thought that I was traveling for all this fun and leisure and I was dying inside. I did not want to see another plane. I hated travel because I was literally living out of a luggage, the climates were changing. One minute I’m in San Francisco and the next I am in Beirut at some investor meeting. That in itself was hard and frustrating. It was also good though because I got to meet people and form relationships with investors. Having to pitch 24/7, running these numbers and trying to prove your product, then have them introduce you to other people and sometimes having to extend your trip is like booking hotels last minute. So it was all this crazy stuff, but it was not exactly fun because I was not leisurely traveling. I wish I could enjoy going to a beach, or going to nature and chill in the mountain. Nonetheless, I was in some places for just a day and I would take a flight out the same night to another meeting. It was not as glamourous or fun, because for a month straight you are just living out of hotel room and traveling. In this whole traveling though, you never know when you get inherently influenced and it does help with product development and ideas.</p>

<p>For example, the idea of Bitcoin is always something I have been interested in because I have been into technology and felt currency has evolved for centuries. And it has not always been like this, you know, gold, crops, cigarette trading to paper money, it is still like a relatively new thing. I always thought digital currency would be the new thing which I became involved in. I wrote a status on my social media about how can we have open borders to attract talent around the world. How do we start? How does someone pay somebody in a different place? If I am in Dubai maybe I can pay someone in San Francisco with Bitcoin as a digital currency. I would not have to worry about payroll laws etc. How can we adapt into this remote work and hire people overseas? If I want a really good software engineer, why do I have to be limited to a 30 kilometer radius? I should be able to see everyone in the world that would be the best person for my team. That concept inspired me to create Walzay. My whole journey started with fundraising for another company, traveling through nice areas to refugee camps, and my desire to create a startup. </p>

<p><strong>MIFRAH MALIK:</strong><em> Is there any advice you want to give to other entrepreneurs in terms of finding mentors and maybe advice on connecting with other minorities on a similar pursuit?</em></p>

<p><strong>HUMAIRA KHAN:</strong> I think the Middle East is still kind of new to the whole investment space outside of real estate and oil & gas. There are not too many funds out here that are doing venture capital in the tech space. There are not too many pre-seed funds here yet. So the question to ask as well is what is our exit strategy? There is not really a stock exchange here to have an IPO, and there have been some really big exits. But again, it is like, few and far between. I take that as a big opportunity for startups and entrepreneurs, a lot of fresh opportunity to build.</p>

<p>In Dubai, you need a lot of capital to just get your foot in the door to set up a business and get a license. You need at least $10K in capital to set up your license. And then, of course, living expenses. You cannot get an apartment to rent anything until you have your license. In order to have a license, you usually have to get an office space. There are all these monthly expenses that add up which I used to hate at first, but I did get some good explanations for people here doing this. Dubai wants people who are serious, if you really know your business is going to be successful as opposed to living off of pipe dreams. To that point, I would not have invested so much if I did not believe in it. The fact that I am investing so much does make me go harder because I have to make back all this money. Needless to say, that is Dubai, but it varies city to city in the MENA region.</p>

<p>In terms of minority investing, it is a weird thing. Honestly, I have been part of that game too. I met investors from all over the world. A lot of people use Twitter, which is very active for VCs and the startup community. Especially if you have a good Twitter brand and are actively posting, it is way easier to get conversations with big investors because they see you are a real person. It is not like a LinkedIn outreach. They see you are a real person, talking about TV shows or whatever. I feel like I''ve been getting more opportunities on Twitter than any other place.</p>

<p><h2>Twitter is a good place where a lot of investors also talk a good game.</h2></p>

<p>“Oh, we want more female founders. We want more females in this or like more minorities and it would look great for our portfolio. Or that I am only getting demos from white men and I want more female founders”. Then you message them in their inbox and they just leave you on read. So I faced one of those struggles. I felt like the product fit within the firms mandate to, so they are just on twitter talking a good game. At the same time, they might be getting billions of requests. Then there is also these female led funds and I feel like they have been worse than male VC’s. A lot of the friendships I have formed over time have mostly been men, especially when I started off. Now I do not want to talk to anyone because I don’t want to get pissed off. I am in that chip on my shoulder phase. In the beginning, I was doing the game, like who do I call or email to get me in. It’s like this weird thing, where women are posting a lot of how they want to help fellow female founders. Very few actually are doing that.</p>

<p>In terms of getting mentors, I find that anyone I look up to – I tweet at them and they have been pretty responsive and cool. Eventually we develop friendships and if they are investors, I send them deal flow, like, “Hey, I found this cool blockchain company you can check out”.  Sometimes you’ll end up grabbing coffee with them. Lately, I have been pretty focused on scaling Walzay. My company is one of those things where I do not even have to be the face of it because everyone wants jobs and companies want to hire. We have been able to onboard people without worrying about anyone’s support. That is why I’m like, talk crap, whatever, we still have users signing up.</p>

<p>I always say there are two things you need to know if you are trying to start your own startup. First, there are a lot of accelerator programs out there which is a great way to get started, make sure they aren’t playing you with the terms though.</p>

<p>The other option is basically the route that I took where you go work at an early state startup, especially one that you believe would be successful. It does not necessarily have to be one that you are passionate about because you are there to learn. I have always been passionate about space and I know ultimately I want to have startup in the ‘space’ pun intended.</p>

<p>The two founders of Vettery happened to love Elon Musk. In their office, they had these huge shrines, like the Hindu shrines with all the candles and flowers around it. They built that for Musk and they would make us all read his biography like 100 times. I was like I do not want to read it, but it was a good biography and I would definitely recommend anyone to read it. You cannot just come in as like a newbie that has no idea how to build and scale a tech company and just like go completely crazy right. Even Musk start with PayPal and a bunch of other ventures that were more “normal” and now he has built up his reputation and has money to do crazy stuff in space. </p>

<p>So I always tell people, join a startup, it doesn’t have to be something you are passionate about. I don’t have to be like my first stop has to be a space startup, but just get into something that you believe will be successful. A small team that you can learn from and do what you can to learn startup life. It is not conventional methods of textbook, you are going to have to do what is takes to beat out competitors. It is not something you can learn, you just have to be there. </p>

<p><strong>MIFRAH MALIK:</strong> So to what you were saying earlier, I think that is really interesting. A lot of people would not come out and share their true experience. I also feel like there is this talk about how we should empower more women, that women should support one another, etc. Personally, on my LinkedIn, I get so much more luck getting a male to respond to me and have had male mentors who just happened to help me more. And there some helpful women that I personally know, who give me great guidance. It might just be because certain industries or jobs I’m interested in, are male dominated, but to your comment earlier, “mean girls are not cool anymore.” I feel like some women would go out of their way to help a guy out, but don’t put up those same efforts for other women, which sucks. People who do keep it real like you, recognize and openly acknowledge it. [Ladies, anyone feel what we feel?]<em> My next question, on the note of your advice: You are still new to the game, Walzay being 7 months old, but it has had amazing success forming clients/partnerships for instance with DIFC: The Leading International Financial Hub & Destination, and even Brinc a venture capital and accelerator firm. What’s the secret sauce to getting connected to them?</em></p>


<p><strong>HUMAIRA KHAN:</strong> Yeah, so I like DIFC, it reminds me of New York with all the buildings. DIFC has a fintech hub here and I was the one of the first startups that came here without a fintech license. They are starting a new thing here where instead of being bottled up into one category, you can get individual licenses. If you get a FinTech license, it is super expensive because there are all these regulations you have to go through. So I ended up getting an innovation license, which is fairly new, but I got it because it was the cheapest. </p>

<p>I moved here from New York and everyone is pretty calm here and I create the biggest drama for every minor inconvenience. So, there is this whole idea of getting a free zone contract and that you cannot get government contracts with for instance, Dubai Smart City. I had to persuade them to meet me at my terms. You really have to ask people and it can make you bitter. I now have this arrogant attitude and not in the way that you can talk down to people, but either you give it to me or don’t. I don’t really care. This attitude has actually been helping me out. I tell everyone, listen, I’m building the coolest product in the region, you’re either a partner or going to miss out which helps me build partnerships and get clients. You should still be a nice person, like I said, you eventually become friends with these people. Luckily everyone''s been on board, and because recruiting tech space is in its infancy here, it is easier to get people to join us. </p>

<p>In the beginning, trust me, it was very hard. I would be sucking up to investors and being extra nice and sit upright in meetings, have my hands held together and be very intuitive. Now I don’t care, even if it is Bill Gates. I am sitting laid back in my chair and drinking my latte. I am just like, listen this is what the product is. And not to be like completely arrogant, but just having this comfort and confidence with yourself is what they like, without being disrespectful.</p>

<p>Outside of work stuff, I really push on building a friendship. One, I was traveling alone this whole time and I had no friends. It is such a lonely thing to travel and be alone in a hotel room as much as people thought it was glamorous. So after meeting our investors, I am just like, “Yo, what''s poppin tonight? Where the party at”. And everyone is just human right? As much as they are an investors they also like to go out and not necessarily party, but go out to a restaurant at night or go to a hookah lounge or go hiking. Some just give good recommendation and eventually you just form a friendship with them. I have made a lot of good friends and we just end up adding each other on Instagram. Even now during Ramadan, I will send them messages like, “Happy Ramadan. Hope you''re staying safe with the coronavirus”. It wasn’t even anything formal, but people appreciate those little things.</p>

<p>[This conversation went on a random “raw” tangent]</p>

<p><strong>HUMAIRA KHAN:</strong><h2> I think that pictures are so misleading. I post events on social media and people think I am partying all the time. In reality, I would be in a hotel and go up to their rooftop and just take a Instagram video to make my life look cool.</h2></p>
<p>If you are a hotel guest you can just go right in and don’t even need to go through security. I do feel inspired and love artistic stuff, like even if you are in a party, the energy is so mixed. Everyone is happy, having the time of their life at places with these crazy views. I don’t drink and I don’t even dance. So like what am I doing in a club? In reality, I’m not clubbing every night, instead I am alone. Nobody realizes that because on Instagram I’m not posting my work stuff. Why am I going to post a spreadsheet or meetings? All people see are all these restaurant pictures of me getting lunch, in a foreign city. So in reality, I just take a 10 second clip of me stopped at some party and not the other 23 hours and 50 seconds of my life. People would always be messaging me, like oh my god, I want your life, how do I do that? I''m like dude, okay, give up your family, give up your friends, give up your social life and live this depressing life working 16 hours a day. And as long as I''m living that life, I will literally go shoot a video for like 30 seconds. I''m like that. It is just funny because I feel like that is social media, people think people have these crazy lives, but nobody knows what the actual life is like. I just make it seem luxurious on Instagram.</p>

<p><strong>MIFRAH MALIK:</strong> <em> Given the current covid-19  pandemic, multiple white collar jobs that never worked from home, are suddenly forced to. You wrote an article on Forbes Middle East, on “The Future of Office Space Got Here Early”. My question is, how do you think this current pandemic is going to globally shift the way employees, and companies shift towards flexible work options?</em></p>

<p><strong>HUMAIRA KHAN:</strong> Yeah, so I have been pitching this for over a year surprisingly. I even had this one meeting with a hedge fund investor in New York. He kind of laughed me out of the room because I told him in the next 10 years offices are going to be obsolete just because a lot of jobs are being automated. There are so many new tools in terms of collaboration and softwares that you don''t necessarily have to be in the office. Commercial real estate is crazy now with this crisis. Companies have to minimize their costs and why would they pay so much money for commercial real estate when most jobs can be done at home with technologies that can enable that. I have been pitching this for over a year and I do not want to say “luckily” because it’s a bad thing that is happening [COVID-19 pandemic], but my vision has accelerated by over five years. Which is good for me because I am in the right space at the right time. I think that is why Forbes and the Entrepreneur Magazine has given me the opportunity to write for them because I’m almost like an expert on this, I have been talking about remote work for a while and have been in the recruiting space since 2016.</p>

<p>“Flexibility” is more than just working from home. It does not necessarily mean your entire job will be remote. It could mean shorter work weeks or flexible hours. This whole idea of working from 9-5 became a thing during the whole industrial revolution because people were working in factories. Before that, during the agricultural revolution, people didn''t have electricity. So they would work from sunrise to sunset. All these things evolved right? So now if I am working with a team that is in Egypt and San Francisco, you cannot just do a regular 9-5. This idea of hours being flexible to your own schedule and have the team collaborate at certain hours is key. We are all having this new dynamic of what are weekends and what are work hours? Everyone is seeing it now. Post COVID it will be different because families won''t have to worry about their kids being home 24/7. Even education is getting remote nowadays. I think because of COVID, a lot of teams are being forced to work from home and managers and CEO’s are seeing that is can be productive. It also does come with a lot of other things. Conferencing, collaboration tools, and time schedules, all these things are going to evolve to make this a normal process.</p>

<p>I don’t think that everyone will just work from home. I know people do need that social aspect, especially for innovation, but I think the standard office will change whether that is people coming in half the week or not. I know WeWork was piloting this thing that I believe will probably be most successful in a few months called WeWork Now. Say I am an employer with global presence. I give people credits and from these credits they can go work in any office space. So instead of having a dedicated desk, they can go anywhere in the world. They are not paying monthly, but instead paying as they go which is where I think commercial real estate is headed. A lot of universities are auctioning off their real estate, which is crazy. You can get an entire upstate New York, University campus for like $12 million. So I think thing are going to change drastically. </p>
<p>We need to figure out how we can get these people and that is where Walzay comes in. It is not just a regular job board. For example, if you are in Connecticut, applying to a job in Dubai, how do you know it is a legit company? Are they going to pay you, are they trust worthy, do they have a remote company culture? You need to know remote compensation, equity compensation and all that stuff. We [Walzay] are going to change how the game works. Right now we are in the Middle East, but we also do our business in New York and San Francisco. If people want to stay in the city, they can actually work for a company that''s is in their city, they still have that option. Or they can put that they''re open to moving or relocating or being fully remote. You create a profile, and it is going to be open to all STEM roles. We will do this in stages or it can become too overwhelming. Eventually companies will be able to go in our system and say they are looking for a software engineer, they will put in their criteria and connect to people who fit. </p>

<p>Compensation will also change. Someone in Egypt is getting paid way differently than someone in Israel or San Francisco. So how do you compensate? That is where this whole idea of Bitcoin comes in where there will be a universal standard for what salaries are. If you are working at Google in San Francisco making $200K, then you move to Idaho, they usually bring your salary down because otherwise you would be living like a king there. So no one really has data on remote compensation yet and that is something we are collecting data on, modelling and analyzing. What is going on right now, will affect the future of our work and the way we think about flexible work options.</p>', 1, 'Humaira Khan', 'CEO and Founder of Walzay', 'Baruch College B.B.A. Finance and Investments ‘16');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: tpl622_3
--

INSERT INTO public.users (user_id, user_email) OVERRIDING SYSTEM VALUE VALUES (1, 'mifrah.malik@gmail.com');


--
-- Name: posts_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tpl622_3
--

SELECT pg_catalog.setval('public.posts_post_id_seq', 16, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: tpl622_3
--

SELECT pg_catalog.setval('public.users_user_id_seq', 5, true);


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

