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
INSERT INTO public.posts (post_id, post_title, post_excerpt, post_img_url, post_body, user_id, interview_person_name, interview_person_occupation, interview_person_alma) OVERRIDING SYSTEM VALUE VALUES (2, 'Real Talk', 'I was literally living out of a luggage... One minute I’m in San Francisco and the next I am in Beirut at some investor meeting.', 'https://static.wixstatic.com/media/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png/v1/fill/w_266,h_259,al_c,q_80,usm_0.66_1.00_0.01/71b1e6_70256164e3f340b698d1fddaf2aa08dc~mv2.png', '<p><strong>MIFRAH MALIK:</strong><em>Tell me a little bit about yourself and why you chose to go to Baruch College?</em></p>


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


<p><strong>MIFRAH MALIK:</strong><em> So what path did you choose post-college? What do you do in your current role?</em></p>


<p><strong>MILYZA FLORES:</strong>When I was first looking for potential careers, I discovered and was really interested in product management. In product, you strategize the development of your company’s products. It seemed intensive, high-impact and fun, and I thought it aligned with what I was looking for and good at. I initially didn’t pursue it, though, because you typically need more experience to get a job in product.</p>


<p>Early on, I applied to and ended up interviewing for Google''s Associate Product Marketing Manager program. I got to the final round all the way in Mountain View, CA, but ended up choking. I didn’t get the job, which was a really hard rejection to go through that triggered another depressive episode for me. But I also ended up with the idea that if I could get so close with that program, then I could get a job in product management. With my newfound courage, I decided to go for it.</p>


<p>I ended up landing a job as a Product Manager at PebblePost, a marketing technology company, and it was the best first job out of college I could’ve possibly asked for. I loved my job, my team, my products. I got to have such a high impact on the company straight out of college, which was awesome. I also discovered that, after working mainly in corporate settings, I really loved the startup life. I had a great 2 years there and recently moved companies to join Voice, an early-stage social media startup, as a Product Manager. It’s been an amazing couple of months here so far and I’m excited to see what the future has in store for us.</p>


<p><h2>To this day, a lot of my friends ask me if I’ve ever regretted the decision to not return to banking. And I can easily say that — even when I was at my lowest and didn’t know what the future held — not for one moment did I regret it.</p></h2>
<p>In the end, all my risks, hard work and difficulties were worth it. By staying true to myself and my values, I found a career I truly loved and a life where I could finally be happy.<p>



<p><strong>Editor’s Note:</strong> ​​This article is not intended to take a stance against investment banking as a profession; rather, it serves as a personal account of one individual''s unique journey and experiences. As the author of this site, I personally have friends and mentors who have chosen this career path. I recognize the immense dedication and sacrifices it requires. I share this article with my audience to encourage them to stay true to themselves when considering their own career paths. You can never truly know if something is a good fit until you give it a try. I encourage you to pursue what brings you happiness and satisfaction.</p>', 1, 'Humaira Khan', 'CEO and Founder of Walzay', 'Baruch College B.B.A. Finance and Investments ‘16');


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

