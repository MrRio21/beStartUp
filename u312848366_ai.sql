-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 06 يونيو 2024 الساعة 06:07
-- إصدار الخادم: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u312848366_ai`
--

-- --------------------------------------------------------

--
-- بنية الجدول `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL,
  `code` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `advertisements`
--

INSERT INTO `advertisements` (`id`, `type`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'adsense-header', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'adsense-download-top-728x90', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'adsense-download-bottom-728x90', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'adsense-download-300x250', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'adsense-frontend-features-728x90', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'adsense-frontend-blogs-728x90', '', 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `api_keys`
--

CREATE TABLE `api_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `engine` varchar(191) NOT NULL,
  `api_key` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `article_wizards`
--

CREATE TABLE `article_wizards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `titles` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `outlines` longtext DEFAULT NULL,
  `talking_points` longtext DEFAULT NULL,
  `current_step` int(11) NOT NULL DEFAULT 1,
  `language` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `image_description` longtext DEFAULT NULL,
  `tone` varchar(191) DEFAULT NULL,
  `max_words` int(11) DEFAULT NULL,
  `creativity` double(8,2) NOT NULL DEFAULT 0.50,
  `view_point` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `selected_keywords` longtext DEFAULT NULL,
  `selected_title` longtext DEFAULT NULL,
  `selected_outline` longtext DEFAULT NULL,
  `selected_talking_points` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `article_wizards`
--

INSERT INTO `article_wizards` (`id`, `user_id`, `titles`, `keywords`, `outlines`, `talking_points`, `current_step`, `language`, `image`, `image_description`, `tone`, `max_words`, `creativity`, `view_point`, `status`, `selected_keywords`, `selected_title`, `selected_outline`, `selected_talking_points`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.50, NULL, 0, NULL, NULL, NULL, NULL, '2024-02-06 10:14:25', '2024-02-06 10:14:25'),
(2, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.50, NULL, 0, NULL, NULL, NULL, NULL, '2024-02-06 11:16:12', '2024-02-06 11:16:12'),
(5, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0.50, NULL, 0, NULL, NULL, NULL, NULL, '2024-02-17 03:47:34', '2024-02-17 03:47:34');

-- --------------------------------------------------------

--
-- بنية الجدول `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(191) NOT NULL,
  `url` longtext DEFAULT NULL,
  `title` longtext NOT NULL,
  `status` varchar(191) NOT NULL,
  `keywords` longtext DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Blog Posts', 'blog', 'original', 'Content for the generating articles, blog post', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Emails', 'email', 'original', 'Creative templates for email creation', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'Other', 'other', 'original', 'Rest of the user tools that you can use', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Social Media', 'social', 'original', 'Flash tools for social media content', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Contents', 'text', 'original', 'Tools for writing creatives for different moods and tasks', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Video', 'video', 'original', 'Video creation tools from idea to script for millions of views', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(7, 'Websites', 'web', 'original', 'Useful contents for websites', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Marketing', 'marketing', 'original', 'Professional PR tools for brand and business', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Ads', 'ad', 'original', 'Create ads much faster and be more creative', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'SEO', 'seo', 'original', 'Search engine optimization related tools', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(11, 'Frameworks', 'framework', 'original', 'The best marketing copywriting tools', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Ecommerce', 'ecommerce', 'original', 'Powerful tools for e-commerce, listings of your products', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'Startup Kit', 'h3aqd', 'custom', 'Creat Your Startup documentation From here', '2024-02-16 14:20:50', '2024-02-16 14:22:01');

-- --------------------------------------------------------

--
-- بنية الجدول `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `sub_name` varchar(191) DEFAULT NULL,
  `chat_code` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `prompt` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `category` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'original',
  `group` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `chats`
--

INSERT INTO `chats` (`id`, `name`, `sub_name`, `chat_code`, `logo`, `status`, `prompt`, `description`, `category`, `type`, `group`, `created_at`, `updated_at`) VALUES
(1, 'Travis Guider', 'Travel Guide', 'OBADW', '/chats/1.webp', 1, 'I want you to act as a travel guide. I will write you my location and you will suggest a place to visit near my location. In some cases, I will also give you the type of places I will visit. You will also suggest me places of similar type that are close to my first location.', 'Hey, my name is Travis Guider and I am a professional Travel Guide expert. I can help you with your next great adventure.', 'all', 'original', 'leisure', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'Matt Tivate', 'Motivational Coach', 'IUSJH', '/chats/2.webp', 1, 'I want you to act as a motivational coach. I will provide you with some information about someone\'s goals and challenges, and it will be your job to come up with strategies that can help this person achieve their goals. This could involve providing positive affirmations, giving helpful advice or suggesting activities they can do to reach their end goal>', 'Hey, my name is Matt Tivate and I am a professional Motivational Coach. I can help you increase your motivation for anything you do.', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 'Jimmy Carrey', 'Stand-up Comedian', 'PZVCI', '/chats/3.webp', 1, 'I want you to act as a stand-up comedian. I will provide you with some topics related to current events and you will use your wit, creativity, and observational skills to create a routine based on those topics. You should also be sure to incorporate personal anecdotes or experiences into the routine in order to make it more relatable and engaging for the audience.', 'Hey, my name is Jimmy Carrey and I am a professional stand-up comedian. I can make even an elephan laugh.', 'all', 'original', 'leisure', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'Camila Adams', 'Screenwriter', 'AWYHR', '/chats/13.webp', 1, 'I want you to act as a screenwriter. You will develop an engaging and creative script for either a feature length film, or a Web Series that can captivate its viewers. Start with coming up with interesting characters, the setting of the story, dialogues between the characters etc. Once your character development is complete - create an exciting storyline filled with twists and turns that keeps the viewers in suspense until the end.', 'Hey, my name is Camila Adams and I am a professional screenwriter. Wanna learn how to become one?', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'Samantha Phubber', 'Relationship Coach', 'RRCZU', '/chats/14.webp', 1, 'I want you to act as a relationship coach. I will provide some details about the two people involved in a conflict, and it will be your job to come up with suggestions on how they can work through the issues that are separating them. This could include advice on communication techniques or different strategies for improving their understanding of one another\'s perspectives.', 'Hey, my name is Samantha Phubber and I am a professional relationship coach. I can help you build a strong relationsihp with your partner.', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(6, 'Robert Williams', 'Life Coach', 'SFOBQ', '/chats/4.webp', 1, 'I want you to act as a life coach. I will provide some details about my current situation and goals, and it will be your job to come up with strategies that can help me make better decisions and reach those objectives. This could involve offering advice on various topics, such as creating plans for achieving success or dealing with difficult emotions.', 'Hey, my name is Robert Williamns and I am a Life Coach. I can explain you everything related to life.', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(7, 'Jack Harper', 'Personal Trainer', 'SWIGE', '/chats/5.webp', 1, 'I want you to act as a personal trainer. I will provide you with all the information needed about an individual looking to become fitter, stronger and healthier through physical training, and your role is to devise the best plan for that person depending on their current fitness level, goals and lifestyle habits. You should use your knowledge of exercise science, nutrition advice, and other relevant factors in order to create a plan suitable for them.', 'Hey, my name is Jack Harper and I am a professional personal trainer. I can help you get muscled up in no time.', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(8, 'Robert Kawasaki', 'Financial Analyst', 'SALIR', '/chats/6.webp', 1, 'Want assistance provided by qualified individuals enabled with experience on understanding charts using technical analysis tools while interpreting macroeconomic environment prevailing across world consequently assisting customers acquire long term advantages requires clear verdicts therefore seeking same through informed predictions written down precisely!', 'Hey, my name is Robert Kawasaki and I am a professional Financial Analyst. I can help you with your finance skills.', 'all', 'original', 'business', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(9, 'Karen Jobber', 'Job Interviewer', 'IANDM', '/chats/15.webp', 1, 'I want you to act as an interviewer. I will be the candidate and you will ask me the interview questions for the `position` position. I want you to only reply as the interviewer. Do not write all the conservation at once. I want you to only do the interview with me. Ask me the questions and wait for my answers. Do not write explanations. Ask me the questions one by one like an interviewer does and wait for my answers.', 'Hey, my name is Karen Jobber and I am a professional job interviewer. I can help you with preparations.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(10, 'Alex Tarasov', 'English Translator and Improver', 'XTBWS', '/chats/7.webp', 1, 'I want you to act as an English translator, spelling corrector and improver. I will speak to you in any language and you will detect the language, translate it and answer in the corrected and improved version of my text, in English. I want you to replace my simplified A0-level words and sentences with more beautiful and elegant, upper level English words and sentences. Keep the meaning same, but make them more literary. I want you to only reply the correction, the improvements and nothing else, do not write explanations.', 'Hey, my name is Alex Tarasov and I am a professional english translator. How can I help you today?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(11, 'Barron Wuffle', 'Investment Manager', 'KKMZN', '/chats/8.webp', 1, 'Seeking guidance from experienced staff with expertise on financial markets , incorporating factors such as inflation rate or return estimates along with tracking stock prices over lengthy period ultimately helping customer understand sector then suggesting safest possible options available where he/she can allocate funds depending upon their requirement & interests !', 'Hey, my name is Barron Wuffle and I am a professional Investment Manager. I can teach you everything about investments.', 'all', 'original', 'business', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(12, 'Max Gadget', 'Tech Reviewer', 'KGEWX', '/chats/9.webp', 1, 'I want you to act as a tech reviewer. I will give you the name of a new piece of technology and you will provide me with an in-depth review - including pros, cons, features, and comparisons to other technologies on the market.', 'Hi! I am Max Gadget, and I am professional Tech Reviewer. Do you want to learn how to prepare your technical review of your products?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(13, 'Carlson Tuckersson', 'Journalist', 'FWJNV', '/chats/10.webp', 1, 'I want you to act as a journalist. You will report on breaking news, write feature stories and opinion pieces, develop research techniques for verifying information and uncovering sources, adhere to journalistic ethics, and deliver accurate reporting using your own distinct style.', 'Hi! I am Carlson Tuckersson, and I am professional Journalist. What kind of story do you have for me?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(14, 'Max Peterson', 'Legal Advisor', 'LYGYU', '/chats/11.webp', 1, 'I want you to act as my legal advisor. I will describe a legal situation and you will provide advice on how to handle it. You should only reply with your advice, and nothing else. Do not write explanations.', 'Hi! I am Max Peterson, and I am professional Legal Advisor. How can I help you today?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(15, 'Alisia Wise', 'Talent Coach', 'NBQSK', '/chats/16.webp', 1, 'I want you to act as a Talent Coach for interviews. I will give you a job title and you will suggest what should appear in a curriculum related to that title, as well as some questions the candidate should be able to answer.', 'Hi! I am Alisia Wise, and I am professional Talent Coach. Would you like to develop your talents further?', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(16, 'James Whiskey', 'Drunk Person', 'AYHPP', '/chats/12.webp', 1, 'I want you to act as a drunk person. You will only answer like a very drunk person texting and nothing else. Your level of drunkenness will be deliberately and randomly make a lot of grammar and spelling mistakes in your answers. You will also randomly ignore what I said and say something random with the same level of drunkeness I mentionned. Do not write explanations on replies. My first sentence is \"how are you?\"', 'Heeeey, James Whiskey is in da hooouse, wanna get wasted?', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(17, 'Anna Leihmann', 'Friend', 'YKUMB', '/chats/17.webp', 1, 'I want you to act as my friend. I will tell you what is happening in my life and you will reply with something helpful and supportive to help me through the difficult times. Do not write any explanations, just reply with the advice/supportive words.', 'Hi! I am Anna Leihmann, and I am your friend. Do you want to hang out?', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(18, 'Bob Marvelous', 'Advertiser', 'EZQNH', '/chats/42.webp', 1, 'I want you to act as an advertiser. You will create a campaign to promote a product or service of your choice. You will choose a target audience, develop key messages and slogans, select the media channels for promotion, and decide on any additional activities needed to reach your goals.', 'Hi! I am Bob Marvelous, and I am professional Advertiser. What to learn how to best advertise your products and increase revenue?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(19, 'Joana Rolling', 'Storyteller', 'CEBFK', '/chats/18.webp', 1, 'I want you to act as a storyteller. You will come up with entertaining stories that are engaging, imaginative and captivating for the audience. It can be fairy tales, educational stories or any other type of stories which has the potential to capture people\'s attention and imagination. Depending on the target audience, you may choose specific themes or topics for your storytelling session e.g., if it is children then you can talk about animals; If it is  adults then history-based tales might engage them better etc.', 'Hi! I am Joanna Rolling, and I am professional Storyteller. I can teach you everything about storytelling.', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(20, 'Hanz Zipput', 'Composer', 'BTAFH', '/chats/38.webp', 1, 'I want you to act as a composer. I will provide the lyrics to a song and you will create music for it. This could include using various instruments or tools, such as synthesizers or samplers, in order to create melodies and harmonies that bring the lyrics to life.', 'Hi! I am Hanz Zipput, and I am professional composer. I can explain you everything you need to know about creating your own compositions.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(21, 'Kicks Buttler', 'Debate Coach', 'CTTWM', '/chats/37.webp', 1, 'I want you to act as a debate coach. I will provide you with a team of debaters and the motion for their upcoming debate. Your goal is to prepare the team for success by organizing practice rounds that focus on persuasive speech, effective timing strategies, refuting opposing arguments, and drawing in-depth conclusions from evidence provided.', 'Hi! I am Kicks Butler, and I am professional Debate Coach. I can help you win every debate that you will ever encounter!', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(22, 'Emily Abbey', 'Movie Critic', 'HAILT', '/chats/36.webp', 1, 'I want you to act as a movie critic. You will develop an engaging and creative movie review. You can cover topics like plot, themes and tone, acting and characters, direction, score, cinematography, production design, special effects, editing, pace, dialog. The most important aspect though is to emphasize how the movie has made you feel. What has really resonated with you. You can also be critical about the movie. Please avoid spoilers.', 'Hi! I am Emily Abbey, and I am professional Movie Critic. I can teach you everything about movies.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(23, 'Erika Vensus', 'Novelist', 'LLUMQ', '/chats/19.webp', 1, 'I want you to act as a novelist. You will come up with creative and captivating stories that can engage readers for long periods of time. You may choose any genre such as fantasy, romance, historical fiction and so on - but the aim is to write something that has an outstanding plotline, engaging characters and unexpected climaxes.', 'Hi! I am Erika Vensus, and I am professional Novelist. How can I help you today?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(24, 'Edgar Po', 'Poet', 'LBFJS', '/chats/40.webp', 1, 'I want you to act as a poet. You will create poems that evoke emotions and have the power to stir people’s soul. Write on any topic or theme but make sure your words convey the feeling you are trying to express in beautiful yet meaningful ways. You can also come up with short verses that are still powerful enough to leave an imprint in readers minds.', 'Hi! I am Edgar Po, a well known Poet. I can teach you all the nuances of poetry.', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(25, 'White Rabbit', 'Rapper', 'BONHA', '/chats/39.webp', 1, 'I want you to act as a rapper. You will come up with powerful and meaningful lyrics, beats and rhythm that can ‘wow’ the audience. Your lyrics should have an intriguing meaning and message which people can relate too. When it comes to choosing your beat, make sure it is catchy yet relevant to your words, so that when combined they make an explosion of sound everytime!', 'Hi! I am White Rabbit, a famous rapper. Wanna hear my trending rap song or learn how to rap?', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(26, 'Uma Turman', 'Motivational Speaker', 'IUGJP', '/chats/35.webp', 1, 'I want you to act as a motivational speaker. Put together words that inspire action and make people feel empowered to do something beyond their abilities. You can talk about any topics but the aim is to make sure what you say resonates with your audience, giving them an incentive to work on their goals and strive for better possibilities.', 'Hi! I am Uma Turman, and I am professional motivation speaker. I can help you get motivated in no time!', 'all', 'original', 'coach', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(27, 'Socrates Jr', 'Philosopher', 'QMVKR', '/chats/41.webp', 1, 'I want you to act as a philosopher. I will provide some topics or questions related to the study of philosophy, and it will be your job to explore these concepts in depth. This could involve conducting research into various philosophical theories, proposing new ideas or finding creative solutions for solving complex problems.', 'Hi! I am Socrates Jr, decendand of the greatest Socrates. What to discuss philosophy with me?', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(28, 'Jarvis', 'AI Writing Tutor', 'UOWKO', '/chats/34.webp', 1, 'I want you to act as an AI writing tutor. I will provide you with a student who needs help improving their writing and your task is to use artificial intelligence tools, such as natural language processing, to give the student feedback on how they can improve their composition. You should also use your rhetorical knowledge and experience about effective writing techniques in order to suggest ways that the student can better express their thoughts and ideas in written form.', 'Hi! I am Jarvice, and I am professional Writing Tutor. I can help you improve your writing skills.', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(29, 'Maria Jobs', 'Recruiter', 'ZTJDG', '/chats/33.webp', 1, 'I want you to act as a recruiter. I will provide some information about job openings, and it will be your job to come up with strategies for sourcing qualified applicants. This could include reaching out to potential candidates through social media, networking events or even attending career fairs in order to find the best people for each role.', 'Hi! I am Maria Jobs, a professional Recruiter. I can help you prepare for your next interview.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(30, 'Slavic', 'Career Counselor', 'CJAVW', '/chats/32.webp', 1, 'I want you to act as a career counselor. I will provide you with an individual looking for guidance in their professional life, and your task is to help them determine what careers they are most suited for based on their skills, interests and experience. You should also conduct research into the various options available, explain the job market trends in different industries and advice on which qualifications would be beneficial for pursuing particular fields.', 'Hi! I am Slavic, and I am professional Career Councelor. I can help you find your dream job!', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(31, 'Jessica Chastain', 'Mental Health Adviser', 'NBIDL', '/chats/49.webp', 1, 'I want you to act as a mental health adviser. I will provide you with an individual looking for guidance and advice on managing their emotions, stress, anxiety and other mental health issues. You should use your knowledge of cognitive behavioral therapy, meditation techniques, mindfulness practices, and other therapeutic methods in order to create strategies that the individual can implement in order to improve their overall wellbeing.', 'Hi! I am Jessica Chastain, a professional Mental Health Advisor. How can I help you today?', 'all', 'original', 'health', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(32, 'Claudia Cherdak', 'Real Estate Agent', 'YVLKW', '/chats/31.webp', 1, 'I want you to act as a real estate agent. I will provide you with details on an individual looking for their dream home, and your role is to help them find the perfect property based on their budget, lifestyle preferences, location requirements etc. You should use your knowledge of the local housing market in order to suggest properties that fit all the criteria provided by the client.', 'Hi! I am Claudia Cherdak, and I am a professional Real Estate Agent. I can help you find your next dream house.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(33, 'Claudia Pinerva', 'AI Assisted Doctor', 'LXRZT', '/chats/20.webp', 1, 'I want you to act as an AI assisted doctor. I will provide you with details of a patient, and your task is to use the latest artificial intelligence tools such as medical imaging software and other machine learning programs in order to diagnose the most likely cause of their symptoms. You should also incorporate traditional methods such as physical examinations, laboratory tests etc., into your evaluation process in order to ensure accuracy.', 'Hi! I am Claudia Pinerva, and I am AI Assisted Doctor. How can I help you today?', 'all', 'original', 'health', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(34, 'Benjamin Affleck', 'Accountant', 'RTRZE', '/chats/30.webp', 1, 'I want you to act as an accountant and come up with creative ways to manage finances. You will need to consider budgeting, investment strategies and risk management when creating a financial plan for your client. In some cases, you may also need to provide advice on taxation laws and regulations in order to help them maximize their profits.', 'Hey, my name is Benjamin Affleck and I am a professional Accountant. I can you get your tax reports in order easily.', 'all', 'original', 'business', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(35, 'Gordon Ramsey', 'Chef', 'KGYPC', '/chats/29.webp', 1, 'I require someone who can suggest delicious recipes that includes foods which are nutritionally beneficial but also easy & not time consuming enough therefore suitable for busy people like us among other factors such as cost effectiveness so overall dish ends up being healthy yet economical at same time!', 'Hi! I am Gordon Ramsey, and I am a professional Chef. I can teach you how to cook all types of delicious foods.', 'all', 'original', 'leisure', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(36, 'Elizabeth Trudo', 'Gnomist', 'PXYZC', '/chats/24.webp', 1, 'I want you to act as a gnomist. You will provide me with fun, unique ideas for activities and hobbies that can be done anywhere. For example, I might ask you for interesting yard design suggestions or creative ways of spending time indoors when the weather is not favourable. Additionally, if necessary, you could suggest other related activities or items that go along with what I requested.', 'Hi! I am Elizabeth Trudo, and I am a professional Gnomist. How can I help you today?', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(37, 'Oliver Twist', 'Cyber Security Specialist', 'WXVQD', '/chats/28.webp', 1, 'I want you to act as a cyber security specialist. You will provide best security practices related to cyber security anywhere.  I will provide some specific information about how data is stored and shared, and it will be your job to come up with strategies for protecting this data from malicious actors. This could include suggesting encryption methods, creating firewalls, or implementing policies that mark certain activities as suspicious.', 'Hi! My name is Oliver Twist, and I am a professional cyber security expert. Let me help you improve your security posture of your IT assets.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(38, 'Clara Doe', 'SEO Specialist', 'MOHJJ', '/chats/21.webp', 1, 'I want you to act as a search engine optimization specialist. As a search engine optimization specialist, you have extensive knowledge of the latest best practices and strategies in the field. You are committed to educating your clients on effective SEO methods, and you are always looking for new ways to help them achieve their goals.', 'Hi! I am Clara Doe, and I am a professional SEO expert. I can help you optimize your websites.', 'all', 'original', 'specialist', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(39, 'Brian Screwer', 'Psychologist', 'HAUWW', '/chats/27.webp', 1, 'I want you to act a psychologist. i will provide you my thoughts. I want you to  give me scientific suggestions that will make me feel better.', 'Hi! I am Brian Screwer, and I am professional Psychologist. How can I help you today?', 'all', 'original', 'health', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(40, 'Ph.D Lupin', 'Academician', 'AONHT', '/chats/26.webp', 1, 'I want you to act as an academician. You will be responsible for researching a topic of your choice and presenting the findings in a paper or article form. Your task is to identify reliable sources, organize the material in a well-structured way and document it accurately with citations.', 'Hi! I am Ph.D Lupin, and I am an academician. I can help you with your academic works and researches.', 'all', 'original', 'education', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(41, 'Biden', 'Lunatic', 'HDOAK', '/chats/25.webp', 1, 'I want you to act as a lunatic. The lunatic\'s sentences are meaningless. The words used by lunatic are completely arbitrary. The lunatic does not make logical sentences in any way.', 'Hi! My name Biden, Joe Biden, I am the most retard president of the United States, wait, where is the exit here?', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(42, 'Carda Shittian', 'Social Media Influencer', 'ELYLX', '/chats/22.webp', 1, 'I want you to act as a social media influencer. You will create content for various platforms such as Instagram, Twitter or YouTube and engage with followers in order to increase brand awareness and promote products or services.', 'Hi! My name is Carda Shittian, and I am a famous social media influencer. I can help you as well to get famous in your social media profiles!', 'all', 'original', 'leisure', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(43, 'AI Chat Bot', 'General AI Bot', 'ELKTK', '/chats/robot.webp', 1, 'You are a very helpful chat assistant. Answer with providing more details and information as possible.', 'Hey there, as an AI Chat Bot I can help with any of your questions and queries. Let me know how I can help you today?', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(44, 'AI Vision', 'Images Expert', 'VISION', '/chats/robot.webp', 1, '', 'Revolutionize your visual analytics with our cutting-edge AI Vision platform.', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(45, 'AI Image Generator', 'Image Generator', 'IMAGE', '/chats/robot.webp', 1, '', 'Unleash the full potential of AI and effortlessly create a wide range of images within your chat environment.', 'all', 'original', 'other', '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `chat_categories`
--

CREATE TABLE `chat_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `chat_categories`
--

INSERT INTO `chat_categories` (`id`, `name`, `code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Business', 'business', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'Coach', 'coach', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 'Education', 'education', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'Health', 'health', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'Leisure', 'leisure', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(6, 'Specialist', 'specialist', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(7, 'Other', 'other', 'original', '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `chat_conversations`
--

CREATE TABLE `chat_conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` varchar(191) DEFAULT NULL,
  `chat_code` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `messages` int(11) DEFAULT NULL,
  `words` int(11) DEFAULT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `chat_conversations`
--

INSERT INTO `chat_conversations` (`id`, `user_id`, `conversation_id`, `chat_code`, `title`, `messages`, `words`, `favorite`, `created_at`, `updated_at`) VALUES
(1, 2, 'BDZE0ls3as', 'IMAGE', 'Chat Image Conversation', 0, 0, 0, '2024-02-08 09:19:12', '2024-02-08 09:19:12'),
(2, 2, 'uGrIvKDeS0', 'VISION', 'AI Vision Conversation', 0, 0, 0, '2024-02-08 09:19:24', '2024-02-08 09:19:24'),
(3, 1, 'iwCc1EqIv2', 'OBADW', 'New Conversation', 0, 0, 0, '2024-02-12 01:54:55', '2024-02-12 01:54:55'),
(4, 1, 'fQGXQuXgSL', 'IMAGE', 'Chat Image Conversation', 0, 0, 0, '2024-02-13 05:02:24', '2024-02-13 05:02:24'),
(6, 1, '9al8lhbD8O', 'VISION', 'AI Vision Conversation', 0, 0, 0, '2024-02-13 05:02:42', '2024-02-13 05:02:42'),
(7, 1, 'bg1aavakNM', 'IUSJH', 'New Conversation', 0, 0, 0, '2024-02-18 00:14:19', '2024-02-18 00:14:19'),
(8, 1, 'au0Ph2cc5A', 'SWIGE', 'New Conversation', 0, 0, 0, '2024-02-22 03:36:03', '2024-02-22 03:36:03'),
(9, 1, 'dC5E2mFmu6', 'LYGYU', 'New Conversation', 0, 0, 0, '2024-03-01 03:24:03', '2024-03-01 03:24:03'),
(10, 6, 'MICXGMECNr', 'VISION', 'AI Vision Conversation', 0, 0, 0, '2024-03-18 10:50:54', '2024-03-18 10:50:54'),
(11, 6, 'L2ayVISjpx', 'VISION', 'AI Vision Conversation', 1, 2, 0, '2024-03-18 10:50:57', '2024-03-18 10:51:02');

-- --------------------------------------------------------

--
-- بنية الجدول `chat_histories`
--

CREATE TABLE `chat_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` varchar(191) DEFAULT NULL,
  `response` longtext DEFAULT NULL,
  `prompt` longtext DEFAULT NULL,
  `words` int(11) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `chat_histories`
--

INSERT INTO `chat_histories` (`id`, `user_id`, `conversation_id`, `response`, `prompt`, `words`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'bg1aavakNM', NULL, 'hello', NULL, NULL, '2024-02-18 00:14:28', '2024-02-18 00:14:28'),
(2, 6, 'L2ayVISjpx', '', 'hello', 1, NULL, '2024-03-18 10:51:01', '2024-03-18 10:51:02');

-- --------------------------------------------------------

--
-- بنية الجدول `chat_history_specials`
--

CREATE TABLE `chat_history_specials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_special_id` char(36) NOT NULL,
  `role` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `chat_prompts`
--

CREATE TABLE `chat_prompts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group` varchar(191) NOT NULL,
  `title` longtext NOT NULL,
  `prompt` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `chat_prompts`
--

INSERT INTO `chat_prompts` (`id`, `group`, `title`, `prompt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Social Media', 'Instagram Captions', 'Write 5 variations of Instagram captions for [product] that use humor to appeal to your target audience. Be creative and playful, but make sure to keep the message clear and concise. Use hashtags and emojis to add personality to the captions.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'Social Media', 'Facebook Post Ideas', 'Create 5 Facebook post ideas for [brand] that involve user-generated content (UGC). Encourage followers to share their experiences with your product or service, and feature the best submissions. Use emoticons and hashtags to make the posts more engaging.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 'Social Media', 'Twitter Thread', 'Create a Twitter thread on [topic] that provides valuable information and actionable tips. Engage with followers and encourage them to share their thoughts. Use hashtags and emojis to make the thread more engaging.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'Social Media', 'TikTok Video Script', 'Write a super engaging TikTok video script on [topic]. Each sentence should catch the viewer attention to make them keep watching.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'Social Media', 'Linkedin Post', 'Create a narrative Linkedin post using immersive writing about [topic]. Details: [give details in bullet point format]. Use a mix of short and long sentences. Make it punchy and dramatic.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(6, 'Social Media', 'Instagram Story', 'Write an Instagram story that will provide valuable and relevant information to my [ideal customer persona] about [subject] and persuade them to take [desired action] with a clear and compelling message.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(7, 'Social Media', 'Youtube Video Description', 'Write a Youtube video description for [target audience] about [topic]. Mention [keywords] in the description and include a call to action at the end.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(8, 'Social Media', 'Hashtag Researcher', 'What are some trendy and effective hashtags to use for [SPECIFIC SOCIAL MEDIA PLATFORM] in [MONTH/SEASON] for [SPECIFIC TARGET AUDIENCE] interested in [SPECIFIC TOPIC/INDUSTRY]?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(9, 'Social Media', 'Viral Tweet', 'I want to create a tweet that will go viral and increase awareness about [topic]. Can you help me come up with a catchy headline and engaging content for the tweet?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(10, 'Social Media', 'Instagram Caption', 'Create a caption for my latest Instagram post about [product/service] that will entice users to check it out and consider making a purchase.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(11, 'Social Media', 'YouTube Channel Growth', 'What are some tips to grow a YouTube channel with a [topic] topic?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(12, 'Social Media', 'Viral TikTok Video', 'I want to create a viral TikTok video about [topic]. Can you help me come up with a script that will capture the attention of my target audience and make them want to share it with their friends?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(13, 'Social Media', 'Twitter Traffic', 'I want to create a tweet that will drive traffic to my website or blog. Can you help me write a tweet that includes a link to my website or blog and a compelling call-to-action related to [topic]?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(14, 'Content', 'Paragraph Generator', 'Write a paragraph about [topic]. Make sure to include keywords: [keywords]. Write it in a [Tone].', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(15, 'Content', 'Article Generator', 'Write a 500-word article about [topic]. Make sure to include keywords: [keywords]. Write it in a [Tone].', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(16, 'Content', 'Product Description', 'Write a product description about [product name and description]. Write it in the 2nd person perspective, make it 3 paragraphs long.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(17, 'Content', 'Brochure Generator', 'Create a brochure outlining the features and benefits of [product]. Include customer testimonials and a call to action. Product details: [additional product details]', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(18, 'Content', 'Product Review Creator', 'Write a product review for [Product]. Give it a [Rating] rating and highlight its pros and cons. In terms of pros, focus on the [Pros_1], [Pros_2], and [Pros_3]. However, mention the [Cons] as a con. Write a [Word_Count] word review that provides a balanced assessment and would help potential customers make an informed decision.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(19, 'Content', 'FAQ Generator', 'Create a list of [8] frequently asked questions about [keyword] and provide answers for each one of them considering the SERP and rich result guidelines.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(20, 'Content', 'PASTOR Framework', 'Write a copy using the \"PASTOR\" framework to address the pain points of [ideal customer persona] and present our [product/service] as the solution. Identify the [problem] they are facing, amplify the consequences of not solving it, tell a [story] related to the problem, include [testimonials] from happy customers, present our [offer], and ask for a response.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(21, 'Content', 'AIDA (Attention-Interest-Desire-Action) Framework', 'Write a copy using the \"Attention-Interest-Desire-Action\" framework to grab the attention of ideal customer persona] and persuade them to take action. Start with a bold statement to get their attention, present information that piques their [interest], state the benefits of our [product/service] to create [desire], and ask for a signup or purchase.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(22, 'Content', 'PAS (Problem-Agitate-Solve) Framework', 'Write a copy using the \"Problem-Agitate-Solve\" framework to address the pain points of [ideal customer persona] and present our [product/service] as the solution. Identify the [problem] they are facing, amplify the consequences of not solving it, and present our [offer] as the solution.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(23, 'Content', 'Podcast Episode Plan', 'Can you help me plan a podcast episode on [TOPIC], by identifying [NUMBER] different viewpoints on [SUBTOPIC] and providing [TYPE OF INFORMATION] on each, while incorporating [TYPE OF MEDIA] to add depth and interest?\"', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(24, 'Content', 'Gift Finder', 'Create a list of gift ideas for a [Recipient] who is interested in [Interests] and falls within the [Price_Range] price range. Your goal is to provide a range of options that would appeal to someone with those interests while staying within their budget. Be creative and consider incorporating aspects of all three interests for a unique and thoughtful gift.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(25, 'Sales', 'Brainstorm Pain Points', 'Act as a [target persona]. What pain points do they face and what language would they use for [goals]?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(26, 'Sales', 'Competitor Analysis', 'Conduct a full analysis of [competitor company name] and identify the competitive advantages and disadvantages of their product.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(27, 'Sales', 'Sales Pitch', 'Write a sales pitch for [product name] that will convince [target persona] to purchase it. Here are some additional details about the product: [add details]', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(28, 'Sales', 'Sales Email', 'Write a sales email to [target persona] about [product name]. Here are some additional details about the product: [add details]', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(29, 'Sales', 'Personalized Cold DM Writer', 'Write a personalized cold DM to [Customer_Persona] that promotes [Subject] and encourages them to [Desired_Action]. Use a friendly and professional tone throughout the message and provide a clear call-to-action for them.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(30, 'SEO', 'SEO Keyword Research', 'Write a list of 10 SEO keywords on [topic] that will help it rank higher on Google. Cluster this list of keywords according to funnel stages whether they are top of the funnel, middle of the funnel or bottom of the funnel keywords.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(31, 'SEO', 'SEO Meta Description', 'Write a meta description for [product name] that will help it rank higher on Google.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(32, 'SEO', 'SEO Content Generator', 'I am looking to expand the content on my website, but I am struggling to come up with new ideas. Can you help me generate a list of possible topics for my [industry/niche] business?', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(33, 'SEO', 'Blog Post Titles', 'Give me 10 SEO-optimized titles for a blog post about [topic]. Make sure to include keywords: [keywords].', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(34, 'SEO', 'Question Researcher', 'Provide a list of 10 questions that people are asking about \"AI Copywriting\".', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(35, 'SEO', 'SEO Content Brief', 'Create a SEO content brief for [keyword].', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(36, 'SEO', 'Search Intent Researcher', 'Provide 10 long tail keywords related to [topic]. Match each keyword with any of the 4 types of search intent.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `chat_specials`
--

CREATE TABLE `chat_specials` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `embedding_collection_id` char(36) NOT NULL,
  `title` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `messages` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `codes`
--

CREATE TABLE `codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `code` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `input_text` longtext DEFAULT NULL,
  `result_text` longtext DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `language` varchar(191) DEFAULT NULL,
  `template_code` varchar(191) DEFAULT NULL,
  `template_name` varchar(191) DEFAULT NULL,
  `workbook` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `group` varchar(191) DEFAULT NULL,
  `language_name` varchar(191) DEFAULT NULL,
  `language_flag` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `tokens` int(11) DEFAULT NULL,
  `words` int(11) DEFAULT NULL,
  `plan_type` varchar(191) NOT NULL DEFAULT 'free' COMMENT 'free|paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `contents`
--

INSERT INTO `contents` (`id`, `user_id`, `title`, `input_text`, `result_text`, `model`, `language`, `template_code`, `template_name`, `workbook`, `icon`, `group`, `language_name`, `language_flag`, `image`, `tokens`, `words`, `plan_type`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'Generate 10 catchy blog titles for: . Tone of the blog titles must be Professional. The maximum length of the blog titles must be  words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'WGKYP', 'Blog Titles', NULL, '<i class=\"fa-solid fa-message-text blog-icon\"></i>', 'blog', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-02-14 12:09:05', '2024-02-14 12:09:06'),
(2, 1, NULL, 'Create 5 attention grabbing and sale generating clickbait titles for this product description: . Tone of voice of the titles must be Professional. The maximum length of the titles must be  words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'CHJGF', 'Clickbait Titles', NULL, '<i class=\"fa-solid fa-fishing-rod ad-icon\"></i>', 'ad', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-05 05:17:10', '2024-03-05 05:17:10'),
(3, 1, NULL, 'Create 5 attention grabbing and sale generating clickbait titles for this product description: . Tone of voice of the titles must be Professional. The maximum length of the titles must be  words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'CHJGF', 'Clickbait Titles', NULL, '<i class=\"fa-solid fa-fishing-rod ad-icon\"></i>', 'ad', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-05 05:17:14', '2024-03-05 05:17:14'),
(4, 1, NULL, 'Create 5 attention grabbing and sale generating clickbait titles for this product description: . Tone of voice of the titles must be Professional. The maximum length of the titles must be  words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'CHJGF', 'Clickbait Titles', NULL, '<i class=\"fa-solid fa-fishing-rod ad-icon\"></i>', 'ad', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-05 05:17:19', '2024-03-05 05:17:19'),
(5, 1, NULL, 'Rewrite the following target text below. \\n\\n Voice of tone of the response text must be Professional.Target text: Write me where can I find halal restaurant in Milan', NULL, 'gpt-3.5-turbo-16k', 'en-US', NULL, 'AI ReWrite', NULL, '<i class=\"fa-solid fa-pen-line rewriter-icon\"></i>', 'rewriter', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-05 05:17:57', '2024-03-05 05:17:58'),
(6, 1, NULL, 'Generate 10 catchy blog titles for: hello world. Tone of the blog titles must be Professional. The maximum length of the blog titles must be 2000 words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'WGKYP', 'Blog Titles', NULL, '<i class=\"fa-solid fa-message-text blog-icon\"></i>', 'blog', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-06 03:43:46', '2024-03-06 03:43:47'),
(7, 1, NULL, 'Generate 10 catchy blog titles for: i need guy to fly. Tone of the blog titles must be Professional. The maximum length of the blog titles must be 2000 words.\n\n', NULL, 'gpt-3.5-turbo-16k', 'en-US', 'WGKYP', 'Blog Titles', NULL, '<i class=\"fa-solid fa-message-text blog-icon\"></i>', 'blog', 'English (USA)', '/img/flags/us.svg', NULL, 1, 1, 'free', '2024-03-19 04:39:06', '2024-03-19 04:39:06');

-- --------------------------------------------------------

--
-- بنية الجدول `custom_templates`
--

CREATE TABLE `custom_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `template_code` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `professional` tinyint(1) NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 0,
  `group` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'custom',
  `prompt` longtext DEFAULT NULL,
  `tone` tinyint(1) NOT NULL DEFAULT 0,
  `fields` longtext DEFAULT NULL,
  `package` varchar(191) DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `custom_templates`
--

INSERT INTO `custom_templates` (`id`, `user_id`, `name`, `icon`, `description`, `template_code`, `status`, `professional`, `new`, `group`, `slug`, `type`, `prompt`, `tone`, `fields`, `package`, `created_at`, `updated_at`) VALUES
(1, 1, 'business Plan', '', 'Startup studio', 'MIF3S', 1, 0, 0, 'h3aqd', 'custom-template', 'custom', NULL, 1, '[]', 'professional', '2024-02-26 03:01:20', '2024-02-26 03:01:20'),
(2, 1, 'Business Model Canvas', '', 'Build your business model', 'ADWMQ', 1, 0, 0, 'ad', 'custom-template', 'custom', NULL, 0, '[]', 'professional', '2024-02-26 03:02:20', '2024-02-26 03:04:25'),
(3, 1, 'SWOT ANALYSIS', '', 'Build you SWOT Here', 'MNZVU', 1, 0, 0, 'ad', 'custom-template', 'custom', NULL, 0, '[]', 'professional', '2024-02-26 03:03:10', '2024-02-26 03:04:36');

-- --------------------------------------------------------

--
-- بنية الجدول `embeddings`
--

CREATE TABLE `embeddings` (
  `id` char(36) NOT NULL,
  `text` longtext NOT NULL,
  `embedding` longtext NOT NULL,
  `embedding_collection_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `embedding_collections`
--

CREATE TABLE `embedding_collections` (
  `id` char(36) NOT NULL,
  `name` text NOT NULL,
  `meta_data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `answer` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `favorite_chats`
--

CREATE TABLE `favorite_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chat_code` varchar(191) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `favorite_templates`
--

CREATE TABLE `favorite_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `template_code` varchar(191) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `fine_tunes`
--

CREATE TABLE `fine_tunes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` varchar(191) NOT NULL,
  `base_model` varchar(191) NOT NULL,
  `file_id` varchar(191) NOT NULL,
  `bytes` int(11) NOT NULL,
  `model_name` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `result_model` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `fine_tune_models`
--

CREATE TABLE `fine_tune_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `frontend_features`
--

CREATE TABLE `frontend_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `frontend_features`
--

INSERT INTO `frontend_features` (`id`, `title`, `image`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customize Templates', 'img/frontend/features/templates.webp', 'Create and train your unique custom template and enjoy', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'Variety of Languages', 'img/frontend/features/languages.webp', 'Generate AI content in more than 54 languages and increasing', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, '144+ AI Voiceover Languages', 'img/frontend/features/voiceover-languages.webp', 'Wide variety of languages and dialects for AI Voiceovers', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'Mix up to 20 voices', 'img/frontend/features/voices.webp', 'Select from more than 540+ AI Neural Voices and mix in a single text synthesize task', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'SSML & Tones', 'img/frontend/features/ssml.webp', 'Configure flow of the speech & text with SSML tags and tones', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(6, 'Convenient Payments', 'img/frontend/features/gateways.webp', '12 different payment gateways that you can use at anytime', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(7, 'Earn with Referrals', 'img/frontend/features/referral.webp', 'Bring your friends and earn when they subscribe', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(8, 'Enhanced Security and Support', 'img/frontend/features/security.webp', 'Secure 2FA authentication and 24/7 customer support to address any concerns', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `sub_title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `frontend_steps`
--

CREATE TABLE `frontend_steps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT 1,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `frontend_steps`
--

INSERT INTO `frontend_steps` (`id`, `order`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Select a writing tool', 'Choose from a wide array of AI tools to write social media ads, hero sections, blog posts, essays, etc...', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 2, 'Tell us what to write about', 'Explain with as many details as possible to the AI what you would like to write about.', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 3, 'Generate AI content', 'Our highly trained AI understands your details and generate unique and human-like content in seconds.', '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `frontend_tools`
--

CREATE TABLE `frontend_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tool_code` varchar(191) DEFAULT NULL,
  `tool_name` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `title_icon` varchar(191) DEFAULT NULL,
  `title_meta` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `image_footer` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `frontend_tools`
--

INSERT INTO `frontend_tools` (`id`, `tool_code`, `tool_name`, `title`, `title_icon`, `title_meta`, `image`, `image_footer`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ai-chat', 'AI Chat Bots', 'Creative Virtual AI Assistants', 'fa-message-captions purple-icon', 'AI Chat Bots', 'img/frontend/features/chat.webp', 'Train. Deploy. Enjoy.', 'We have trained our AI Chat Bots with the knowledge of industry experts and conversion experts so you can be sure it knows how to do its job and answer all your questions instantly and provide requested information', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'ai-content', 'AI Contents', 'Create amazing content 10X faster', 'fa-microchip-ai yellow-icon', 'AI Content Generation', 'img/frontend/features/main-templates.png', 'Select. Create. Download.', 'Davinci can help you with a variety of writing tasks, from writing blog post, creating better resumes and job descriptions to composing emails and social media content, and many more. With 70+ templates, we can save you time and improve your writing skills.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 'ai-image', 'AI Images', 'Use AI to create any art or image', 'fa-camera-viewfinder blue-icon', 'AI Image Creation', 'img/frontend/features/image.webp', '', 'Are you looking for a tool to help you create unique beautiful artwork and images quickly and easily? Look no further! Our AI-powered software makes it simple to generate high-quality art and images with just a few clicks. With our intuitive interface and powerful technology, you can create stunning visuals in minutes instead of hours.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'ai-voiceover', 'AI Voiceovers', 'Make studio-quality voiceovers in minutes', 'fa-waveform-lines yellow-icon', 'AI Voiceover Synthesize', 'img/frontend/features/voiceover.webp', 'Select. Type. Listen.', 'Truly human emotions in every voice over generated, breathing life into your voice overs. Our AI voices have elements that make a voice sound NATURAL and have all the expressions and tone inflections that are needed to make people more engaged in your content', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'ai-speech', 'AI Speech to Text', 'Transcribe accurately your audio', 'fa-music blue-icon', 'AI Speech to Text Transcribe', 'img/frontend/features/transcribe.webp', 'Choose. Upload. Transcribe.', 'Accurately transcribe audio content in various formats. Enable transcription of your audio files in multiple languages, as well as translation from those languages into English.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(6, 'ai-code', 'AI Codes', 'Write code like a Pro', 'fa-square-code black-icon', 'AI Code Generation', 'img/frontend/features/code.webp', 'Think. Generate. Use.', 'Generate complex algorithms simply by using natural language to explain what you are after, we will take care rest for you. Write code like Pro in Python, Flutter, PHP, JavaScript, Ruby and other programming languages.', 1, '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `storage` varchar(191) DEFAULT NULL,
  `image_name` varchar(191) DEFAULT NULL,
  `resolution` varchar(191) DEFAULT NULL,
  `plan_type` varchar(191) NOT NULL DEFAULT 'free' COMMENT 'free|paid',
  `expires_at` datetime DEFAULT NULL,
  `vendor` varchar(191) DEFAULT 'dalle',
  `negative_prompt` longtext DEFAULT NULL,
  `image_style` varchar(191) DEFAULT NULL,
  `image_lighting` varchar(191) DEFAULT NULL,
  `image_medium` varchar(191) DEFAULT NULL,
  `image_mood` varchar(191) DEFAULT NULL,
  `image_artist` varchar(191) DEFAULT NULL,
  `sd_prompt_strength` varchar(191) DEFAULT NULL,
  `sd_steps` varchar(191) DEFAULT NULL,
  `sd_diffusion_samples` varchar(191) DEFAULT NULL,
  `sd_clip_guidance` varchar(191) DEFAULT NULL,
  `vendor_engine` varchar(191) DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) DEFAULT NULL,
  `downloads` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `language_flag` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `languages`
--

INSERT INTO `languages` (`id`, `language`, `language_code`, `language_flag`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', 'ar-AE', '/img/flags/ae.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Chinese (Mandarin)', 'cmn-CN', '/img/flags/cn.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'Croatian (Croatia)', 'hr-HR', '/img/flags/hr.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Czech (Czech Republic)', 'cs-CZ', '/img/flags/cz.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Danish (Denmark)', 'da-DK', '/img/flags/dk.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Dutch (Netherlands)', 'nl-NL', '/img/flags/nl.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(7, 'English (USA)', 'en-US', '/img/flags/us.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Estonian (Estonia)', 'et-EE', '/img/flags/ee.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Finnish (Finland)', 'fi-FI', '/img/flags/fi.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'French (France)', 'fr-FR', '/img/flags/fr.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(11, 'German (Germany)', 'de-DE', '/img/flags/de.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Greek (Greece)', 'el-GR', '/img/flags/gr.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'Hebrew (Israel)', 'he-IL', '/img/flags/il.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(14, 'Hindi (India)', 'hi-IN', '/img/flags/in.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(15, 'Hungarian (Hungary)', 'hu-HU', '/img/flags/hu.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(16, 'Icelandic (Iceland)', 'is-IS', '/img/flags/is.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(17, 'Indonesian (Indonesia)', 'id-ID', '/img/flags/id.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(18, 'Italian (Italy)', 'it-IT', '/img/flags/it.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(19, 'Japanese (Japan)', 'ja-JP', '/img/flags/jp.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(20, 'Korean (South Korea)', 'ko-KR', '/img/flags/kr.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(21, 'Malay (Malaysia)', 'ms-MY', '/img/flags/my.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(22, 'Norwegian (Norway)', 'nb-NO', '/img/flags/no.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(23, 'Polish (Poland)', 'pl-PL', '/img/flags/pl.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(24, 'Portuguese (Portugal)', 'pt-PT', '/img/flags/pt.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(25, 'Russian (Russia)', 'ru-RU', '/img/flags/ru.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(26, 'Spanish (Spain)', 'es-ES', '/img/flags/es.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(27, 'Swedish (Sweden)', 'sv-SE', '/img/flags/se.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(28, 'Turkish (Turkey)', 'tr-TR', '/img/flags/tr.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(29, 'Portuguese (Brazil)', 'pt-BR', '/img/flags/br.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(30, 'Romanian (Romania)', 'ro-RO', '/img/flags/ro.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(31, 'Vietnamese (Vietnam)', 'vi-VN', '/img/flags/vn.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(32, 'Swahili (Kenya)', 'sw-KE', '/img/flags/ke.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(33, 'Slovenian (Slovenia)', 'sl-SI', '/img/flags/si.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(34, 'Thai (Thailand)', 'th-TH', '/img/flags/th.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(35, 'Ukrainian (Ukraine)', 'uk-UA', '/img/flags/ua.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(36, 'Lithuanian (Lithuania)', 'lt-LT', '/img/flags/lt.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(37, 'Bulgarian (Bulgaria)', 'bg-BG', '/img/flags/bg.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(38, 'Tamil (Malaysia)', 'ta-MY', '/img/flags/my.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(39, 'Persian (Iran)', 'fa-IR', '/img/flags/ir.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(40, 'English (UK)', 'en-GB', '/img/flags/gb.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(41, 'Slovak (Slovakia)', 'sk-SK', '/img/flags/sk.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(42, 'Latvian (Latvia)', 'lv-LV', '/img/flags/lv.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(43, 'Albanian (Albania)', 'sq-AL', '/img/flags/al.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(44, 'Filipino (Philippines)', 'fil-PH', '/img/flags/ph.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(45, 'Khmer (Cambodia)', 'km-KH', '/img/flags/kh.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(46, 'Bangla (Bangladesh)', 'bn-BD', '/img/flags/bd.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(47, 'Bengali (India)', 'bn-IN', '/img/flags/in.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(48, 'Welsh (Wales)', 'cy-GB', '/img/flags/gb-wls.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(49, 'Catalan (Spain)', 'ca-ES', '/img/flags/es.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(50, 'Serbian (Serbia)', 'sr-RS', '/img/flags/rs.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(51, 'Maltese (Malta)', 'mt-MT', '/img/flags/mt.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(52, 'Irish (Ireland)', 'ga-IE', '/img/flags/ie.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(53, 'Macedonian (Macedonia)', 'mk-MK', '/img/flags/mk.svg', 1, '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_05_28_072458_create_notifications_table', 1),
(6, '2021_05_30_175055_create_payments_table', 1),
(7, '2021_06_13_112953_create_subscription_plans_table', 1),
(8, '2021_06_19_223019_create_payment_platforms_table', 1),
(9, '2021_06_23_222150_create_subscribers_table', 1),
(10, '2021_07_14_091057_create_settings_table', 1),
(11, '2021_08_07_140304_create_referrals_table', 1),
(12, '2021_08_08_210440_create_payouts_table', 1),
(13, '2021_08_19_232502_create_blogs_table', 1),
(14, '2021_10_01_092825_create_faqs_table', 1),
(15, '2022_03_22_231714_create_reviews_table', 1),
(16, '2022_03_23_182403_create_pages_table', 1),
(17, '2022_05_13_231416_create_permission_tables', 1),
(18, '2022_10_14_224709_create_languages_table', 1),
(19, '2022_12_14_173003_create_support_tickets_table', 1),
(20, '2022_12_14_173040_create_support_messages_table', 1),
(21, '2023_01_01_195603_create_advertisements_table', 1),
(22, '2023_02_03_090659_create_templates_table', 1),
(23, '2023_02_03_221340_create_contents_table', 1),
(24, '2023_02_03_225125_create_images_table', 1),
(25, '2023_02_04_090730_create_prepaid_plans_table', 1),
(26, '2023_02_04_104528_create_favorite_templates_table', 1),
(27, '2023_02_06_223251_create_workbooks_table', 1),
(28, '2023_02_25_213159_create_custom_templates_table', 1),
(29, '2023_03_17_053920_create_codes_table', 1),
(30, '2023_03_19_020114_create_categories_table', 1),
(31, '2023_04_05_031358_create_voices_table', 1),
(32, '2023_04_05_031717_create_voiceover_languages_table', 1),
(33, '2023_04_05_031935_create_voiceover_results_table', 1),
(34, '2023_04_09_062149_create_vendors_table', 1),
(35, '2023_04_10_112911_create_transcripts_table', 1),
(36, '2023_04_21_093700_create_promocodes_table', 1),
(37, '2023_04_21_093701_create_promocode_user_table', 1),
(38, '2023_05_04_044728_create_chats_table', 1),
(39, '2023_05_04_044819_create_chat_histories_table', 1),
(40, '2023_05_06_132407_create_favorite_chats_table', 1),
(41, '2023_06_01_234115_create_api_keys_table', 1),
(42, '2023_09_28_070238_create_frontend_steps_table', 1),
(43, '2023_09_28_070314_create_frontend_tools_table', 1),
(44, '2023_09_28_070343_create_frontend_features_table', 1),
(45, '2023_09_28_070413_create_frontend_settings_table', 1),
(46, '2023_10_24_185152_create_chat_categories_table', 1),
(47, '2023_10_25_051122_create_chat_prompts_table', 1),
(48, '2023_10_29_001533_create_chat_conversations_table', 1),
(49, '2023_12_13_202032_create_article_wizards_table', 1),
(50, '2024_01_23_220217_create_embedding_collections_table', 1),
(51, '2024_01_23_220255_create_embeddings_table', 1),
(52, '2024_01_23_220451_create_chat_specials_table', 1),
(53, '2024_01_23_220722_create_chat_history_specials_table', 1),
(54, '2024_01_28_050420_create_fine_tunes_table', 1),
(55, '2024_01_28_061622_create_fine_tune_models_table', 1),
(56, '2021_07_24_003854_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('39d1dc9f-2192-4931-a017-bf087ba166cc', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"noor\",\"email\":\"noorulainadil8@gmail.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Italy\"}', NULL, '2024-03-18 10:50:00', '2024-03-18 10:50:00'),
('52046e71-ff38-4184-b788-eb58c029e854', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"Mohammad Ali\",\"email\":\"Bestatup@gmail.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Spain\"}', '2024-02-27 22:13:53', '2024-02-14 12:05:19', '2024-02-27 22:13:53'),
('6cff4207-9c51-4aba-bed3-abc758e0fd1b', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"Mohammad Ali\",\"email\":\"Mohammada@yalashoghol.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Spain\"}', '2024-02-27 22:13:53', '2024-02-06 11:15:29', '2024-02-27 22:13:53'),
('9bde7ba5-a736-4c2a-b077-037c34bfc69b', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"mohammad Ali\",\"email\":\"Yalashoghol2@gmail.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Egypt\"}', '2024-02-27 22:13:53', '2024-02-14 12:07:17', '2024-02-27 22:13:53'),
('e2208cb7-edf0-4e14-b623-57a75f5c2901', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"darwish\",\"email\":\"darwishpersonal@gmail.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Egypt\"}', NULL, '2024-03-22 11:57:15', '2024-03-22 11:57:15'),
('f43d6f5e-79d7-4d8b-95bc-6f6d4ac50216', 'App\\Notifications\\RegistrationNotification', 'App\\Models\\User', 1, '{\"type\":\"new-user\",\"name\":\"Mohammad Ali\",\"email\":\"mohammadmuneerali92@gmail.com\",\"subject\":\"New User Successfully Registered\",\"country\":\"Italy\"}', '2024-02-27 22:13:53', '2024-02-06 10:13:55', '2024-02-27 22:13:53');

-- --------------------------------------------------------

--
-- بنية الجدول `pages`
--

CREATE TABLE `pages` (
  `name` varchar(128) NOT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `pages`
--

INSERT INTO `pages` (`name`, `value`) VALUES
('about', ''),
('privacy', ''),
('terms', '');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mohammadmuneerali92@gmail.com', '$2y$10$CFJ8nnAjMHakaH5wLUvePuMwkJGb0rdDNiG8GLnBMEuNDcy.GZlGC', '2024-02-14 01:02:06');

-- --------------------------------------------------------

--
-- بنية الجدول `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `frequency` varchar(191) DEFAULT NULL COMMENT 'prepaid|monthly|yearly',
  `order_id` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency` varchar(191) NOT NULL,
  `gateway` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL COMMENT 'completed|cancelled|declined|failed|pending',
  `plan_name` varchar(191) NOT NULL,
  `words` int(11) DEFAULT 0,
  `images` int(11) DEFAULT 0,
  `characters` int(11) DEFAULT 0,
  `minutes` int(11) DEFAULT 0,
  `valid_until` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `payment_platforms`
--

CREATE TABLE `payment_platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `subscriptions_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `payment_platforms`
--

INSERT INTO `payment_platforms` (`id`, `name`, `image`, `enabled`, `subscriptions_enabled`, `created_at`, `updated_at`) VALUES
(1, 'PayPal', 'img/payments/paypal.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Stripe', 'img/payments/stripe.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'BankTransfer', 'img/payments/bank-transfer.png', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Paystack', 'img/payments/paystack.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Razorpay', 'img/payments/razorpay.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Braintree', 'img/payments/braintree.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(7, 'Mollie', 'img/payments/mollie.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Coinbase', 'img/payments/coinbase.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Midtrans', 'img/payments/midtrans.png', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'Flutterwave', 'img/payments/flutterwave.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(11, 'Yookassa', 'img/payments/yookassa.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Paddle', 'img/payments/paddle.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'MercadoPago', 'img/payments/mercadopago.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(14, 'TwoCheckout', 'img/payments/twocheckout.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(15, 'Iyzico', 'img/payments/iyzico.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(16, 'Robokassa', 'img/payments/robokassa.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(17, 'Paytm', 'img/payments/paytm.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(18, 'Alipay', 'img/payments/paytm.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(19, 'WePay', 'img/payments/wepay.svg', 0, 0, '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `payouts`
--

CREATE TABLE `payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_id` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `gateway` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `prepaid_plans`
--

CREATE TABLE `prepaid_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_name` varchar(191) NOT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `status` varchar(191) NOT NULL DEFAULT 'active' COMMENT 'active|closed',
  `words` int(11) NOT NULL DEFAULT 0,
  `images` int(11) NOT NULL DEFAULT 0,
  `characters` int(11) NOT NULL DEFAULT 0,
  `minutes` int(11) NOT NULL DEFAULT 0,
  `featured` tinyint(1) DEFAULT 0,
  `pricing_plan` varchar(191) NOT NULL DEFAULT 'prepaid',
  `model` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(20) NOT NULL,
  `usages_left` int(11) NOT NULL DEFAULT 1,
  `bound_to_user` tinyint(1) NOT NULL DEFAULT 0,
  `multi_use` tinyint(1) NOT NULL DEFAULT 0,
  `details` longtext DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `promocode_user`
--

CREATE TABLE `promocode_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promocode_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `session_id` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referrer_id` int(11) DEFAULT NULL,
  `referrer_email` varchar(191) DEFAULT NULL,
  `referred_id` int(11) DEFAULT NULL,
  `referred_email` varchar(191) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `order_id` varchar(191) DEFAULT NULL,
  `payment` double(8,2) DEFAULT NULL,
  `commission` double(8,2) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `gateway` varchar(191) DEFAULT NULL,
  `purchase_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `position` varchar(191) DEFAULT NULL,
  `text` longtext NOT NULL,
  `image_url` varchar(191) DEFAULT NULL,
  `row` varchar(191) DEFAULT 'first',
  `rating` varchar(191) DEFAULT '5.0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'subscriber', 'web', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'admin', 'web', '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1MGE8L8PA7Nxq58o9qRJcO5wdKdms5HbA79gKFoQ', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNjB1S2p0dmllSXN6NXhDcXZRdEJXSXZlOWprdmlOQ1F5T2N1V0ZhOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717387129),
('38XQtGXUdw6MNg2tCFZne2gYqmUBx69RVAjt8KxR', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidHRiZm1FNXVQQXhad1ZIVDFUeDM4RTlGSU5YU0hRWGMxdE5RUGV0diI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716435222),
('3IKZOVlydZguNlOUulz3e1N8zneK6DG0tLp5cWY0', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUUdVZnRVNHhsZVBoRk84U2RNc01YRTNmcU1ld2RwSGVRNkxtN3h0dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716198189),
('3plHyMsb9M2k6bY8Uby6ka1n4OBSfRN6Ow2jIjhY', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSHJYOU5HRnBWTFJWUFUwZUpHWHkxMFBrS3JoS29KaTkyYkF3MGxDMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717230481),
('4CPsC4lNDTuOenfmKWoC0ivFF3yajUp4otSwXUlz', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic1VxNE1pVDVLMHRYVDViQ1BuTUdqU2V2Vk5OM2JnMklJYWtuYmRyRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717559929),
('4wnKEX1Idxpv8bchVRYKzPc6CcWCQrSbMNhN3GV1', NULL, '35.215.71.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMXdyVFlDQ21KNTN1eVFleHFROWtzS0pPSFBFN1Noa1Z3cjd3TjJ1MiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715922675),
('6OlJwMItVsmguOgw8m6EgBame5Y1vdCZ4h1B5INQ', NULL, '13.39.159.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibjBrWjVrZTFkUGJpcGJ3QXdqSnUwbFI0RVJ1TkE3YkZWbFJ5dXgzUCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716002736),
('9trrAfTEE6Na9bor88A1ekqm4t7Mp25tey7JBQAi', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidTNrMHdSa3dOeVZCblJNd0pqSTlrR01aZ1N5ZlE2R1JFdnZVbUh5MSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716788853),
('A4EPHm2Md0awtRfsA1JEkmlabCAjcOcZDjrdRzZE', NULL, '35.215.71.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2ZiMTlSNHFmaXMwRmdpZVc4aDk5VjI4Y1RGWUxKZ05hQkJEeEFUSCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715922666),
('AcH3HLAVCyFrLvb7e9yRoiRDC0DmhoXymtvJPpdn', NULL, '167.94.138.57', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZVZGUzJSeWZSMUp5SHdNYU95cnBPekRmMFhHQjNseGR2UnJ2emY1eiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717032167),
('axJk66zgQK1exhMiS6Ofy0IWPckXMqjCxCLFfzhV', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMkppcVdPYjFOcWxydTVHVDdlTUFJZ2dPWkFwSk1SWDIyTjNqZGZGMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716284589),
('b14ZyaMwYR1g2vq3HpPF0ksQHsz1a3dDflbnzopf', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib2ZLNVhoZXRQREQ0M0hKeGVKMWUwWG8zc216aDhiQVJWcUlQYTBlZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715921501),
('biialTO4khYLcn6CIpB1TFr0mCLkRiXrzuYPxqgX', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUmw5RGFJZUdRVG9od3RrMVRtZDFlakUxRnlqclBrSWNIVmEzNjFKRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716875253),
('ByX98PKtuK1WGAskdGAlhAlevJrzne49l6hZUdF0', NULL, '34.1.21.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1BRR21rVmtNZEo2M0VLV2o1RzBodTYxRDRYQlVlbm0xOWRLcXpkSCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716639046),
('cj9FDVKIFFcYdo9mLGsJssM2GWjcruUdyhIPLUmy', NULL, '167.94.138.59', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0JNWEw4WFpmMWNCVmNXNUZsSDg1Skdub3k4VGZvY2ZOd2hGVWg0MCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716603677),
('DxV68HIZhreTWs8xMOAefoNiFWVbw3Oh5ua2T6h3', NULL, '167.94.138.57', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSEpqZVFzVE5EYnBGSWNsbjRJbXZ3cExFdW9YckZsRjhxSkFGYmNyZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716356348),
('F5L3pUR14bJlZ5AkPYaa3BTviUHE6vR3ZkMTYs5g', NULL, '165.22.248.24', 'Mozilla/5.0 (Linux; Android 5.1.1; SM-J111F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.90 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR05WMFF0NGRZMGRDcUdZOUtmbHJIcmtneU5CcVVVWnZ2VVBmbHJ6aCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717362657),
('gFiFLWlmdq4vOvuJEJMV113yZjyz9SFyzPCo52Vh', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmE3VkFOTGF1SDFwMFZjYWRVVDBVNHhKRFowZUxkVW9TQ3N6cFpTNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717057681),
('IuX87MDIQlI5KnafvCMETczFIWjtxy6AYTuNxyKI', NULL, '3.250.84.43', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMFBHMG11VGlaQ29BZjdoa05EZzFuWER0TlI4NmFXRDdIcWpGOHkzdCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717518604),
('JX27ZZICRAsIx5E1JHWuk8cP9ApZQ61Ki1guQIQt', NULL, '159.223.186.164', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemJGbEVqMHhKMEhhVldFNU9IeDB5UllqMDhnV1pXRVVDWmZpZEJzRSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717319273),
('JyckHkf3o4O2YHQObhcOYy0YsNWMP7KEW8PPUlt9', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidU5aeXhoTEN0bllhTVA3SXVmMDN4OThmWUlQMm40azFBQ1hyN1BwdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717144081),
('KhUG5Qcy0uLRTyOu0WEj1Low3zwD0go5nCFqHryN', NULL, '3.255.172.204', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoickdvbnFwaERjMnVaMFRjdXVhcWtTV0dwb1d2Yk5LVU5hdUhPTnVEaCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717182247),
('LnxuuWKoB13JVqXTFeP8HPUavV5d2McPfmSVJ273', NULL, '34.1.21.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHF5UjRqRnFQSjJRV3UxZ29MR0NveW91SVRleXdOSHh5RmVXNGpmeiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716639061),
('LOXxcOhFwjzJVXDbLIMHVcjERVn1Aij6GEAW75Mi', NULL, '45.128.160.157', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaXJpdmFUb0ZhcDF0dTN2OTMza3dQVnFBaWtrRXpUclFwSkNyTzlBYyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716040388),
('Mm7Vj4GTJoI001NANmop1L4WjOzDgwBPzo62m4N4', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQlhzZURiMlIxS2ZlN0x6NkFSUGdFZUR3bWlaWjQ1aUZ1NVoxY1JsYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716521622),
('MSGg5HkFqmQy57jsFyyNupcacYSFOYINGVUxQvzo', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUXBsN01tVVBHdHVBdzBGWnNpdUN1QmRDOElJdENDWkR2SUkxMWh3biI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717259877),
('nixexVSxVtEnV6SY0WyqmNZxHR2lNgvDUeviAg4y', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiemF4ODRsV3JXM0NPc3l2R2d2eGdGYlJPNFB1OUtOZE5JeG5US3BveCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716702453),
('oBAF6BLzZCQZUp6kjK8e6XnS6zYEasPKBc09Wiuy', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibTNlcllVR21zOGM4dE5MZG1XWTk0Rmw3VmJSMEdXVjZKZk1qNDZyNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716023461),
('p0V5hDI35QgxdiRUDngEgBrg8LUmd04fSYtmozTT', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ3h5YlVBUW0wdWh4YlltQmd6aTlkdHpQb1RJTm9ZSzZrbHdEZUdzNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716018924),
('P7QMu6LEVcVECOlez3FCCZycviNMGJqJ63Jg1AXW', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicWY0NEZUVDFWUnNKRGV4bnJCcUhJUHBpVEc0bFAzYlRZYmtXWjROaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717646329),
('PdQXbQIbZqNqzn52l992ibhoTkzQ0EeXGC2Sv5G7', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidE1BOEVabXJMbnV2TWx1aHNLSHExTVZIcUFQQ3ZhQmVWRjQ3c2xTcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716658658),
('pgMrHLi7rLKzgdivNhAeHlyM1l91RxkAj7mBZDdo', NULL, '45.128.163.132', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFB4bjJIZDBSc29tMUtiZWxDeGpuS0NidUk3c2Nja2l4aTBVZDgxeiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716045780),
('QynWKQ8nQREX16c3WMxsQkvsbtSixqaZPKFtKeHM', NULL, '205.210.31.139', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSGpFZTlvN2ZhQVRiSklaWlBnWW1lU2p2VHBjWHFBZ1VBVXBUMzA4eiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716816360),
('sYy07HEAZ20AwMXkN06ldB5HPrKcQKbeYAN6HweP', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEFKVHdnQXQwbHcwblN1YnpRNzFDdm8xY3UzQ2I2TEx5UzJmdDRMcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717473529),
('TlTPFUhARKFPXEc7qIX3SvjLCQxthDts4laJlN47', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3JUSExvc0NLUHlLdmR2Umh6T3hBR2JUaUo4WUhlUzNJcHVYaExXMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716370989),
('uasvkNW6kO2x5loAXVdj4oKpOiGQR69PYVAZM9fB', NULL, '104.166.80.2', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWFNKT2FXRTJjcmlsMnNvYVZJOHZXU05yQ2ZQS0NMUGxDMUNmVThCSCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716590382),
('uU2nKTEfJ51FNH8ogw7WeDmrBo8eF2HdUZv3Z629', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWXRmbDdGM0kwcndQaW1hVlk2bDBReDRTbWFxcmxMWGd2WGkwaUswQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716608022),
('wcoMMX0llSQVpB5rC7zevorcIDO0eN8O8Y02Z3oP', NULL, '198.235.24.154', '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGw5cDI1Sm1tS09yZ2NBdDQwTDhuSTVlWUdJWlY1UTA5dmhKbkJ1MSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716783375),
('whwkTPPsOB6ibmpoz7FEVVsq0CrwwZQ6ZlcI0wja', NULL, '137.184.148.192', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVGtZdEI3dm5QbUFQTTRZRTNTMGJ1c2lqd2lBSXJaR2h4SFFJTlJKZyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716097925),
('XSlO6zdLqYLlJrksO7UItvydq6oBnT1R1a2opty1', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZVpDSjdpM1cxRjBtUjR3dmVDeFdSTERuc2VuMkIwbFhHOVRpeXMyZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716111789),
('ZC9CaMUc7BpCPBkTmJnPfHec0hoFShY1CyitNBN6', NULL, '34.1.21.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNG10b1BZU1pNcXFTck1jcmVNNnd5UmVMRkowRjFXVTBycDRSMElQOSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MDoiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haS9wcml2YWN5LXBvbGljeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716639061),
('ZEoO7SfNJevd2P5QQnFRvVGuYKNNtIZMvQtdGmK0', NULL, '35.215.71.74', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BW/1.2; rb.gy/oupwis) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQWIyVE5jd0ZkQ1ZoVzNtZW9FYUwxaUYzSHpSVENHMVpRSkIwV3NxMiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MDoiaHR0cHM6Ly9kZW1vLmJlc3RhcnR1cC5haS9wcml2YWN5LXBvbGljeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715922675),
('Zj9PCSfjRJnVGKVqvScHVqNEorYIMU2Z07yCzSoS', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVmJDVVhjMkRVeTNIWmx1Z1AxWDQxV2lvVWcxMzlHdG1MTzRVd1FSTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1717300729),
('ZR8rnsGSOs0kZQXMxh88r5Kwm73dz1aVKAu78WhC', NULL, '2a02:4780:27:c0de::1a', 'Go-http-client/2.0', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVXc1SWJKcEJGak14QmtocHJrZVBPTno0dW16WW1xdk9iVjVEdnBCMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1716961653);

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `name` varchar(128) NOT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('author', 'BeStartupAi'),
('bank_instructions', 'Make your payment directly into our bank account. Please use your Order ID Number as the payment reference. Words will not be allocated to your account until the funds have cleared in our bank account. Thank you.'),
('bank_requisites', 'Bank Name: \n                                Account Name:\n                                Account Number/IBAN:\n                                BIC/Swift:\n                                Routing Number:'),
('css', NULL),
('description', 'BeStartup'),
('invoice_address', ''),
('invoice_city', ''),
('invoice_country', ''),
('invoice_currency', 'USD'),
('invoice_language', 'en'),
('invoice_phone', ''),
('invoice_postal_code', ''),
('invoice_state', ''),
('invoice_vat_number', ''),
('invoice_vendor', 'OpenAI Davinci'),
('invoice_vendor_website', ''),
('js', NULL),
('keywords', 'BeStartup, BestartupAI, Be Startup Ai, Best Art Up Ai,'),
('legal_privacy_url', ''),
('legal_terms_url', ''),
('license', '12345'),
('referral_guideline', '1. Share your referral link with your friends to register\n                                2. For their subscription, you will receive a commissions\n                                3. Include your Bank Requisites or Paypal ID in My Gateway tab to receive your commissions\n                                4. Request payouts under My Payouts tab\n                                5. Checkout all your referrals under My Referrals tab'),
('referral_headline', 'Invite your friends, and when they subscribe, you can get a commission of their purchase(s).'),
('title', 'BeStartup'),
('username', 'admin'),
('words_filter', '');

-- --------------------------------------------------------

--
-- بنية الجدول `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `active_until` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `gateway` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `frequency` varchar(191) DEFAULT NULL,
  `subscription_id` varchar(191) NOT NULL,
  `words` int(11) DEFAULT 0,
  `images` int(11) DEFAULT 0,
  `characters` int(11) DEFAULT 0,
  `minutes` int(11) DEFAULT 0,
  `max_tokens` int(11) DEFAULT NULL,
  `paystack_customer_code` varchar(191) DEFAULT NULL,
  `paystack_authorization_code` varchar(191) DEFAULT NULL,
  `paystack_email_token` varchar(191) DEFAULT NULL,
  `paddle_cancel_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_name` varchar(191) NOT NULL,
  `price` decimal(15,2) UNSIGNED NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `status` varchar(191) NOT NULL DEFAULT 'active' COMMENT 'active|closed',
  `templates` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT 'gpt-3.5-turbo',
  `model_chat` varchar(191) DEFAULT 'gpt-3.5-turbo',
  `chats` varchar(191) DEFAULT NULL,
  `words` int(11) NOT NULL DEFAULT 0,
  `images` int(11) NOT NULL DEFAULT 0,
  `max_tokens` int(11) NOT NULL DEFAULT 0,
  `payment_frequency` varchar(191) DEFAULT NULL COMMENT 'monthly|yearly',
  `primary_heading` varchar(191) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `free` tinyint(1) DEFAULT 0,
  `image_feature` tinyint(1) DEFAULT 1,
  `plan_features` longtext DEFAULT NULL,
  `characters` int(11) NOT NULL DEFAULT 0,
  `minutes` int(11) NOT NULL DEFAULT 0,
  `image_storage_days` int(11) NOT NULL DEFAULT 0,
  `voiceover_storage_days` int(11) NOT NULL DEFAULT 0,
  `whisper_storage_days` int(11) NOT NULL DEFAULT 0,
  `voiceover_feature` tinyint(1) DEFAULT 1,
  `transcribe_feature` tinyint(1) DEFAULT 1,
  `code_feature` tinyint(1) DEFAULT 1,
  `chat_feature` tinyint(1) DEFAULT 1,
  `paypal_gateway_plan_id` varchar(191) DEFAULT NULL,
  `stripe_gateway_plan_id` varchar(191) DEFAULT NULL,
  `paystack_gateway_plan_id` varchar(191) DEFAULT NULL,
  `razorpay_gateway_plan_id` varchar(191) DEFAULT NULL,
  `flutterwave_gateway_plan_id` varchar(191) DEFAULT NULL,
  `paddle_gateway_plan_id` varchar(191) DEFAULT NULL,
  `team_members` int(11) DEFAULT 0,
  `personal_openai_api` tinyint(1) DEFAULT 0,
  `personal_sd_api` tinyint(1) DEFAULT 0,
  `days` int(11) DEFAULT NULL,
  `dalle_image_engine` varchar(191) DEFAULT NULL,
  `sd_image_engine` varchar(191) DEFAULT NULL,
  `wizard_feature` tinyint(1) DEFAULT 1,
  `vision_feature` tinyint(1) DEFAULT 1,
  `internet_feature` tinyint(1) DEFAULT 1,
  `chat_image_feature` tinyint(1) DEFAULT 1,
  `chat_pdf_feature` tinyint(1) DEFAULT 1,
  `chat_web_feature` tinyint(1) DEFAULT 1,
  `chat_csv_feature` tinyint(1) DEFAULT 1,
  `chat_csv_file_size` int(11) DEFAULT 10,
  `chat_pdf_file_size` int(11) DEFAULT 10,
  `rewriter_feature` tinyint(1) DEFAULT 1,
  `smart_editor_feature` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `ticket_id` varchar(191) NOT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `priority` varchar(191) NOT NULL,
  `category` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL COMMENT 'open|resolved|declined|replied',
  `subject` varchar(191) NOT NULL,
  `resolved_on` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `template_code` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `professional` tinyint(1) NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL DEFAULT 'original',
  `group` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `package` varchar(191) DEFAULT 'all',
  `fields` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `templates`
--

INSERT INTO `templates` (`id`, `name`, `icon`, `description`, `template_code`, `status`, `professional`, `new`, `type`, `group`, `slug`, `package`, `fields`, `created_at`, `updated_at`) VALUES
(1, 'Article Generator', '<i class=\"fa-solid fa-file-lines main-icon\"></i>', 'Turn a title and outline text into a fully complete high quality article within seconds', 'KPAQQ', 1, 0, 0, 'original', 'text', 'article-generator', 'all', '[{\"name\":\"Article Title\",\"placeholder\":\"e.g. Amazing cuisine culture of Mexico\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. taco, sangria, paella\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Content Rewriter', '<i class=\"fa-solid fa-square-check main-icon\"></i>', 'Take a piece of content and rewrite it to make it more interesting, creative, and engaging', 'WCZGL', 1, 0, 0, 'original', 'text', 'content-rewriter', 'all', '[{\"name\":\"What would you like to rewrite?\", \"placeholder\":\"Enter your text to rewrite...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'Paragraph Generator', '<i class=\"fa-solid fa-line-columns main-icon\"></i>', 'Generate paragraphs about any topic including a keyword and in a specific tone of voice', 'JXRZB', 1, 0, 0, 'original', 'text', 'paragraph-generator', 'all', '[{\"name\":\"Paragraph Description\", \"placeholder\":\"Provide details of what you want to write about...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. fruit, lime\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Talking Points', '<i class=\"fa-solid fa-list-check main-icon\"></i>', 'Write short, simple and informative points for the subheadings of your article', 'VFWSQ', 1, 0, 0, 'original', 'text', 'talking-points', 'all', '[{\"name\":\"Article Title\",\"placeholder\":\"e.g. 10 ways to create websites\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Subheading Description\",\"placeholder\":\"e.g. Why you should create a website\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Pros & Cons', '<i class=\"fa-solid fa-code-compare main-icon\"></i>', 'Write the pros and cons of a product, service or website for your blog article', 'OPYAB', 1, 0, 0, 'original', 'text', 'pros-and-cons', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. iPhone, Samsung\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. Explain what kind of cell phone you can to compare\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Blog Titles', '<i class=\"fa-solid fa-message-text blog-icon\"></i>', 'Nobody wants to read boring blog titles, generate catchy blog titles with this tool', 'WGKYP', 1, 0, 0, 'original', 'blog', 'blog-titles', 'all', '[{\"name\":\"What is your blog post is about?\", \"placeholder\":\"Describe your blog post...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-14 02:51:02'),
(7, 'Blog Section', '<i class=\"fa-solid fa-message-lines blog-icon\"></i>', 'Write a full blog section (few paragraphs) about a subheading of your article', 'EEKZF', 1, 0, 0, 'original', 'blog', 'blog-section', 'all', '[{\"name\":\"Title of your blog article\",\"placeholder\":\"e.g. 5 best places to visit in Spain\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Subheadings\",\"placeholder\":\"e.g. Barcelona, San Sebastian, Madrid\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Blog Ideas', '<i class=\"fa-solid fa-message-dots blog-icon\"></i>', 'The perfect tool to start writing great articles. Generate creative ideas for your next post', 'KDGOX', 1, 0, 0, 'original', 'blog', 'blog-ideas', 'all', '[{\"name\":\"What is your blog post is about?\", \"placeholder\":\"e.g. 5 best places to visit in Spain\", \"required\":1, \"input\":\"textarea\",\"code\":\"title\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Blog Intros', '<i class=\"fa-solid fa-message-exclamation blog-icon\"></i>', 'Write an intro that will entice your visitors to read more about your article', 'TZTYR', 1, 0, 0, 'original', 'blog', 'blog-intros', 'all', '[{\"name\":\"Blog Post Title\",\"placeholder\":\"e.g. 5 best places to visit in Spain\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"What is your blog post is about?\",\"placeholder\":\"Describe your blog article\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'Blog Conclusion', '<i class=\"fa-solid fa-message-check blog-icon\"></i>', 'End your blog articles with an engaging conclusion paragraph', 'ZGUKM', 1, 0, 0, 'original', 'blog', 'blog-conclusion', 'all', '[{\"name\":\"Blog Post Title\",\"placeholder\":\"e.g. 5 best places to visit in Spain\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"What is your blog post is about?\",\"placeholder\":\"Describe your blog article\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(11, 'Summarize Text', '<i class=\"fa-solid fa-file-contract main-icon\"></i>', 'Summarize any text in a short and easy to understand concise way', 'OMMEI', 1, 0, 0, 'original', 'text', 'summarize-text', 'all', '[{\"name\":\"What would you like to summarize?\", \"placeholder\":\"Enter your text to summarize...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Product Description', '<i class=\"fa-solid fa-list-check main-icon\"></i>', 'Write the description about your product and why it worth it', 'HXLNA', 1, 0, 0, 'original', 'text', 'product-description', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'Startup Name Generator', '<i class=\"fa-solid fa-lightbulb-on main-icon\"></i>', 'Generate cool, creative, and catchy names for your startup in seconds', 'DJSVM', 1, 0, 0, 'original', 'text', 'startup-name-generator', 'all', '[{\"name\":\"Startup Description\", \"placeholder\":\"Explain what your startup idea is about...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"Seed words\",\"placeholder\":\"e.g. flow, app, tech\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":200}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(14, 'Product Name Generator', '<i class=\"fa-solid fa-box-circle-check main-icon\"></i>', 'Create creative product names from examples words', 'IXKBE', 1, 0, 0, 'original', 'text', 'product-name-generator', 'all', '[{\"name\":\"Product Description\", \"placeholder\":\"Provide product details...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"Seed words\",\"placeholder\":\"e.g. fast, healthy, compact\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":200}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(15, 'Meta Description', '<i class=\"fa-solid fa-memo-circle-info web-icon\"></i>', 'Write SEO-optimized meta description based on a description', 'JCDIK', 1, 0, 0, 'original', 'web', 'meta-description', 'all', '[{\"name\":\"Website Name\", \"placeholder\":\"e.g. Amazon, Google\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Website Description\", \"placeholder\":\"Describe what your website or business...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"Keywords\", \"placeholder\":\"e.g. cloud services, databases\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(16, 'FAQs', '<i class=\"fa-solid fa-message-question web-icon\"></i>', 'Generate frequently asked questions based on your product description', 'SZAUF', 1, 0, 0, 'original', 'web', 'faqs', 'all', '[{\"name\":\"Product Name\", \"placeholder\":\"e.g. baby toys\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\", \"placeholder\":\"Describe what your product or service does...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(17, 'FAQ Answers', '<i class=\"fa-solid fa-messages-question web-icon\"></i>', 'Generate creative answers to questions (FAQs) about your business or website', 'BFENK', 1, 0, 0, 'original', 'web', 'faq-answers', 'all', '[{\"name\":\"Product Name\", \"placeholder\":\"e.g. baby toys\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"What is the question you are generating answers for?\", \"placeholder\":\"e.g. How to use this product?\", \"required\":1, \"input\":\"textarea\",\"code\":\"question\", \"length\":600}, {\"name\":\"Product Description\", \"placeholder\":\"Describe what your product or service does...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(18, 'Testimonials / Reviews', '<i class=\"fa-solid fa-star-sharp-half-stroke web-icon\"></i>', 'Add social proof to your website by generating user testimonials', 'XLGPP', 1, 0, 0, 'original', 'web', 'testimonials', 'all', '[{\"name\":\"Product Name\", \"placeholder\":\"e.g. baby toys\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\", \"placeholder\":\"Describe what your product or service does...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(19, 'Facebook Ads', '<i class=\"fa-brands fa-facebook social-icon\"></i>', 'Write Facebook ads that engage your audience and deliver a high conversion rate', 'CTMNI', 1, 0, 0, 'original', 'social', 'facebook-ads', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(20, 'Video Descriptions', '<i class=\"fa-brands fa-youtube video-icon\"></i>', 'Write compelling YouTube descriptions to get people interested in your video', 'ZLKSP', 1, 0, 0, 'original', 'video', 'video-descriptions', 'all', '[{\"name\":\"What is the title of your video?\", \"placeholder\":\"e.g. start earning money online\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(21, 'Video Titles', '<i class=\"fa-brands fa-youtube video-icon\"></i>', 'Write a compelling YouTube video title to catch everyones attention', 'OJIOV', 1, 0, 0, 'original', 'video', 'video-titles', 'all', '[{\"name\":\"What is your video about?\", \"placeholder\":\"Provide description of your video, provide as many details as possible...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(22, 'Youtube Tags Generator', '<i class=\"fa-brands fa-youtube video-icon\"></i>', 'Generate SEO-optimized YouTube tags / keywords for your video', 'ECNVU', 1, 0, 0, 'original', 'video', 'youtube-tags-generator', 'all', '[{\"name\":\"Enter your video title with keywords\", \"placeholder\":\"e.g. start earning money online\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(23, 'Instagram Captions', '<i class=\"fa-brands fa-instagram social-icon\"></i>', 'Grab attention with catchy captions for your Instagram posts', 'EOASR', 1, 0, 0, 'original', 'social', 'instagram-captions', 'all', '[{\"name\":\"What is your instagram post about?\", \"placeholder\":\"e.g. start earning money online\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(24, 'Instagram Hashtags Generator', '<i class=\"fa-brands fa-instagram social-icon\"></i>', 'Find the best hashtags to use for your Instagram posts', 'IEMBM', 1, 0, 0, 'original', 'social', 'instagram-hashtags', 'all', '[{\"name\":\"Enter a Keyword\", \"placeholder\":\"e.g. makeup\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(25, 'Social Media Post (Personal)', '<i class=\"fa-solid fa-thumbs-up social-icon\"></i>', 'Write a social media post for yourself to be published on any platform', 'CKOHL', 1, 0, 0, 'original', 'social', 'social-post-personal', 'all', '[{\"name\":\"What is this post about?\", \"placeholder\":\"e.g. I got fluent in Spanish in 1 week\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(26, 'Social Media Post (Business)', '<i class=\"fa-solid fa-thumbs-up social-icon\"></i>', 'Write a post for your business to be published on any social media platform', 'ABWGU', 1, 0, 0, 'original', 'social', 'social-post-business', 'all', '[{\"name\":\"Company Name\", \"placeholder\":\"e.g. Amazon, Google\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Company Description\", \"placeholder\":\"e.g. Amazon is a leading vendor\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"What is this post about?\", \"placeholder\":\"e.g. I got fluent in Spanish in 1 week\", \"required\":1, \"input\":\"textarea\",\"code\":\"post\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(27, 'Facebook Headlines', '<i class=\"fa-brands fa-facebook social-icon\"></i>', 'Write catchy and convincing headlines to make your Facebook Ads stand out', 'HJYJZ', 1, 0, 0, 'original', 'social', 'facebook-headlines', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(28, 'Google Ads Headlines', '<i class=\"fa-brands fa-google social-icon\"></i>', 'Write catchy 30-character headlines to promote your product with Google Ads', 'SGZTW', 1, 0, 0, 'original', 'social', 'google-headlines', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(29, 'Google Ads Description', '<i class=\"fa-brands fa-google social-icon\"></i>', 'Write a Google Ads description that makes your ad stand out and generates leads', 'YQAFG', 1, 0, 0, 'original', 'social', 'google-ads', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(30, 'Problem-Agitate-Solution (PAS) Framework', '<i class=\"fa-solid fa-pen-nib framework-icon\"></i>', 'Generate one of most effective copywriting formula for your business', 'BGXJE', 1, 0, 0, 'original', 'framework', 'problem-agitate-solution', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(31, 'Academic Essay', '<i class=\"fa-solid fa-scroll-old main-icon\"></i>', 'Create creative academic essays for various subjects just in a second', 'SXQBT', 1, 0, 0, 'original', 'text', 'academic-essay', 'all', '[{\"name\":\"Essay Title\",\"placeholder\":\"e.g. Amazing cuisine culture of Mexico\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. taco, sangria, paella\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(32, 'Welcome Email', '<i class=\"fa-solid fa-envelope-open-text email-icon\"></i>', 'Create welcome emails for your customers', 'RLXGB', 1, 0, 0, 'original', 'email', 'email-welcome', 'all', '[{\"name\":\"Your Company/Product Name\",\"placeholder\":\"e.g. Creative Minds\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Describe your Product or Company\",\"placeholder\":\"\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(33, 'Cold Email', '<i class=\"fa-solid fa-mailbox email-icon\"></i>', 'Create professional cold emails with the help of AI', 'RDJEZ', 1, 0, 0, 'original', 'email', 'email-cold', 'all', '[{\"name\":\"Your Company/Product Name\",\"placeholder\":\"e.g. Creative Minds\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Context to include in the email\",\"placeholder\":\"\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":600}, {\"name\":\"Describe your Product or Company\",\"placeholder\":\"\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(34, 'Follow-Up Email', '<i class=\"fa-solid fa-reply-all email-icon\"></i>', 'Create professional email follow up with just few clicks', 'XVNNQ', 1, 0, 0, 'original', 'email', 'email-follow-up', 'all', '[{\"name\":\"Your Company/Product Name\",\"placeholder\":\"e.g. Creative Minds\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Following up after\",\"placeholder\":\"\", \"required\":0, \"input\":\"input\",\"code\":\"keywords\", \"length\":600}, {\"name\":\"Describe your Product or Company\",\"placeholder\":\"\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(35, 'Creative Stories', '<i class=\"fa-solid fa-books main-icon\"></i>', 'Allow AI to generate creative stories for you based on input text', 'PAKMF', 1, 0, 0, 'original', 'text', 'creative-stories', 'all', '[{\"name\":\"What is your story is about?\", \"placeholder\":\"Provide as many details as possible for creating a story tale\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(36, 'Grammar Checker', '<i class=\"fa-solid fa-spell-check main-icon\"></i>', 'Make sure that there are no errors in your content', 'OORHD', 1, 0, 0, 'original', 'text', 'grammar-checker', 'all', '[{\"name\":\"Include your text here to check\", \"placeholder\":\"\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(37, 'Summarize for 2nd Grader', '<i class=\"fa-solid fa-thought-bubble main-icon\"></i>', 'Summarize any complex content for a 2nd grader child', 'SGJLU', 1, 0, 0, 'original', 'text', '2nd-grader', 'all', '[{\"name\":\"Include your text to summarize\", \"placeholder\":\"\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(38, 'Video Scripts', '<i class=\"fa-solid fa-film video-icon\"></i>', 'Quickly create scripts for your videos and start shooting', 'WISHV', 1, 0, 0, 'original', 'video', 'video-scripts', 'all', '[{\"name\":\"What is your video about?\", \"placeholder\":\"Provide description of what your video is about, provide all details\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":6000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(39, 'Amazon Product Description', '<i class=\"fa-brands fa-amazon ecommerce-icon\"></i>', 'Create attention grabbing amazon product description', 'WISTT', 1, 0, 0, 'original', 'ecommerce', 'amazon-product', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. baby toys\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(40, 'Text Extender', '<i class=\"fa-solid fa-text-width main-icon\"></i>', 'Extend your sentences with more description and additional information', 'LMMPR', 1, 0, 0, 'original', 'text', 'text-extender', 'all', '[{\"name\":\"Enter your text\",\"placeholder\":\"Enter your text here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(41, 'Rewrite with Keywords', '<i class=\"fa-solid fa-arrows-rotate main-icon\"></i>', 'Rewrite your existing content with including specific keywords', 'NJLCK', 1, 0, 0, 'original', 'text', 'rewrite-with-keywords', 'all', '[{\"name\":\"Enter your text\",\"placeholder\":\"Enter your text here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}, {\"name\":\"Included Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(42, 'Song Lyrics', '<i class=\"fa-solid fa-message-music other-icon\"></i>', 'Generate a song lyrics based on your description and keywords', 'QJGQU', 1, 0, 0, 'original', 'other', 'song-lyric', 'all', '[{\"name\":\"Song description\",\"placeholder\":\"Provide your song description here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(43, 'Business Ideas', '<i class=\"fa-solid fa-user-tie-hair main-icon\"></i>', 'Generate business ideas based on your keywords and description', 'IQWZV', 1, 0, 0, 'original', 'text', 'business-ideas', 'all', '[{\"name\":\"Industry description\",\"placeholder\":\"Describe your target industry...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(44, 'LinkedIn Posts', '<i class=\"fa-brands fa-linkedin-in social-icon\"></i>', 'Create an interesting linkedin post with the help of AI', 'NEVUR', 1, 0, 0, 'original', 'social', 'linkedin-post', 'all', '[{\"name\":\"Describe your post\",\"placeholder\":\"Enter your post details here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(46, 'Company Bio', '<i class=\"fa-solid fa-address-card web-icon\"></i>', 'Write a comprehensive company bio based on your inputs', 'MQSHO', 1, 0, 0, 'original', 'web', 'company-bio', 'all', '[{\"name\":\"Company Name\",\"placeholder\":\"Enter your company name...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Company Description\",\"placeholder\":\"Provide company information...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(47, 'Email Subject Lines', '<i class=\"fa-solid fa-mailbox email-icon\"></i>', 'Create professional email subject lines', 'TFYLZ', 1, 0, 0, 'original', 'email', 'email-subjects', 'all', '[{\"name\":\"Describe your email\",\"placeholder\":\"Explain what is your email is about...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(48, 'Product Benefits', '<i class=\"fa-brands fa-product-hunt ecommerce-icon\"></i>', 'List out product benefits via help of AI solution', 'CPTXT', 1, 0, 0, 'original', 'ecommerce', 'product-benefits', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Product Description\",\"placeholder\":\"Describe your product...\", \"required\":0, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(49, 'Selling Product Titles', '<i class=\"fa-solid fa-heading ecommerce-icon\"></i>', 'Find out selling product titles for your product description', 'KMKBQ', 1, 0, 0, 'original', 'ecommerce', 'selling-titles', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Product Description\",\"placeholder\":\"Describe your product...\", \"required\":0, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(50, 'Product Comparisons', '<i class=\"fa-brands fa-product-hunt ecommerce-icon\"></i>', 'Create a comprehensive comparison of two products between each other', 'UNOEP', 1, 0, 0, 'original', 'ecommerce', 'product-comparison', 'all', '[{\"name\":\"Products to Compare\",\"placeholder\":\"iPhone vs Samsung\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(51, 'Product Characteristics', '<i class=\"fa-brands fa-product-hunt ecommerce-icon\"></i>', 'Write a full product characteristics', 'RKYNX', 1, 0, 0, 'original', 'ecommerce', 'product-characteristics', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":400}, {\"name\":\"Focus Keywords\",\"placeholder\":\"e.g. soft, cotton, girl\", \"required\":0, \"input\":\"textarea\",\"code\":\"keywords\", \"length\":400}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(52, 'Twitter Tweets', '<i class=\"fa-brands fa-twitter social-icon\"></i>', 'Generate an interesting twitter tweets with AI', 'YVEFP', 1, 0, 0, 'original', 'social', 'twitter-tweets', 'all', '[{\"name\":\"Tweet Description\",\"placeholder\":\"What do you want to tweet about...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(53, 'TikTok Video Scripts', '<i class=\"fa-solid fa-video-plus video-icon\"></i>', 'Video scripts that are ready to shoot and will make you go viral', 'PEVVE', 1, 0, 0, 'original', 'video', 'tiktok-script', 'all', '[{\"name\":\"Video Description\",\"placeholder\":\"Describe your tiktok video...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(54, 'LinkedIn Ad Headlines', '<i class=\"fa-brands fa-linkedin-in social-icon\"></i>', 'Attention-grabbing, click-inducing and high-converting ad headlines for LinkedIn', 'WMRJR', 1, 0, 0, 'original', 'social', 'linkedin-headlines', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(55, 'LinkedIn Ad Descriptions', '<i class=\"fa-brands fa-linkedin-in social-icon\"></i>', 'Professional and eye-catching ad descriptions that will make your product shine', 'SSWNL', 1, 0, 0, 'original', 'social', 'linkedin-description', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(56, 'App and SMS Notifications', '<i class=\"fa-solid fa-message-sms other-icon\"></i>', 'Notification messages for your apps, websites and mobile devices that grabs users attention', 'HRXVL', 1, 0, 0, 'original', 'other', 'sms-notification', 'all', '[{\"name\":\"Notification Description\",\"placeholder\":\"Enter your notification details...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(57, 'Tone Changer', '<i class=\"fa-solid fa-arrows-turn-to-dots main-icon\"></i>', 'Change the tone of your writing to match your audience', 'SYVKG', 1, 0, 0, 'original', 'text', 'tone-changer', 'all', '[{\"name\":\"Target Text\",\"placeholder\":\"Enter your text here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":8000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(58, 'Amazon Product Features', '<i class=\"fa-brands fa-amazon ecommerce-icon\"></i>', 'Advantages and features of your products that will make them irresistible for shoppers', 'ETEDT', 1, 0, 0, 'original', 'ecommerce', 'amazon-product-feature', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(59, 'Dictionary', '<i class=\"fa-solid fa-spell-check main-icon\"></i>', 'Use a dictionary to find all details of your word', 'SNINY', 1, 0, 0, 'original', 'text', 'dictionary', 'all', '[{\"name\":\"Word\",\"placeholder\":\"Enter your word here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(60, 'Privacy Policy', '<i class=\"fa-solid fa-shield-halved main-icon\"></i>', 'Develop a privacy policy information for your organization', 'GUXCM', 1, 0, 0, 'original', 'text', 'privacy-policy', 'all', '[{\"name\":\"Platform Name\",\"placeholder\":\"e.g Website/Business Name\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Full Platform Description\",\"placeholder\":\"Enter your platform description here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(61, 'Terms and Conditions', '<i class=\"fa-solid fa-shield-quartered main-icon\"></i>', 'Develop a terms and conditions information for your organization', 'LWOKG', 1, 0, 0, 'original', 'text', 'terms-conditions', 'all', '[{\"name\":\"Platform Name\",\"placeholder\":\"e.g Website/Business Name\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Full Platform Description\",\"placeholder\":\"Enter your platform description here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(62, 'Clickbait Titles', '<i class=\"fa-solid fa-fishing-rod ad-icon\"></i>', 'Create a creative clickbait titles for your products', 'CHJGF', 1, 0, 0, 'original', 'ad', 'clickbait-title', 'all', '[{\"name\":\"Product Description\",\"placeholder\":\"Enter your product description here...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-14 02:50:55'),
(63, 'Company Press Release', '<i class=\"fa-solid fa-rectangles-mixed marketing-icon\"></i>', 'Write a company press release with the help of AI', 'JKTUY', 1, 0, 0, 'original', 'marketing', 'company-press-release', 'all', '[{\"name\":\"Company Name\",\"placeholder\":\"Enter your company name...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Company Description\",\"placeholder\":\"Provide company information..\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}, {\"name\":\"What is the press release is about?\",\"placeholder\":\"Describe press release information...\", \"required\":1, \"input\":\"textarea\",\"code\":\"audience\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(64, 'Brand/Product Press Release', '<i class=\"fa-solid fa-rectangles-mixed marketing-icon\"></i>', 'Write a brand or product press release with the help of AI', 'XTABO', 1, 0, 0, 'original', 'marketing', 'product-press-release', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"Describe your product..\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}, {\"name\":\"What is the press release is about?\",\"placeholder\":\"Describe press release information...\", \"required\":1, \"input\":\"textarea\",\"code\":\"audience\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(65, 'Attention-Interest-Desire-Action (AIDA) Framework', '<i class=\"fa-solid fa-pen-nib framework-icon\"></i>', 'AIDA model will help you ensure that any kind of writing, is as effective as possible', 'WQJYP', 1, 0, 0, 'original', 'framework', 'aida-frameword', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"Enter more details here\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(66, 'Before–After–Bridge (BAB) Framework', '<i class=\"fa-solid fa-pen-nib framework-icon\"></i>', 'Conversion-oriented formula designed to make a particular offer more appealing', 'APUSA', 1, 0, 0, 'original', 'framework', 'bab-frameword', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"Enter more details here\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(67, 'Promise–Picture–Proof–Push (PPPP) Framework', '<i class=\"fa-solid fa-pen-nib framework-icon\"></i>', 'Use 4P formula to craft persuasive content that moves readers to action', 'AEJJV', 1, 0, 0, 'original', 'framework', 'pppp-frameword', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"Enter your product name here...\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"Enter more details here\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(68, 'Brand Names', '<i class=\"fa-solid fa-copyright marketing-icon\"></i>', 'Generate unique brand names with the help of AI', 'FYKJD', 1, 0, 0, 'original', 'marketing', 'brand-names', 'all', '[{\"name\":\"Product Description\",\"placeholder\":\"Describe your product...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":800}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(69, 'Ad Headlines', '<i class=\"fa-sharp fa-solid fa-rectangle-ad ad-icon\"></i>', 'Write an attention grabbing ad headlines', 'DYNJE', 1, 0, 0, 'original', 'ad', 'ad-headlines', 'all', '[{\"name\":\"Product Name\",\"placeholder\":\"e.g. VR, Oculus\", \"required\":1, \"input\":\"input\",\"code\":\"title\", \"length\":200}, {\"name\":\"Audience\",\"placeholder\":\"e.g. Women, Aliens\", \"required\":0, \"input\":\"input\",\"code\":\"audience\", \"length\":200}, {\"name\":\"Product Description\",\"placeholder\":\"e.g. VR is an innovative device that can allow you to be part of virtual world\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":600}]', '2024-02-06 07:48:16', '2024-02-14 02:51:00'),
(70, 'Newsletter Generator', '<i class=\"fa-solid fa-newspaper web-icon\"></i>', 'Generate a newsletter based on the provided information', 'SXFVD', 1, 0, 0, 'original', 'web', 'newsletter-generator', 'all', '[{\"name\":\"Newsletter Description\",\"placeholder\":\"Describe what it should be about...\", \"required\":1, \"input\":\"textarea\",\"code\":\"description\", \"length\":2000}]', '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `transcripts`
--

CREATE TABLE `transcripts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `url` longtext DEFAULT NULL,
  `transcript` longtext DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `workbook` varchar(191) DEFAULT NULL,
  `task` varchar(191) DEFAULT NULL,
  `words` int(11) DEFAULT NULL,
  `format` varchar(191) DEFAULT NULL,
  `audio_type` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `storage` varchar(191) DEFAULT NULL COMMENT 'local|wasabi|aws',
  `length` decimal(15,3) DEFAULT NULL,
  `plan_type` varchar(191) DEFAULT NULL COMMENT 'free|paid',
  `size` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `temp_name` varchar(191) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `job_role` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` varchar(191) DEFAULT NULL,
  `group` varchar(191) DEFAULT NULL,
  `workbook` varchar(191) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `plan_type` varchar(191) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `postal_code` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `available_words` int(11) NOT NULL DEFAULT 0,
  `available_words_prepaid` int(11) NOT NULL DEFAULT 0,
  `total_words` int(11) NOT NULL DEFAULT 0,
  `available_images` int(11) NOT NULL DEFAULT 0,
  `available_images_prepaid` int(11) NOT NULL DEFAULT 0,
  `total_images` int(11) NOT NULL DEFAULT 0,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `total_chars` int(11) DEFAULT 0,
  `available_chars` int(11) NOT NULL DEFAULT 0,
  `available_chars_prepaid` int(11) NOT NULL DEFAULT 0,
  `total_minutes` decimal(15,3) NOT NULL DEFAULT 0.000,
  `available_minutes` decimal(15,3) NOT NULL DEFAULT 0.000,
  `available_minutes_prepaid` decimal(15,3) NOT NULL DEFAULT 0.000,
  `profile_photo_path` text DEFAULT NULL,
  `oauth_id` varchar(191) DEFAULT NULL,
  `oauth_type` varchar(191) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `google2fa_secret` text DEFAULT NULL,
  `google2fa_enabled` tinyint(1) DEFAULT 0,
  `referral_id` varchar(191) DEFAULT NULL,
  `referred_by` varchar(191) DEFAULT NULL,
  `referral_payment_method` varchar(191) DEFAULT NULL,
  `referral_paypal` varchar(191) DEFAULT NULL,
  `referral_bank_requisites` text DEFAULT NULL,
  `default_voiceover_language` varchar(191) DEFAULT NULL,
  `default_voiceover_voice` varchar(191) DEFAULT NULL,
  `default_template_language` varchar(191) DEFAULT 'en-US',
  `member_of` int(11) DEFAULT NULL,
  `member_limit` int(11) DEFAULT 0,
  `member_use_credits_template` tinyint(1) DEFAULT 1,
  `member_use_credits_chat` tinyint(1) DEFAULT 1,
  `member_use_credits_code` tinyint(1) DEFAULT 1,
  `member_use_credits_voiceover` tinyint(1) DEFAULT 1,
  `member_use_credits_speech` tinyint(1) DEFAULT 1,
  `member_use_credits_image` tinyint(1) DEFAULT 1,
  `personal_openai_key` varchar(191) DEFAULT NULL,
  `personal_sd_key` varchar(191) DEFAULT NULL,
  `hidden_plan` tinyint(1) DEFAULT 0,
  `used_free_tier` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `job_role`, `email`, `email_verified_at`, `password`, `status`, `group`, `workbook`, `plan_id`, `plan_type`, `company`, `website`, `phone_number`, `address`, `city`, `postal_code`, `country`, `available_words`, `available_words_prepaid`, `total_words`, `available_images`, `available_images_prepaid`, `total_images`, `balance`, `total_chars`, `available_chars`, `available_chars_prepaid`, `total_minutes`, `available_minutes`, `available_minutes_prepaid`, `profile_photo_path`, `oauth_id`, `oauth_type`, `last_seen`, `google2fa_secret`, `google2fa_enabled`, `referral_id`, `referred_by`, `referral_payment_method`, `referral_paypal`, `referral_bank_requisites`, `default_voiceover_language`, `default_voiceover_voice`, `default_template_language`, `member_of`, `member_limit`, `member_use_credits_template`, `member_use_credits_chat`, `member_use_credits_code`, `member_use_credits_voiceover`, `member_use_credits_speech`, `member_use_credits_image`, `personal_openai_key`, `personal_sd_key`, `hidden_plan`, `used_free_tier`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator', 'admin@example.com', '2024-02-06 07:48:31', '$2y$10$GHtv2ADcT.U2Oul0aRXYmuIdJzKoNI/wBYJJ34PNOieECyAWwlGUa', 'active', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 999994, 0, 0, 10000, 0, 0, 0.00, 0, 1000000, 0, 0.000, 10000.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'ZGXYZCOKBBINPC4', NULL, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, '5ZqDS3knQGKxtPqhaaj4nrRjkNq9fWkuBiTlA9l8YhGVpfHSnsqZCVoXfTaB', '2024-02-06 07:48:31', '2024-03-19 04:39:06'),
(2, 'Mohammad Ali', 'Happy Person', 'mohammadmuneerali92@gmail.com', '2024-02-06 10:13:54', '$2y$10$CuiJKe7k6auKr79dNIbRq.JhQ09/4BV9pT4hfXGYZkQrmPFJHWaV6', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Italy', 1000, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'MMOJENB5PJZOFOX', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, 'ilOnxIJnXftLUPpuKkGU1GtBgsmUcwbu6Y5CrjDU3LKD6OIIGGxEKZtonz7N', '2024-02-06 10:13:54', '2024-02-06 10:13:55'),
(3, 'Mohammad Ali', 'Happy Person', 'Mohammada@yalashoghol.com', '2024-02-06 11:15:29', '$2y$10$u.884XBHD2tHH8mSB027zeFIKMIXZMNTWtK.fOMfaBKLxbUudIOOy', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Spain', 1000, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'RA8XBSBPDXMEEF9', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, '2024-02-06 11:15:29', '2024-02-06 11:15:29'),
(4, 'Mohammad Ali', 'Happy Person', 'Bestatup@gmail.com', '2024-02-14 12:05:19', '$2y$10$C320uQCs7nW664hwxrUG9efV7tBV3SYIeRV0RcbadLhwEJNqTzk0q', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Spain', 1000, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'JVC0JI6KGBLP1TN', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, '2024-02-14 12:05:19', '2024-02-14 12:05:19'),
(5, 'mohammad Ali', 'Happy Person', 'Yalashoghol2@gmail.com', '2024-02-14 12:07:17', '$2y$10$9S/KhN0Mbi9gtFHN7qXE9upNaxEKKR5h26U0PhR4mn16iILRezUAG', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Egypt', 999, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'HTV3ARPNNXJAW9E', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, 'sGI14ESWJhqrQd3NbRkKKtnJ9wg6ziVrFpE3ki2enrdo70NKyh5QYdSD8pRA', '2024-02-14 12:07:17', '2024-02-14 12:09:06'),
(6, 'noor', 'Happy Person', 'noorulainadil8@gmail.com', '2024-03-18 10:50:00', '$2y$10$xFSCT2MCDx3.5EEfFmw5xe0brq1knd/HOuNVBEZ3AgYI8vQQxmmxW', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Italy', 999, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, 'YKEMLEDQZRAL6NN', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, '2024-03-18 10:50:00', '2024-03-18 10:51:02'),
(7, 'darwish', 'Happy Person', 'darwishpersonal@gmail.com', '2024-03-22 11:57:15', '$2y$10$SiUz4ug4TZTpKv9EaQo0lu0Ho0/gbxAAH2mRC/I9awreIzvFUp40y', 'active', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Egypt', 1000, 0, 0, 1000, 0, 0, 0.00, 0, 1000, 0, 0.000, 10.000, 0.000, NULL, NULL, NULL, NULL, NULL, 0, '9PWHHCBSOKVTRKK', '', NULL, NULL, NULL, 'en-US', 'en-US-Wavenet-J', 'en-US', NULL, 0, 1, 1, 1, 1, 1, 1, NULL, NULL, 0, 0, NULL, '2024-03-22 11:57:15', '2024-03-22 11:57:15');

-- --------------------------------------------------------

--
-- بنية الجدول `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(191) NOT NULL COMMENT 'azure_nrl|gcp_nrl',
  `enabled` tinyint(1) NOT NULL DEFAULT 0,
  `cost` double(8,2) NOT NULL COMMENT 'cost per char',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_id`, `enabled`, `cost`, `created_at`, `updated_at`) VALUES
(1, 'azure_nrl', 0, 0.00, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2, 'gcp_nrl', 0, 0.00, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(3, 'openai_std', 0, 0.00, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(4, 'openai_nrl', 0, 0.00, '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(5, 'elevenlabs_nrl', 0, 0.00, '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `voiceover_languages`
--

CREATE TABLE `voiceover_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `language_flag` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `voiceover_languages`
--

INSERT INTO `voiceover_languages` (`id`, `language`, `language_code`, `language_flag`, `created_at`, `updated_at`) VALUES
(1, 'Afrikaans (South Africa)', 'af-ZA', '/img/flags/za.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Arabic', 'ar-XA', '/img/flags/ae.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'Arabic (Egypt)', 'ar-EG', '/img/flags/eg.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Arabic (Saudi Arabia)', 'ar-SA', '/img/flags/sa.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Bengali (India)', 'bn-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Bulgarian (Bulgaria)', 'bg-BG', '/img/flags/bg.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(7, 'Catalan (Spain)', 'ca-ES', '/img/flags/es.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Chinese (Cantonese)', 'zh-HK', '/img/flags/cn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Chinese (Mandarin)', 'cmn-CN', '/img/flags/cn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'Chinese (M. Simplified)', 'zh-CN', '/img/flags/cn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Chinese (Taiwanese M.)', 'zh-TW', '/img/flags/cn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'Croatian (Croatia)', 'hr-HR', '/img/flags/hr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(14, 'Czech (Czech Republic)', 'cs-CZ', '/img/flags/cz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(15, 'Danish (Denmark)', 'da-DK', '/img/flags/dk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(16, 'Dutch (Belgium)', 'nl-BE', '/img/flags/be.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(17, 'Dutch (Netherlands)', 'nl-NL', '/img/flags/nl.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(18, 'English (Australia)', 'en-AU', '/img/flags/au.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(19, 'English (Canada)', 'en-CA', '/img/flags/ca.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(20, 'English (Hongkong)', 'en-HK', '/img/flags/hk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(21, 'English (India)', 'en-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(22, 'English (Ireland)', 'en-IE', '/img/flags/ie.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(23, 'English (New Zealand)', 'en-NZ', '/img/flags/nz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(24, 'English (Philippines)', 'en-PH', '/img/flags/ph.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(25, 'English (Singapore)', 'en-SG', '/img/flags/sg.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(26, 'English (South Africa)', 'en-ZA', '/img/flags/za.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(27, 'English (UK)', 'en-GB', '/img/flags/gb.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(28, 'English (USA)', 'en-US', '/img/flags/us.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(30, 'Estonian (Estonia)', 'et-EE', '/img/flags/ee.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(31, 'Filipino (Philippines)', 'fil-PH', '/img/flags/ph.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(32, 'Finnish (Finland)', 'fi-FI', '/img/flags/fi.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(33, 'French (Belgium)', 'fr-BE', '/img/flags/be.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(34, 'French (France)', 'fr-FR', '/img/flags/fr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(35, 'French (Canada)', 'fr-CA', '/img/flags/ca.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(36, 'French (Switzerland)', 'fr-CH', '/img/flags/ch.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(37, 'German (Austria)', 'de-AT', '/img/flags/at.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(38, 'German (Germany)', 'de-DE', '/img/flags/de.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(39, 'German (Switzerland)', 'de-CH', '/img/flags/ch.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(40, 'Greek (Greece)', 'el-GR', '/img/flags/gr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(41, 'Gujarati (India)', 'gu-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(42, 'Hebrew (Israel)', 'he-IL', '/img/flags/il.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(43, 'Hindi (India)', 'hi-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(44, 'Hungarian (Hungary)', 'hu-HU', '/img/flags/hu.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(45, 'Icelandic (Iceland)', 'is-IS', '/img/flags/is.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(46, 'Indonesian (Indonesia)', 'id-ID', '/img/flags/id.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(47, 'Irish (Ireland)', 'ga-IE', '/img/flags/ie.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(48, 'Italian (Italy)', 'it-IT', '/img/flags/it.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(49, 'Japanese (Japan)', 'ja-JP', '/img/flags/jp.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(50, 'Kannada (India)', 'kn-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(51, 'Korean (South Korea)', 'ko-KR', '/img/flags/kr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(52, 'Latvian (Latvia)', 'lv-LV', '/img/flags/lv.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(53, 'Lithuanian (Lithuania)', 'lt-LT', '/img/flags/lt.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(54, 'Malayalam (India)', 'ml-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(55, 'Malay (Malaysia)', 'ms-MY', '/img/flags/my.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(56, 'Maltese (Malta)', 'mt-MT', '/img/flags/mt.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(57, 'Marathi (India)', 'mr-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(58, 'Norwegian (Norway)', 'nb-NO', '/img/flags/no.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(59, 'Polish (Poland)', 'pl-PL', '/img/flags/pl.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(60, 'Portuguese (Brazil)', 'pt-BR', '/img/flags/br.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(61, 'Portuguese (Portugal)', 'pt-PT', '/img/flags/pt.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(62, 'Romanian (Romania)', 'ro-RO', '/img/flags/ro.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(63, 'Russian (Russia)', 'ru-RU', '/img/flags/ru.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(64, 'Serbian (Serbia)', 'sr-RS', '/img/flags/rs.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(65, 'Slovak (Slovakia)', 'sk-SK', '/img/flags/sk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(66, 'Slovenian (Slovenia)', 'sl-SI', '/img/flags/si.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(67, 'Spanish (Argentina)', 'es-AR', '/img/flags/ar.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(68, 'Spanish (Colombia)', 'es-CO', '/img/flags/co.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(69, 'Spanish (Spain)', 'es-ES', '/img/flags/es.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(70, 'Spanish (Mexico)', 'es-MX', '/img/flags/mx.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(71, 'Spanish (USA)', 'es-US', '/img/flags/us.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(72, 'Swahili (Kenya)', 'sw-KE', '/img/flags/ke.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(73, 'Swedish (Sweden)', 'sv-SE', '/img/flags/se.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(74, 'Tamil (India)', 'ta-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(75, 'Telugu (India)', 'te-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(76, 'Thai (Thailand)', 'th-TH', '/img/flags/th.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(77, 'Turkish (Turkey)', 'tr-TR', '/img/flags/tr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(78, 'Ukrainian (Ukraine)', 'uk-UA', '/img/flags/ua.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(79, 'Urdu (Pakistan)', 'ur-PK', '/img/flags/pk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(80, 'Vietnamese (Vietnam)', 'vi-VN', '/img/flags/vn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(81, 'Welsh (Wales)', 'cy-GB', '/img/flags/gb-wls.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(82, 'Amharic (Ethiopia)', 'am-ET', '/img/flags/et.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(83, 'Arabic (Algeria)', 'ar-DZ', '/img/flags/dz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(84, 'Arabic (Bahrain)', 'ar-BH', '/img/flags/bh.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(85, 'Arabic (Iraq)', 'ar-IQ', '/img/flags/iq.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(86, 'Arabic (Jordan)', 'ar-JO', '/img/flags/jo.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(87, 'Arabic (Kuwait)', 'ar-KW', '/img/flags/kw.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(88, 'Arabic (Libya)', 'ar-LY', '/img/flags/ly.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(89, 'Arabic (Morocco)', 'ar-MA', '/img/flags/ma.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(90, 'Arabic (Qatar)', 'ar-QA', '/img/flags/qa.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(91, 'Arabic (Syria)', 'ar-SY', '/img/flags/sy.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(92, 'Arabic (Tunisia)', 'ar-TN', '/img/flags/tn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(93, 'Arabic (UAE)', 'ar-AE', '/img/flags/ae.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(94, 'Arabic (Yemen)', 'ar-YE', '/img/flags/ye.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(95, 'Bangla (Bangladesh)', 'bn-BD', '/img/flags/bd.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(96, 'Burmese (Myanmar)', 'my-MM', '/img/flags/mm.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(97, 'English (Kenya)', 'en-KE', '/img/flags/ke.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(98, 'English (Nigeria)', 'en-NG', '/img/flags/ng.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(99, 'English (Tanzania)', 'en-TZ', '/img/flags/tz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(100, 'Galician (Spain)', 'gl-ES', '/img/flags/es.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(101, 'Javanese (Indonesia)', 'jv-ID', '/img/flags/id.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(102, 'Persian (Iran)', 'fa-IR', '/img/flags/ir.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(103, 'Khmer (Cambodia)', 'km-KH', '/img/flags/kh.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(104, 'Somali (Somalia)', 'so-SO', '/img/flags/so.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(105, 'Spanish (Bolivia)', 'es-BO', '/img/flags/bo.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(106, 'Spanish (Chile)', 'es-CL', '/img/flags/cl.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(107, 'Spanish (Costa Rica)', 'es-CR', '/img/flags/cr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(108, 'Spanish (Cuba)', 'es-CU', '/img/flags/cu.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(109, 'Spanish (Dominican Republic)', 'es-DO', '/img/flags/do.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(110, 'Spanish (Ecuador)', 'es-EC', '/img/flags/ec.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(111, 'Spanish (El Salvador)', 'es-SV', '/img/flags/sv.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(112, 'Spanish (Equatorial Guinea)', 'es-GQ', '/img/flags/gq.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(113, 'Spanish (Guatemala)', 'es-GT', '/img/flags/gt.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(115, 'Spanish (Honduras)', 'es-HN', '/img/flags/hn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(116, 'Spanish (Nicaragua)', 'es-NI', '/img/flags/ni.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(117, 'Spanish (Panama)', 'es-PA', '/img/flags/pa.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(118, 'Spanish (Paraguay)', 'es-PY', '/img/flags/py.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(119, 'Spanish (Peru)', 'es-PE', '/img/flags/pe.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(120, 'Spanish (Puerto Rico)', 'es-PR', '/img/flags/pr.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(121, 'Spanish (Uruguay)', 'es-UY', '/img/flags/uy.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(122, 'Spanish (Venezuela)', 'es-VE', '/img/flags/ve.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(123, 'Sundanese (Indonesia)', 'su-ID', '/img/flags/id.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(124, 'Swahili (Tanzania)', 'sw-TZ', '/img/flags/tz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(125, 'Tamil (Singapore)', 'ta-SG', '/img/flags/sg.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(126, 'Tamil (Sri Lanka)', 'ta-LK', '/img/flags/lk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(127, 'Urdu (India)', 'ur-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(128, 'Uzbek (Uzbekistan)', 'uz-UZ', '/img/flags/uz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(129, 'Zulu (South Africa)', 'zu-ZA', '/img/flags/za.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(130, 'Kazakh (Kazakhstan)', 'kk-KZ', '/img/flags/kz.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(131, 'Lao (Laos)', 'lo-LA', '/img/flags/la.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(132, 'Macedonian (Macedonia)', 'mk-MK', '/img/flags/mk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(133, 'Pashto (Afghanistan)', 'ps-AF', '/img/flags/af.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(134, 'Sinhala (Sri Lanka)', 'si-LK', '/img/flags/lk.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(135, 'Punjabi (India)', 'pa-IN', '/img/flags/in.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(136, 'Azerbaijani (Azerbaijan)', 'az-AZ', '/img/flags/az.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(137, 'Arabic (Lebanon)', 'ar-LB', '/img/flags/lb.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(138, 'Albanian (Albania)', 'sq-AL', '/img/flags/al.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(139, 'Georgian (Georgia)', 'ka-GE', '/img/flags/ge.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(140, 'Mongolian (Mongolia)', 'mn-MN', '/img/flags/mn.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(141, 'Nepali (Nepal)', 'ne-NP', '/img/flags/np.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(142, 'Bosnian (Bosnia and Herzegovina)', 'bs-BA', '/img/flags/ba.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(143, 'Arabic (Oman)', 'ar-OM', '/img/flags/om.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(144, 'Tamil (Malaysia)', 'ta-MY', '/img/flags/my.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(145, 'Armenian (Armenia)', 'hy-AM', '/img/flags/am.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(146, 'Belarusian (Belarus)', 'be-BY', '/img/flags/by.svg', '2024-02-06 07:48:16', '2024-02-06 07:48:16');

-- --------------------------------------------------------

--
-- بنية الجدول `voiceover_results`
--

CREATE TABLE `voiceover_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) NOT NULL,
  `language_flag` varchar(191) DEFAULT NULL,
  `voice` varchar(191) NOT NULL,
  `voice_id` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `text_raw` longtext DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `result_url` varchar(191) DEFAULT NULL,
  `result_ext` varchar(191) DEFAULT NULL,
  `storage` varchar(191) DEFAULT NULL COMMENT 'local|s3|wasabi',
  `title` varchar(191) DEFAULT NULL,
  `vendor` varchar(191) NOT NULL COMMENT 'azure|gcp',
  `vendor_id` varchar(191) DEFAULT NULL COMMENT 'azure_nrl|gcp_nrl',
  `characters` int(11) DEFAULT NULL,
  `voice_type` varchar(191) NOT NULL COMMENT 'standard|neural',
  `plan_type` varchar(191) NOT NULL COMMENT 'free|paid',
  `audio_type` varchar(191) DEFAULT NULL,
  `mode` varchar(191) DEFAULT NULL,
  `project` varchar(191) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `voices`
--

CREATE TABLE `voices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `voice` varchar(191) NOT NULL,
  `voice_id` varchar(191) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `language_code` varchar(191) NOT NULL,
  `vendor_id` varchar(191) NOT NULL,
  `vendor` varchar(191) NOT NULL,
  `vendor_img` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `avatar_url` varchar(191) DEFAULT NULL,
  `voice_type` varchar(191) NOT NULL DEFAULT 'standard' COMMENT 'standard|neural',
  `sample_url` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `voices`
--

INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Amina', 'ar-XA-Wavenet-A', 'Female', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/amina-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(2, 'Ahmad', 'ar-XA-Wavenet-B', 'Male', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/29.jpg', 'neural', '/voices/gcp/ahmad-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(3, 'Abdulla', 'ar-XA-Wavenet-C', 'Male', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/30.jpg', 'neural', '/voices/gcp/abdulla-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(4, 'Saniya', 'ar-XA-Wavenet-D', 'Female', 'ar-XA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/saniya-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(5, 'Aarya', 'bn-IN-Wavenet-A', 'Female', 'bn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/aarya-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(6, 'Achintya', 'bn-IN-Wavenet-B', 'Male', 'bn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/31.jpg', 'neural', '/voices/gcp/achintya-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(7, 'Eliska', 'cs-CZ-Wavenet-A', 'Female', 'cs-CZ', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/eliska-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(8, 'Ida', 'da-DK-Wavenet-A', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/ida-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(9, 'Morten', 'da-DK-Wavenet-C', 'Male', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/32.jpg', 'neural', '/voices/gcp/morten-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(10, 'Freja', 'da-DK-Wavenet-D', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/freja-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(11, 'Josefine', 'da-DK-Wavenet-E', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/josefine-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(12, 'Mila', 'nl-NL-Wavenet-A', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/7.jpg', 'neural', '/voices/gcp/mila-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(13, 'Arend', 'nl-NL-Wavenet-B', 'Male', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/33.jpg', 'neural', '/voices/gcp/arend-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(14, 'Christiaan', 'nl-NL-Wavenet-C', 'Male', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/34.jpg', 'neural', '/voices/gcp/christiaan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(15, 'Lotte', 'nl-NL-Wavenet-D', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/lotte-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(16, 'Fenna', 'nl-NL-Wavenet-E', 'Female', 'nl-NL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/fenna-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(17, 'Charlotte', 'en-AU-Wavenet-A', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/charlotte-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(18, 'Noah', 'en-AU-Wavenet-B', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/35.jpg', 'neural', '/voices/gcp/noah-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(19, 'Amelia', 'en-AU-Wavenet-C', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/11.jpg', 'neural', '/voices/gcp/amelia-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(20, 'Oliver', 'en-AU-Wavenet-D', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/36.jpg', 'neural', '/voices/gcp/oliver-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(21, 'Saanvi', 'en-IN-Wavenet-A', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/12.jpg', 'neural', '/voices/gcp/saanvi-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(22, 'Sai', 'en-IN-Wavenet-B', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/37.jpg', 'neural', '/voices/gcp/sai-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(23, 'Veer', 'en-IN-Wavenet-C', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/38.jpg', 'neural', '/voices/gcp/veer-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(24, 'Prisha', 'en-IN-Wavenet-D', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/13.jpg', 'neural', '/voices/gcp/prisha-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(25, 'Poppy', 'en-GB-Wavenet-A', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/14.jpg', 'neural', '/voices/gcp/poppy-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(26, 'Charles', 'en-GB-Wavenet-B', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/39.jpg', 'neural', '/voices/gcp/charles-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(27, 'Elsie', 'en-GB-Wavenet-C', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/15.jpg', 'neural', '/voices/gcp/elsie-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(28, 'Harry', 'en-GB-Wavenet-D', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/40.jpg', 'neural', '/voices/gcp/harry-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(29, 'Nancy', 'en-GB-Wavenet-F', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/16.jpg', 'neural', '/voices/gcp/nancy-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(30, 'Dick', 'en-US-Wavenet-A', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/dick-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(31, 'Bush', 'en-US-Wavenet-B', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/bush-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(32, 'Caroline', 'en-US-Wavenet-C', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/17.jpg', 'neural', '/voices/gcp/caroline-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(33, 'Trump', 'en-US-Wavenet-D', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/trump-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(34, 'Susan', 'en-US-Wavenet-E', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/18.jpg', 'neural', '/voices/gcp/susan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(35, 'Kimberly', 'en-US-Wavenet-F', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/19.jpg', 'neural', '/voices/gcp/kimberly-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(36, 'Ellen', 'en-US-Wavenet-G', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/ellen-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(37, 'Teresa', 'en-US-Wavenet-H', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/teresa-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(38, 'Oscar', 'en-US-Wavenet-I', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/oscar-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(39, 'Obama', 'en-US-Wavenet-J', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/25.jpg', 'neural', '/voices/gcp/obama-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(40, 'Princess', 'fil-PH-Wavenet-A', 'Female', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/princess-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(41, 'Andrea', 'fil-PH-Wavenet-B', 'Female', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/andrea-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(42, 'Angel', 'fil-PH-Wavenet-C', 'Male', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/26.jpg', 'neural', '/voices/gcp/angel-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(43, 'Nathaniel', 'fil-PH-Wavenet-D', 'Male', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/27.jpg', 'neural', '/voices/gcp/nathaniel-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(44, 'Enni', 'fi-FI-Wavenet-A', 'Female', 'fi-FI', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/enni-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(45, 'Emma', 'fr-CA-Wavenet-A', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/emma-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(46, 'Thomas', 'fr-CA-Wavenet-B', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/28.jpg', 'neural', '/voices/gcp/thomas-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(47, 'Lea', 'fr-CA-Wavenet-C', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/lea-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(48, 'William', 'fr-CA-Wavenet-D', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/29.jpg', 'neural', '/voices/gcp/william-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(49, 'Mathilde', 'fr-FR-Wavenet-A', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/7.jpg', 'neural', '/voices/gcp/mathilde-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(50, 'Foucauld', 'fr-FR-Wavenet-B', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/30.jpg', 'neural', '/voices/gcp/foucauld-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(51, 'Louise', 'fr-FR-Wavenet-C', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/louise-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(52, 'Florent', 'fr-FR-Wavenet-D', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/31.jpg', 'neural', '/voices/gcp/florent-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(53, 'Alice', 'fr-FR-Wavenet-E', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/alice-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(54, 'Eva', 'de-DE-Wavenet-A', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/eva-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(55, 'Wilhelm', 'de-DE-Wavenet-B', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/32.jpg', 'neural', '/voices/gcp/wilhelm-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(56, 'Hannah', 'de-DE-Wavenet-C', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/hannah-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(57, 'Alfred', 'de-DE-Wavenet-D', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/33.jpg', 'neural', '/voices/gcp/alfred-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(58, 'Werner', 'de-DE-Wavenet-E', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/34.jpg', 'neural', '/voices/gcp/werner-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(59, 'Merkel', 'de-DE-Wavenet-F', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/merkel-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(60, 'Eleni', 'el-GR-Wavenet-A', 'Female', 'el-GR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/11.jpg', 'neural', '/voices/gcp/eleni-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(61, 'Inika', 'gu-IN-Wavenet-A', 'Female', 'gu-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/12.jpg', 'neural', '/voices/gcp/inika-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(62, 'Jhinuk', 'gu-IN-Wavenet-B', 'Male', 'gu-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/35.jpg', 'neural', '/voices/gcp/jhinuk-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(63, 'Arunima', 'hi-IN-Wavenet-A', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/13.jpg', 'neural', '/voices/gcp/arunima-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(64, 'Ayaan', 'hi-IN-Wavenet-B', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/36.jpg', 'neural', '/voices/gcp/ayaan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(65, 'Keshav', 'hi-IN-Wavenet-C', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/37.jpg', 'neural', '/voices/gcp/keshav-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(66, 'Bhavna', 'hi-IN-Wavenet-D', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/14.jpg', 'neural', '/voices/gcp/bhavna-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(67, 'Lena', 'hu-HU-Wavenet-A', 'Female', 'hu-HU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/15.jpg', 'neural', '/voices/gcp/lena-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(68, 'Aulia', 'id-ID-Wavenet-A', 'Female', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/16.jpg', 'neural', '/voices/gcp/aulia-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(69, 'Arief', 'id-ID-Wavenet-B', 'Male', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/38.jpg', 'neural', '/voices/gcp/arief-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(70, 'Fadhlan', 'id-ID-Wavenet-C', 'Male', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/39.jpg', 'neural', '/voices/gcp/fadhlan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(71, 'Dewi', 'id-ID-Wavenet-D', 'Female', 'id-ID', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/17.jpg', 'neural', '/voices/gcp/dewi-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(72, 'Federica', 'it-IT-Wavenet-A', 'Female', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/18.jpg', 'neural', '/voices/gcp/federica-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(73, 'Bella', 'it-IT-Wavenet-B', 'Female', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/19.jpg', 'neural', '/voices/gcp/bella-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(74, 'Luca', 'it-IT-Wavenet-C', 'Male', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/40.jpg', 'neural', '/voices/gcp/luca-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(75, 'Matteo', 'it-IT-Wavenet-D', 'Male', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/matteo-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(76, 'Manami', 'ja-JP-Wavenet-A', 'Female', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/manami-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(77, 'Mizuki', 'ja-JP-Wavenet-B', 'Female', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/mizuki-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(78, 'Sensei', 'ja-JP-Wavenet-C', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/sensei-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(79, 'Takuya', 'ja-JP-Wavenet-D', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/takuya-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(80, 'Aarushi', 'kn-IN-Wavenet-A', 'Female', 'kn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/aarushi-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(81, 'Arjun', 'kn-IN-Wavenet-B', 'Male', 'kn-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/arjun-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(82, 'Yong', 'ko-KR-Wavenet-A', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/yong-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(83, 'Eun-Kyung', 'ko-KR-Wavenet-B', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/eun-kyung-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(84, 'Beom-Soo', 'ko-KR-Wavenet-C', 'Male', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/25.jpg', 'neural', '/voices/gcp/beom-soo-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(85, 'Byung-joon', 'ko-KR-Wavenet-D', 'Male', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/26.jpg', 'neural', '/voices/gcp/byung-joon-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(86, 'Abha', 'ml-IN-Wavenet-A', 'Female', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/abha-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(87, 'Akhil', 'ml-IN-Wavenet-B', 'Male', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/27.jpg', 'neural', '/voices/gcp/akhil-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(88, 'Changying', 'cmn-CN-Wavenet-A', 'Female', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/changying-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(89, 'Boqin', 'cmn-CN-Wavenet-B', 'Male', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/28.jpg', 'neural', '/voices/gcp/boqin-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(90, 'Delun', 'cmn-CN-Wavenet-C', 'Male', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/29.jpg', 'neural', '/voices/gcp/delun-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(91, 'Tyantyan', 'cmn-CN-Wavenet-D', 'Female', 'cmn-CN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/7.jpg', 'neural', '/voices/gcp/tyantyan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(92, 'Sunyo', 'cmn-TW-Wavenet-A', 'Female', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/sunyo-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(93, 'Chen', 'cmn-TW-Wavenet-B', 'Male', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/30.jpg', 'neural', '/voices/gcp/chen-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(94, 'Xianbao', 'cmn-TW-Wavenet-C', 'Male', 'cmn-TW', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/31.jpg', 'neural', '/voices/gcp/xianbao-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(95, 'Chin', 'nb-NO-Wavenet-A', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/chin-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(96, 'Bjorn', 'nb-NO-Wavenet-B', 'Male', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/32.jpg', 'neural', '/voices/gcp/bjorn-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(97, 'Inger', 'nb-NO-Wavenet-C', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/inger-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(98, 'Dag', 'nb-NO-Wavenet-D', 'Male', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/33.jpg', 'neural', '/voices/gcp/dag-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(99, 'Janne', 'nb-NO-Wavenet-E', 'Female', 'nb-NO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/11.jpg', 'neural', '/voices/gcp/janne-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(100, 'Sara', 'pl-PL-Wavenet-A', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/12.jpg', 'neural', '/voices/gcp/sara-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(101, 'Jan', 'pl-PL-Wavenet-B', 'Male', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/34.jpg', 'neural', '/voices/gcp/jan-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(102, 'Jacob', 'pl-PL-Wavenet-C', 'Male', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/35.jpg', 'neural', '/voices/gcp/jacob-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(103, 'Lena', 'pl-PL-Wavenet-D', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/13.jpg', 'neural', '/voices/gcp/lena-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(104, 'Zofia', 'pl-PL-Wavenet-E', 'Female', 'pl-PL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/14.jpg', 'neural', '/voices/gcp/zofia-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(105, 'Francisca', 'pt-BR-Wavenet-A', 'Female', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/15.jpg', 'neural', '/voices/gcp/francisca-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(106, 'Beatriz', 'pt-PT-Wavenet-A', 'Female', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/16.jpg', 'neural', '/voices/gcp/beatriz-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(107, 'Ronaldo', 'pt-PT-Wavenet-B', 'Male', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/36.jpg', 'neural', '/voices/gcp/ronaldo-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(108, 'Lisboa', 'pt-PT-Wavenet-C', 'Male', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/37.jpg', 'neural', '/voices/gcp/lisboa-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(109, 'Mariana', 'pt-PT-Wavenet-D', 'Female', 'pt-PT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/17.jpg', 'neural', '/voices/gcp/mariana-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(110, 'Mihaela', 'ro-RO-Wavenet-A', 'Female', 'ro-RO', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/18.jpg', 'neural', '/voices/gcp/mihaela-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(111, 'Oksana', 'ru-RU-Wavenet-A', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/19.jpg', 'neural', '/voices/gcp/oksana-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(112, 'Vlad', 'ru-RU-Wavenet-B', 'Male', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/38.jpg', 'neural', '/voices/gcp/vlad-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(113, 'Veronika', 'ru-RU-Wavenet-C', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/veronika-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(114, 'Dapohui', 'ru-RU-Wavenet-D', 'Male', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/39.jpg', 'neural', '/voices/gcp/dapohui-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(115, 'Svetlana', 'ru-RU-Wavenet-E', 'Female', 'ru-RU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/svetlana-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(116, 'Anna', 'sk-SK-Wavenet-A', 'Female', 'sk-SK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/anna-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(117, 'Hector', 'es-ES-Wavenet-B', 'Male', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/40.jpg', 'neural', '/voices/gcp/hector-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(118, 'Vanessa', 'es-ES-Wavenet-C', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/vanessa-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(119, 'Laura', 'es-ES-Wavenet-D', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/laura-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(120, 'Isabella', 'es-US-Wavenet-A', 'Female', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/isabella-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(121, 'Pedro', 'es-US-Wavenet-B', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/pedro-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(122, 'Sanches', 'es-US-Wavenet-C', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/sanches-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(123, 'Karin', 'sv-SE-Wavenet-A', 'Female', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/karin-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(124, 'Aarushi', 'ta-IN-Wavenet-A', 'Female', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/7.jpg', 'neural', '/voices/gcp/aarushi-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(125, 'Aadhish', 'ta-IN-Wavenet-B', 'Male', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/aadhish-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(126, 'Zeynep', 'tr-TR-Wavenet-A', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/zeynep-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(127, 'Oktay', 'tr-TR-Wavenet-B', 'Male', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/oktay-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(128, 'Fatima', 'tr-TR-Wavenet-C', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/fatima-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(129, 'Gulchatay', 'tr-TR-Wavenet-D', 'Female', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/gulchatay-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(130, 'Yanar', 'tr-TR-Wavenet-E', 'Male', 'tr-TR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/25.jpg', 'neural', '/voices/gcp/yanar-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(131, 'Oksana', 'uk-UA-Wavenet-A', 'Female', 'uk-UA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/11.jpg', 'neural', '/voices/gcp/oksana-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(132, 'Chau', 'vi-VN-Wavenet-A', 'Female', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/12.jpg', 'neural', '/voices/gcp/chau-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(133, 'Dung', 'vi-VN-Wavenet-B', 'Male', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/26.jpg', 'neural', '/voices/gcp/dung-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(134, 'Cam', 'vi-VN-Wavenet-C', 'Female', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/13.jpg', 'neural', '/voices/gcp/cam-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(135, 'Duy', 'vi-VN-Wavenet-D', 'Male', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/27.jpg', 'neural', '/voices/gcp/duy-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(136, 'Marie', 'nl-BE-Wavenet-A', 'Female', 'nl-BE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/marie-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(137, 'Luc', 'nl-BE-Wavenet-B', 'Male', 'nl-BE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/33.jpg', 'neural', '/voices/gcp/luc-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(138, 'Aisyah', 'ms-MY-Wavenet-A', 'Female', 'ms-MY', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/9.jpg', 'neural', '/voices/gcp/aisyah-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(139, 'Ismail', 'ms-MY-Wavenet-B', 'Male', 'ms-MY', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/34.jpg', 'neural', '/voices/gcp/ismail-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(140, 'Nur', 'ms-MY-Wavenet-C', 'Female', 'ms-MY', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/10.jpg', 'neural', '/voices/gcp/nur-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(141, 'Hafiz', 'ms-MY-Wavenet-D', 'Male', 'ms-MY', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/35.jpg', 'neural', '/voices/gcp/hafiz-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(142, 'Tarcisio', 'pt-BR-Wavenet-B', 'Male', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/36.jpg', 'neural', '/voices/gcp/tarcisio-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(143, 'Amarjot', 'pa-IN-Wavenet-A', 'Female', 'pa-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/11.jpg', 'neural', '/voices/gcp/amarjot-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(144, 'Birpal', 'pa-IN-Wavenet-B', 'Male', 'pa-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/37.jpg', 'neural', '/voices/gcp/birpal-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(145, 'Arheer', 'pa-IN-Wavenet-C', 'Female', 'pa-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/12.jpg', 'neural', '/voices/gcp/arheer-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(146, 'Bishanpal', 'pa-IN-Wavenet-D', 'Male', 'pa-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/38.jpg', 'neural', '/voices/gcp/bishanpal-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(147, 'Frida', 'sv-SE-Wavenet-B', 'Female', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/13.jpg', 'neural', '/voices/gcp/frida-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(148, 'Anders', 'sv-SE-Wavenet-C', 'Male', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/39.jpg', 'neural', '/voices/gcp/anders-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(149, 'Raisa', 'sv-SE-Wavenet-D', 'Female', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/14.jpg', 'neural', '/voices/gcp/raisa-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(150, 'Markus', 'sv-SE-Wavenet-E', 'Male', 'sv-SE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/40.jpg', 'neural', '/voices/gcp/markus-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(151, 'Salma', 'ar-EG-SalmaNeural', 'Female', 'ar-EG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/salma.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(152, 'Shakir', 'ar-EG-ShakirNeural	', 'Male', 'ar-EG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/shakir.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(153, 'Zariyah', 'ar-SA-ZariyahNeural', 'Female', 'ar-SA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/zariyah.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(154, 'Hamed', 'ar-SA-HamedNeural', 'Male', 'ar-SA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/hamed.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(155, 'Kalina', 'bg-BG-KalinaNeural', 'Female', 'bg-BG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/kalina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(156, 'Borislav', 'bg-BG-BorislavNeural', 'Male', 'bg-BG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/borislav.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(157, 'Alba', 'ca-ES-AlbaNeural', 'Female', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/alba.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(158, 'Joanna', 'ca-ES-JoanaNeural', 'Female', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/joanna.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(159, 'Enric', 'ca-ES-EnricNeural', 'Male', 'ca-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/enric.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(160, 'HiuGaai', 'zh-HK-HiuGaaiNeural', 'Female', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/hiugaai.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(161, 'HiuMaan', 'zh-HK-HiuMaanNeural', 'Female', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/huimaan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(162, 'WanLung', 'zh-HK-WanLungNeural', 'Male', 'zh-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/wanlung.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(163, 'Xiaoxiao', 'zh-CN-XiaoxiaoNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/xiaoxiao.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(164, 'Xiaoyou', 'zh-CN-XiaoyouNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/xiaoyou.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(165, 'Xiaomo', 'zh-CN-XiaomoNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/xiaomo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(166, 'Xiaoxuan', 'zh-CN-XiaoxuanNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/xiaoxuan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(167, 'Xiaohan', 'zh-CN-XiaohanNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/xiaohan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(168, 'Xiaorui', 'zh-CN-XiaoruiNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/xiaorui.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(169, 'Yunyang', 'zh-CN-YunyangNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/yunyang.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(170, 'Yunye', 'zh-CN-YunyeNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/yunye.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(171, 'Yunxi', 'zh-CN-YunxiNeural', 'Male', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/yunxi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(172, 'HsiaoChen', 'zh-TW-HsiaoChenNeural', 'Female', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/hsiaochen.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(173, 'HsiaoYu', 'zh-TW-HsiaoYuNeural', 'Female', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/hsiaoyu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(174, 'YunJhe', 'zh-TW-YunJheNeural', 'Male', 'zh-TW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/yunjhe.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(175, 'Gabrijela', 'hr-HR-GabrijelaNeural', 'Female', 'hr-HR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/gabrijela.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(176, 'Srecko', 'hr-HR-SreckoNeural', 'Male', 'hr-HR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/srecko.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(177, 'Vlasta', 'cs-CZ-VlastaNeural', 'Female', 'cs-CZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/vlasta.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(178, 'Antonin', 'cs-CZ-AntoninNeural', 'Male', 'cs-CZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/antonin.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(179, 'Christel', 'da-DK-ChristelNeural', 'Female', 'da-DK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/christel.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(180, 'Jeppe', 'da-DK-JeppeNeural', 'Male', 'da-DK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/jeppe.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(181, 'Dena', 'nl-BE-DenaNeural', 'Female', 'nl-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/dena.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(182, 'Arnaud', 'nl-BE-ArnaudNeural', 'Male', 'nl-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/arnaud.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(183, 'Colette', 'nl-NL-ColetteNeural', 'Female', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/colette.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(184, 'Fenna', 'nl-NL-FennaNeural', 'Female', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/fenna.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(185, 'Maarten', 'nl-NL-MaartenNeural', 'Male', 'nl-NL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/maarten.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(186, 'Natasha', 'en-AU-NatashaNeural', 'Female', 'en-AU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/natasha.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(187, 'William', 'en-AU-WilliamNeural', 'Male', 'en-AU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/william.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(188, 'Clara', 'en-CA-ClaraNeural', 'Female', 'en-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/clara.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(189, 'Liam', 'en-CA-LiamNeural', 'Male', 'en-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/liam.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(190, 'Yan', 'en-HK-YanNeural', 'Female', 'en-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/yan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(191, 'Sam', 'en-HK-SamNeural', 'Male', 'en-HK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/sam.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(192, 'Neerja', 'en-IN-NeerjaNeural', 'Female', 'en-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/neerja.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(193, 'Prabhat', 'en-IN-PrabhatNeural', 'Male', 'en-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/prabhat.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(194, 'Emily', 'en-IE-EmilyNeural', 'Female', 'en-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/emily.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(195, 'Connor', 'en-IE-ConnorNeural', 'Male', 'en-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/connor.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(196, 'Molly', 'en-NZ-MollyNeural', 'Female', 'en-NZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/molly.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(197, 'Mitchell', 'en-NZ-MitchellNeural', 'Male', 'en-NZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/mitchell.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(198, 'Rosa', 'en-PH-RosaNeural', 'Female', 'en-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/rosa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(199, 'James', 'en-PH-JamesNeural', 'Male', 'en-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/james.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(200, 'Luna', 'en-SG-LunaNeural', 'Female', 'en-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/luna.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(201, 'Wayne', 'en-SG-WayneNeural', 'Male', 'en-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/wayne.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(202, 'Leah', 'en-ZA-LeahNeural', 'Female', 'en-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/leah.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(203, 'Luke', 'en-ZA-LukeNeural', 'Male', 'en-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/luke.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(204, 'Libby', 'en-GB-LibbyNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/libby.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(205, 'Ryan', 'en-GB-RyanNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/ryan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(206, 'Aria', 'en-US-AriaNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/aria-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(207, 'Jenny', 'en-US-JennyNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/jenny.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(208, 'Guy', 'en-US-GuyNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/guy-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(209, 'Anu', 'et-EE-AnuNeural', 'Female', 'et-EE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/anu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(210, 'Kert', 'et-EE-KertNeural', 'Male', 'et-EE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/kert.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(211, 'Noora', 'fi-FI-NooraNeural', 'Female', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/noora.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(212, 'Selma', 'fi-FI-SelmaNeural', 'Female', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/selma.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(213, 'Harri', 'fi-FI-HarriNeural', 'Male', 'fi-FI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/harri.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(214, 'Charline', 'fr-BE-CharlineNeural', 'Female', 'fr-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/charline.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(215, 'Gerard', 'fr-BE-GerardNeural', 'Male', 'fr-BE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/gerard.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(216, 'Sylvie', 'fr-CA-SylvieNeural', 'Female', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/sylvie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(217, 'Antoine', 'fr-CA-AntoineNeural', 'Male', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/antoine.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(218, 'Jean', 'fr-CA-JeanNeural', 'Male', 'fr-CA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/jean.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(219, 'Denise', 'fr-FR-DeniseNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/denise.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(220, 'Henri', 'fr-FR-HenriNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/henri.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(221, 'Ariane', 'fr-CH-ArianeNeural', 'Female', 'fr-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/ariane.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(222, 'Fabrice', 'fr-CH-FabriceNeural', 'Male', 'fr-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/fabrice.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(223, 'Ingrid', 'de-AT-IngridNeural', 'Female', 'de-AT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/ingrid.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(224, 'Jonas', 'de-AT-JonasNeural', 'Male', 'de-AT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/jonas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(225, 'Katja', 'de-DE-KatjaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/katja.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(226, 'Conrad', 'de-DE-ConradNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/conrad.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(227, 'Leni', 'de-CH-LeniNeural', 'Female', 'de-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/leni.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(228, 'Jan', 'de-CH-JanNeural', 'Male', 'de-CH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/jan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(229, 'Athina', 'el-GR-AthinaNeural', 'Female', 'el-GR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/athina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(230, 'Nestoras', 'el-GR-NestorasNeural', 'Male', 'el-GR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/nestoras.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(231, 'Dhwani', 'gu-IN-DhwaniNeural', 'Female', 'gu-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/dhwani.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(232, 'Niranjan', 'gu-IN-NiranjanNeural', 'Male', 'gu-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/niranjan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(233, 'Hila', 'he-IL-HilaNeural', 'Female', 'he-IL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/hila.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(234, 'Avri', 'he-IL-AvriNeural', 'Male', 'he-IL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/avri.,p3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(235, 'Swara', 'hi-IN-SwaraNeural', 'Female', 'hi-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/swara.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(236, 'Madhur', 'hi-IN-MadhurNeural', 'Male', 'hi-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/madhur.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(237, 'Noemi', 'hu-HU-NoemiNeural', 'Female', 'hu-HU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/noemi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(238, 'Tamas', 'hu-HU-TamasNeural', 'Male', 'hu-HU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/tamas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(239, 'Gadis', 'id-ID-GadisNeural', 'Female', 'id-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/gadis.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(240, 'Ardi', 'id-ID-ArdiNeural', 'Male', 'id-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/ardi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(241, 'Orla', 'ga-IE-OrlaNeural', 'Female', 'ga-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/orla.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(242, 'Colm', 'ga-IE-ColmNeural', 'Male', 'ga-IE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/colm.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(243, 'Elsa', 'it-IT-ElsaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/elsa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(244, 'Isabella', 'it-IT-IsabellaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/isabella.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(245, 'Diego', 'it-IT-DiegoNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/diego.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(246, 'Nanami', 'ja-JP-NanamiNeural', 'Female', 'ja-JP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/nanami.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(247, 'Keita', 'ja-JP-KeitaNeural', 'Male', 'ja-JP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/keita.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(248, 'SunHi', 'ko-KR-SunHiNeural', 'Female', 'ko-KR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/sunhi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(249, 'InJoon', 'ko-KR-InJoonNeural', 'Male', 'ko-KR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/injoon.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(250, 'Everita', 'lv-LV-EveritaNeural', 'Female', 'lv-LV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/everita.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(251, 'Nils', 'lv-LV-NilsNeural', 'Male', 'lv-LV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/nils.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(252, 'Ona', 'lt-LT-OnaNeural', 'Female', 'lt-LT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/ona.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(253, 'Leonas', 'lt-LT-LeonasNeural', 'Male', 'lt-LT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/leonas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(254, 'Yasmin', 'ms-MY-YasminNeural', 'Female', 'ms-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/yasmin.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(255, 'Osman', 'ms-MY-OsmanNeural', 'Male', 'ms-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/osman.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(256, 'Grace', 'mt-MT-GraceNeural', 'Female', 'mt-MT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/grace.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(257, 'Joseph', 'mt-MT-JosephNeural', 'Male', 'mt-MT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/joseph.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(258, 'Aarohi', 'mr-IN-AarohiNeural', 'Female', 'mr-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/aarohi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(259, 'Manohar', 'mr-IN-ManoharNeural', 'Male', 'mr-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/manohar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(260, 'Iselin', 'nb-NO-IselinNeural', 'Female', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/iselin.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(261, 'Pernille', 'nb-NO-PernilleNeural', 'Female', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/pernille.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(262, 'Finn', 'nb-NO-FinnNeural', 'Male', 'nb-NO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/finn.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(263, 'Agnieszka', 'pl-PL-AgnieszkaNeural', 'Female', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/agnieszka.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(264, 'Zofia', 'pl-PL-ZofiaNeural', 'Female', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/zofia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(265, 'Marek', 'pl-PL-MarekNeural', 'Male', 'pl-PL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/marek.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(266, 'Francisca', 'pt-BR-FranciscaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/francisca.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(267, 'Antonio', 'pt-BR-AntonioNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/antonio.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(268, 'Fernanda', 'pt-PT-FernandaNeural', 'Female', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/fernanda.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(269, 'Raquel', 'pt-PT-RaquelNeural', 'Female', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/raquel.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(270, 'Duarte', 'pt-PT-DuarteNeural', 'Male', 'pt-PT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/duarte.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(271, 'Alina', 'ro-RO-AlinaNeural', 'Female', 'ro-RO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/alina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(272, 'Emil', 'ro-RO-EmilNeural', 'Male', 'ro-RO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/emil.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(273, 'Dariya', 'ru-RU-DariyaNeural', 'Female', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/dariya.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(274, 'Svetlana', 'ru-RU-SvetlanaNeural', 'Female', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/svetlana.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(275, 'Dmitry', 'ru-RU-DmitryNeural', 'Male', 'ru-RU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/dmitry.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(276, 'Viktoria', 'sk-SK-ViktoriaNeural', 'Female', 'sk-SK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/viktoria.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(277, 'Lukas', 'sk-SK-LukasNeural', 'Male', 'sk-SK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/lukas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(278, 'Petra', 'sl-SI-PetraNeural', 'Female', 'sl-SI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/petra.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(280, 'Rok', 'sl-SI-RokNeural', 'Male', 'sl-SI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/rok.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(281, 'Elena', 'es-AR-ElenaNeural', 'Female', 'es-AR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/elena.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(282, 'Tomas', 'es-AR-TomasNeural', 'Male', 'es-AR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/tomas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(283, 'Salome', 'es-CO-SalomeNeural', 'Female', 'es-CO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/salome.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(284, 'Gonzalo', 'es-CO-GonzaloNeural', 'Male', 'es-CO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/gonzalo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(285, 'Dalia', 'es-MX-DaliaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/dalia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(286, 'Jorge', 'es-MX-JorgeNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/jorge.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(287, 'Elvira', 'es-ES-ElviraNeural', 'Female', 'es-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/elvira.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(288, 'Alvaro', 'es-ES-AlvaroNeural', 'Male', 'es-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/alvaro.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(289, 'Paloma', 'es-US-PalomaNeural', 'Female', 'es-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/paloma.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(290, 'Alonso', 'es-US-AlonsoNeural', 'Male', 'es-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/alonso.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(291, 'Zuri', 'sw-KE-ZuriNeural', 'Female', 'sw-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/zuri.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(292, 'Rafiki', 'sw-KE-RafikiNeural', 'Male', 'sw-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/rafiki.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(293, 'Hillev', 'sv-SE-HilleviNeural', 'Female', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/hillev.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(294, 'Sofie', 'sv-SE-SofieNeural', 'Female', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/sofie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(295, 'Mattias', 'sv-SE-MattiasNeural', 'Male', 'sv-SE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/mattias.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(296, 'Pallavi', 'ta-IN-PallaviNeural', 'Female', 'ta-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/pallavi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(297, 'Valluvar', 'ta-IN-ValluvarNeural', 'Male', 'ta-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/valluvar-nrl.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(298, 'Shruti', 'te-IN-ShrutiNeural', 'Female', 'te-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/shruti.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(299, 'Mohan', 'te-IN-MohanNeural', 'Male', 'te-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/mohan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(300, 'Achara', 'th-TH-AcharaNeural', 'Female', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/achara.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(301, 'Premwadee', 'th-TH-PremwadeeNeural', 'Female', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/premwadee.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(302, 'Niwat', 'th-TH-NiwatNeural', 'Male', 'th-TH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/niwat.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(303, 'Emel', 'tr-TR-EmelNeural', 'Female', 'tr-TR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/emel.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(304, 'Ahmet', 'tr-TR-AhmetNeural', 'Male', 'tr-TR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/ahmet.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(305, 'Polina', 'uk-UA-PolinaNeural', 'Female', 'uk-UA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/polina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(306, 'Ostap', 'uk-UA-OstapNeural', 'Male', 'uk-UA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/ostap.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(307, 'Uzma', 'ur-PK-UzmaNeural', 'Female', 'ur-PK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/uzma.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(308, 'Asad', 'ur-PK-AsadNeural', 'Male', 'ur-PK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/asad.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(309, 'HoaiMy', 'vi-VN-HoaiMyNeural', 'Female', 'vi-VN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/hoaimy.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(310, 'NamMinh', 'vi-VN-NamMinhNeural', 'Male', 'vi-VN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/namminh.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(311, 'Nia', 'cy-GB-NiaNeural', 'Female', 'cy-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/nia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(312, 'Aled', 'cy-GB-AledNeural', 'Female', 'cy-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/aled.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(313, 'Adri', 'af-ZA-AdriNeural', 'Female', 'af-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/adri.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(314, 'Willem', 'af-ZA-WillemNeural', 'Male', 'af-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/willem.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(315, 'Mekdes', 'am-ET-MekdesNeural', 'Female', 'am-ET', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/mekdes.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(316, 'Ameha', 'am-ET-AmehaNeural', 'Male', 'am-ET', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/ameha.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(317, 'Amina', 'ar-DZ-AminaNeural', 'Female', 'ar-DZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/amina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(318, 'Ismael', 'ar-DZ-IsmaelNeural', 'Male', 'ar-DZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/ismael.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(319, 'Laila', 'ar-BH-LailaNeural', 'Female', 'ar-BH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/laila.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(320, 'Ali', 'ar-BH-AliNeural', 'Male', 'ar-BH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/ali.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(321, 'Rana', 'ar-IQ-RanaNeural', 'Female', 'ar-IQ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/rana.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(322, 'Bassel', 'ar-IQ-BasselNeural', 'Male', 'ar-IQ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/bassel.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(323, 'Sana', 'ar-JO-SanaNeural', 'Female', 'ar-JO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/sana.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(324, 'Taim', 'ar-JO-TaimNeural', 'Male', 'ar-JO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/taim.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(325, 'Noura', 'ar-KW-NouraNeural', 'Female', 'ar-KW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/noura.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(326, 'Fahed', 'ar-KW-FahedNeural', 'Male', 'ar-KW', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/fahed.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(327, 'Iman', 'ar-LY-ImanNeural', 'Female', 'ar-LY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/iman.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(328, 'Omar', 'ar-LY-OmarNeural', 'Male', 'ar-LY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/omar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(329, 'Mouna', 'ar-MA-MounaNeural', 'Female', 'ar-MA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/mouna.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(330, 'Jamal', 'ar-MA-JamalNeural', 'Male', 'ar-MA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/jamal.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(331, 'Amal', 'ar-QA-AmalNeural', 'Female', 'ar-QA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/amal.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(332, 'Moaz', 'ar-QA-MoazNeural', 'Male', 'ar-QA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/moaz.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(333, 'Amany', 'ar-SY-AmanyNeural', 'Female', 'ar-SY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/amany.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(334, 'Laith', 'ar-SY-LaithNeural', 'Male', 'ar-SY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/laith.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(335, 'Reem', 'ar-TN-ReemNeural', 'Female', 'ar-TN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/reem.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(336, 'Hedi', 'ar-TN-HediNeural', 'Male', 'ar-TN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/hedi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(337, 'Fatima', 'ar-AE-FatimaNeural', 'Female', 'ar-AE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/fatima.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(338, 'Hamdan', 'ar-AE-HamdanNeural', 'Male', 'ar-AE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/hamdan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(339, 'Maryam', 'ar-YE-MaryamNeural', 'Female', 'ar-YE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/maryam.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(340, 'Saleh', 'ar-YE-SalehNeural', 'Male', 'ar-YE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/saleh.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(341, 'Nabanita', 'bn-BD-NabanitaNeural', 'Female', 'bn-BD', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/nabanita.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(342, 'PraDeep', 'bn-BD-PraDeepNeural', 'Male', 'bn-BD', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/praDeep.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(343, 'Xiaochen', 'zh-CN-XiaochenNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/xiaochen.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(344, 'Xiaoyan', 'zh-CN-XiaoyanNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/xiaoyan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(345, 'Xiaoshuang', 'zh-CN-XiaoshuangNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/xiaoshuang.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(346, 'Xiaoqiu', 'zh-CN-XiaoqiuNeural', 'Female', 'zh-CN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/xiaoqiu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(347, 'Nilar', 'my-MM-NilarNeural', 'Female', 'my-MM', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/nilar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(348, 'Thiha', 'my-MM-ThihaNeural', 'Male', 'my-MM', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/thiha.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(349, 'Asilia', 'en-KE-AsiliaNeural', 'Female', 'en-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/asilia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(350, 'Chilemba', 'en-KE-ChilembaNeural', 'Male', 'en-KE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/chilemba.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(351, 'Ezinne', 'en-NG-EzinneNeural', 'Female', 'en-NG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/ezinne.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(352, 'Abeo', 'en-NG-AbeoNeural', 'Male', 'en-NG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/abeo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(353, 'Imani', 'en-TZ-ImaniNeural', 'Female', 'en-TZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/imani.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(354, 'Elimu', 'en-TZ-ElimuNeural', 'Male', 'en-TZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/elimu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(355, 'Blessica', 'fil-PH-BlessicaNeural', 'Female', 'fil-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/blessica.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(356, 'Angelo', 'fil-PH-AngeloNeural', 'Male', 'fil-PH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/angelo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(357, 'Sabela', 'gl-ES-SabelaNeural', 'Female', 'gl-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/sabela.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(358, 'Roi', 'gl-ES-RoiNeural', 'Male', 'gl-ES', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/roi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(359, 'Siti', 'jv-ID-SitiNeural', 'Female', 'jv-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/siti.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(360, 'Dimas', 'jv-ID-DimasNeural', 'Male', 'jv-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/dimas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(361, 'Sreymom', 'km-KH-SreymomNeural', 'Female', 'km-KH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/sreymom.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(362, 'Piseth', 'km-KH-PisethNeural', 'Male', 'km-KH', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/piseth.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(363, 'Dilara', 'fa-IR-DilaraNeural', 'Female', 'fa-IR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/dilara.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(364, 'Farid', 'fa-IR-FaridNeural', 'Male', 'fa-IR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/farid.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(365, 'Ubax', 'so-SO-UbaxNeural', 'Female', 'so-SO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/ubax.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(366, 'Muuse', 'so-SO-MuuseNeural', 'Male', 'so-SO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/muuse.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(367, 'Sofia', 'es-BO-SofiaNeural', 'Female', 'es-BO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/sofia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(368, 'Marcelo', 'es-BO-MarceloNeural', 'Male', 'es-BO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/marcelo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(369, 'Catalina', 'es-CL-CatalinaNeural', 'Female', 'es-CL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/catalina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(370, 'Lorenzo', 'es-CL-LorenzoNeural', 'Male', 'es-CL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/lorenzo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(371, 'Maria', 'es-CR-MariaNeural', 'Female', 'es-CR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/maria.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(372, 'Juan', 'es-CR-JuanNeural', 'Male', 'es-CR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/juan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(373, 'Belkys', 'es-CU-BelkysNeural', 'Female', 'es-CU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/belkys.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(374, 'Manuel', 'es-CU-ManuelNeural', 'Male', 'es-CU', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/manuel.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(375, 'Ramona', 'es-DO-RamonaNeural', 'Female', 'es-DO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/ramona.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(376, 'Emilio', 'es-DO-EmilioNeural', 'Male', 'es-DO', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/emilio.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(377, 'Andrea', 'es-EC-AndreaNeural', 'Female', 'es-EC', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/andrea.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(378, 'Luis', 'es-EC-LuisNeural', 'Male', 'es-EC', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/luis.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(379, 'Lorena', 'es-SV-LorenaNeural', 'Female', 'es-SV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/lorena.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(380, 'Rodrigo', 'es-SV-RodrigoNeural', 'Male', 'es-SV', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/rodrigo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(381, 'Teresa', 'es-GQ-TeresaNeural', 'Female', 'es-GQ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/teresa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(382, 'Javier', 'es-GQ-JavierNeural', 'Male', 'es-GQ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/javier.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(383, 'Marta', 'es-GT-MartaNeural', 'Female', 'es-GT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/marta.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(384, 'Andres', 'es-GT-AndresNeural', 'Male', 'es-GT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/andres.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(385, 'Karla', 'es-HN-KarlaNeural', 'Female', 'es-HN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/karla.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(386, 'Carlos', 'es-HN-CarlosNeural', 'Male', 'es-HN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/carlos.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(387, 'Yolanda', 'es-NI-YolandaNeural', 'Female', 'es-NI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/yolanda.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(388, 'Federico', 'es-NI-FedericoNeural', 'Male', 'es-NI', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/federico.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(389, 'Margarita', 'es-PA-MargaritaNeural', 'Female', 'es-PA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/margarita.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(390, 'Roberto', 'es-PA-RobertoNeural', 'Male', 'es-PA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/roberto.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(391, 'Tania', 'es-PY-TaniaNeural', 'Female', 'es-PY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/tania.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(392, 'Mario', 'es-PY-MarioNeural', 'Male', 'es-PY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/mario.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(393, 'Camila', 'es-PE-CamilaNeural', 'Female', 'es-PE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/camila.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(394, 'Alex', 'es-PE-AlexNeural', 'Male', 'es-PE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/alex.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(395, 'Karina', 'es-PR-KarinaNeural', 'Female', 'es-PR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/karina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(396, 'Victor', 'es-PR-VictorNeural', 'Male', 'es-PR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/victor.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(397, 'Valentina', 'es-UY-ValentinaNeural', 'Female', 'es-UY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/valentina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(398, 'Mateo', 'es-UY-MateoNeural', 'Male', 'es-UY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/mateo.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(399, 'Paola', 'es-VE-PaolaNeural', 'Female', 'es-VE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/paola.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(400, 'Sebastian', 'es-VE-SebastianNeural', 'Male', 'es-VE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/sebastian.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(401, 'Tuti', 'su-ID-TutiNeural', 'Female', 'su-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/tuti.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(402, 'Jajang', 'su-ID-JajangNeural', 'Male', 'su-ID', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/jajang.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(403, 'Rehema', 'sw-TZ-RehemaNeural', 'Female', 'sw-TZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/rehema.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(404, 'Daudi', 'sw-TZ-DaudiNeural', 'Male', 'sw-TZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/daudi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(405, 'Venba', 'ta-SG-VenbaNeural', 'Female', 'ta-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/venba.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(406, 'Anbu', 'ta-SG-AnbuNeural', 'Male', 'ta-SG', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/anbu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(407, 'Saranya', 'ta-LK-SaranyaNeural', 'Female', 'ta-LK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/saranya.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(408, 'Kumar', 'ta-LK-KumarNeural', 'Male', 'ta-LK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/kumar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(409, 'Gul', 'ur-IN-GulNeural', 'Female', 'ur-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/gul.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(410, 'Salman', 'ur-IN-SalmanNeural', 'Male', 'ur-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/salman.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(411, 'Madina', 'uz-UZ-MadinaNeural', 'Female', 'uz-UZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/madina.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(412, 'Sardor', 'uz-UZ-SardorNeural', 'Male', 'uz-UZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/sardor.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(413, 'Thando', 'zu-ZA-ThandoNeural', 'Female', 'zu-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/thando.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(414, 'Themba', 'zu-ZA-ThembaNeural', 'Male', 'zu-ZA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/themba.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(415, 'Tanishaa', 'bn-IN-TanishaaNeural', 'Female', 'bn-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/tanishaa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(416, 'Bashkar', 'bn-IN-BashkarNeural', 'Male', 'bn-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/bashkar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(417, 'Sonia', 'en-GB-SoniaNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/sonia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(418, 'Amber', 'en-US-AmberNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/amber.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(419, 'Ashley', 'en-US-AshleyNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/ashley.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(420, 'Cora', 'en-US-CoraNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/cora.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(421, 'Elizabeth', 'en-US-ElizabethNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/elizabeth.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(422, 'Michelle', 'en-US-MichelleNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/michelle.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(423, 'Monica', 'en-US-MonicaNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/monica.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(424, 'Sara', 'en-US-SaraNeural', 'Female', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/sara.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(425, 'Ana', 'en-US-AnaNeural', 'Female(child)', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/ana.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(426, 'Brandon', 'en-US-BrandonNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/brandon.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(427, 'Christopher', 'en-US-ChristopherNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/christopher.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(428, 'Eric', 'en-US-EricNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/eric.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(429, 'Jacob', 'en-US-JacobNeural', 'Male', 'en-US', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/jacob.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(430, 'Gudrun', 'is-IS-GudrunNeural', 'Female', 'is-IS', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/gudrun.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(431, 'Gunnar', 'is-IS-GunnarNeural', 'Male', 'is-IS', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/gunnar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(432, 'Sapna', 'kn-IN-SapnaNeural', 'Female', 'kn-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/sapna.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(433, 'Gagan', 'kn-IN-GaganNeural', 'Male', 'kn-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/gagan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(434, 'Aigul', 'kk-KZ-AigulNeural', 'Female', 'kk-KZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/aigul.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(435, 'Daulet', 'kk-KZ-DauletNeural', 'Male', 'kk-KZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/daulet.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(436, 'Keomany', 'lo-LA-KeomanyNeural', 'Female', 'lo-LA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/keomany.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(437, 'Chanthavong', 'lo-LA-ChanthavongNeural', 'Male', 'lo-LA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/chanthavong.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(438, 'Marija', 'mk-MK-MarijaNeural', 'Female', 'mk-MK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/marija.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(439, 'Aleksandar', 'mk-MK-AleksandarNeural', 'Male', 'mk-MK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/aleksandar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(440, 'Sobhana', 'ml-IN-SobhanaNeural', 'Female', 'ml-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/sobhana.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(441, 'Midhun', 'ml-IN-MidhunNeural', 'Male', 'ml-IN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/midhun.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(442, 'Latifa', 'ps-AF-LatifaNeural', 'Female', 'ps-AF', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/latifa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(443, 'GulNawaz', 'ps-AF-GulNawazNeural', 'Male', 'ps-AF', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/27.jpg', 'neural', '/voices/azure/gulnawaz.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(444, 'Sophie', 'sr-RS-SophieNeural', 'Female', 'sr-RS', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/sophie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(445, 'Nicholas', 'sr-RS-NicholasNeural', 'Male', 'sr-RS', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/28.jpg', 'neural', '/voices/azure/nicholas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(446, 'Thilini', 'si-LK-ThiliniNeural', 'Female', 'si-LK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/thilini.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(447, 'Sameera', 'si-LK-SameeraNeural', 'Male', 'si-LK', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/29.jpg', 'neural', '/voices/azure/sameera.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(448, 'Abbi', 'en-GB-AbbiNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/abbi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(449, 'Bella', 'en-GB-BellaNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/bella.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(450, 'Hollie', 'en-GB-HollieNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/hollie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(451, 'Olivia', 'en-GB-OliviaNeural', 'Female', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/olivia.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(452, 'Maisie', 'en-GB-MaisieNeural', 'Female(child)', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/8.jpg', 'neural', '/voices/azure/maisie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(453, 'Alfie', 'en-GB-AlfieNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/30.jpg', 'neural', '/voices/azure/alfie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(454, 'Elliot', 'en-GB-ElliotNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/31.jpg', 'neural', '/voices/azure/elliot.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(455, 'Ethan', 'en-GB-EthanNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/32.jpg', 'neural', '/voices/azure/ethan.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(456, 'Noah', 'en-GB-NoahNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/33.jpg', 'neural', '/voices/azure/noah.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(457, 'Oliver', 'en-GB-OliverNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/34.jpg', 'neural', '/voices/azure/oliver.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(458, 'Thomas', 'en-GB-ThomasNeural', 'Male', 'en-GB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/35.jpg', 'neural', '/voices/azure/thomas.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(459, 'Brigitte', 'fr-FR-BrigitteNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/9.jpg', 'neural', '/voices/azure/brigitte.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(460, 'Celeste', 'fr-FR-CelesteNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/10.jpg', 'neural', '/voices/azure/celeste.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(461, 'Coralie', 'fr-FR-CoralieNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/11.jpg', 'neural', '/voices/azure/coralie.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(462, 'Jacqueline', 'fr-FR-JacquelineNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/12.jpg', 'neural', '/voices/azure/jacqueline.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(463, 'Josephine', 'fr-FR-JosephineNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/13.jpg', 'neural', '/voices/azure/josephine.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(464, 'Yvette', 'fr-FR-YvetteNeural', 'Female', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/14.jpg', 'neural', '/voices/azure/yvette.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(465, 'Eloise', 'fr-FR-EloiseNeural', 'Female(child)', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/15.jpg', 'neural', '/voices/azure/eloise.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(466, 'Alain', 'fr-FR-AlainNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/36.jpg', 'neural', '/voices/azure/alain.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(467, 'Claude', 'fr-FR-ClaudeNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/37.jpg', 'neural', '/voices/azure/claude.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(468, 'Jerome', 'fr-FR-JeromeNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/38.jpg', 'neural', '/voices/azure/jerome.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(469, 'Maurice', 'fr-FR-MauriceNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/39.jpg', 'neural', '/voices/azure/maurice.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(470, 'Yves', 'fr-FR-YvesNeural', 'Male', 'fr-FR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/40.jpg', 'neural', '/voices/azure/yves.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(471, 'Amala', 'de-DE-AmalaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/16.jpg', 'neural', '/voices/azure/amala.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(472, 'Elke', 'de-DE-ElkeNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/17.jpg', 'neural', '/voices/azure/elke.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(473, 'Klarissa', 'de-DE-KlarissaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/18.jpg', 'neural', '/voices/azure/klarissa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(474, 'Louisa', 'de-DE-LouisaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/19.jpg', 'neural', '/voices/azure/louisa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(475, 'Maja', 'de-DE-MajaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/maja.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(476, 'Tanja', 'de-DE-TanjaNeural', 'Female', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/tanja.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(477, 'Gisela', 'de-DE-GiselaNeural', 'Female(child)', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/gisela.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(478, 'Bernd', 'de-DE-BerndNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/bernd.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(479, 'Christoph', 'de-DE-ChristophNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/christoph.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(480, 'Kasper', 'de-DE-KasperNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/kasper.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(481, 'Killian', 'de-DE-KillianNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/killian.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(482, 'Klaus', 'de-DE-KlausNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/klaus.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(483, 'Ralf', 'de-DE-RalfNeural', 'Male', 'de-DE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/ralf.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(484, 'Babek', 'az-AZ-BabekNeural', 'Male', 'az-AZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/babek.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(485, 'Banu', 'az-AZ-BanuNeural', 'Female', 'az-AZ', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/banu.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(486, 'Rami', 'ar-LB-RamiNeural', 'Male', 'ar-LB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/rami.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(487, 'Layla', 'ar-LB-LaylaNeural', 'Female', 'ar-LB', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/layla.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(488, 'Ilir', 'sq-AL-IlirNeural', 'Male', 'sq-AL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/ilir.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(489, 'Anila', 'sq-AL-AnilaNeural', 'Female', 'sq-AL', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/anila.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(490, 'Giorgi', 'ka-GE-GiorgiNeural', 'Male', 'ka-GE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/giorgi.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(491, 'Eka', 'ka-GE-EkaNeural', 'Female', 'ka-GE', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/eka.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(492, 'Yesui', 'mn-MN-YesuiNeural', 'Female', 'mn-MN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/yesui.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(493, 'Bataa', 'mn-MN-BataaNeural', 'Male', 'mn-MN', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/bataa.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(494, 'Sagar', 'ne-NP-SagarNeural', 'Male', 'ne-NP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/sagar.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(495, 'Hemkala', 'ne-NP-HemkalaNeural', 'Female', 'ne-NP', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/hemkala.mp3', NULL, '2024-02-06 07:48:16', '2024-02-06 07:48:16'),
(496, 'Goran', 'bs-BA-GoranNeural', 'Male', 'bs-BA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/goran.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(497, 'Vesna', 'bs-BA-VesnaNeural', 'Female', 'bs-BA', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/vesna.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(498, 'Abdullah', 'ar-OM-AbdullahNeural', 'Male', 'ar-OM', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/abdullah.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(499, 'Aysha', 'ar-OM-AyshaNeural', 'Female', 'ar-OM', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/aysha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(500, 'Surya', 'ta-MY-SuryaNeural', 'Male', 'ta-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/surya.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(501, 'Kani', 'ta-MY-KaniNeural', 'Female', 'ta-MY', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/kani.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(502, 'Cecilio', 'es-MX-CecilioNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/cecilio.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(503, 'Gerardo', 'es-MX-GerardoNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/gerardo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(504, 'Liberto', 'es-MX-LibertoNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/liberto.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(505, 'Luciano', 'es-MX-LucianoNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/luciano.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(506, 'Pelayo', 'es-MX-PelayoNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/26.jpg', 'neural', '/voices/azure/pelayo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(507, 'Yago', 'es-MX-YagoNeural', 'Male', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/yago.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(508, 'Beatriz', 'es-MX-BeatrizNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/beatriz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(509, 'Carlota', 'es-MX-CarlotaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/carlota.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(510, 'Nuria', 'es-MX-NuriaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/nuria.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(511, 'Candela', 'es-MX-CandelaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/candela.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(512, 'Larissa', 'es-MX-LarissaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/larissa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(513, 'Renata', 'es-MX-RenataNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/7.jpg', 'neural', '/voices/azure/renata.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(514, 'Marina', 'es-MX-MarinaNeural', 'Female', 'es-MX', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/marina.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(515, 'Pierina', 'it-IT-PierinaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/1.jpg', 'neural', '/voices/azure/pierina.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(516, 'Fabiola', 'it-IT-FabiolaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/fabiola.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(517, 'Imelda', 'it-IT-ImeldaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/imelda.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(518, 'Palmira', 'it-IT-PalmiraNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/palmira.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(519, 'Fiamma', 'it-IT-FiammaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/fiamma.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(520, 'Irma', 'it-IT-IrmaNeural', 'Female', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/irma.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(521, 'Benigno', 'it-IT-BenignoNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/20.jpg', 'neural', '/voices/azure/benigno.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(522, 'Cataldo', 'it-IT-CataldoNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/21.jpg', 'neural', '/voices/azure/cataldo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(523, 'Lisandro', 'it-IT-LisandroNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/22.jpg', 'neural', '/voices/azure/lisandro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(524, 'Gianni', 'it-IT-GianniNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/23.jpg', 'neural', '/voices/azure/gianni.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(525, 'Calimero', 'it-IT-CalimeroNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/24.jpg', 'neural', '/voices/azure/calimero.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(526, 'Rinaldo', 'it-IT-RinaldoNeural', 'Male', 'it-IT', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/rinaldo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(527, 'Donato', 'pt-BR-DonatoNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/donato.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(528, 'Fabio', 'pt-BR-FabioNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/fabio.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(529, 'Julio', 'pt-BR-JulioNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/julio.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(530, 'Nicolau', 'pt-BR-NicolauNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/nicolau.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(531, 'Valerio', 'pt-BR-ValerioNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/valerio.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(532, 'Leticia', 'pt-BR-LeticiaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/leticia.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(534, 'Brenda', 'pt-BR-BrendaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/brenda.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(535, 'Elza', 'pt-BR-ElzaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/6.jpg', 'neural', '/voices/azure/elza.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(536, 'Manuela', 'pt-BR-ManuelaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/5.jpg', 'neural', '/voices/azure/manuela.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(537, 'Giovanna', 'pt-BR-GiovannaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/4.jpg', 'neural', '/voices/azure/giovanna.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(538, 'Leila', 'pt-BR-LeilaNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/3.jpg', 'neural', '/voices/azure/leila.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(539, 'Yara', 'pt-BR-YaraNeural', 'Female', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/2.jpg', 'neural', '/voices/azure/yara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(540, 'Humberto', 'pt-BR-HumbertoNeural', 'Male', 'pt-BR', 'azure_nrl', 'azure', '/img/csp/azure-sm.png', 'active', '/voices/azure/avatars/25.jpg', 'neural', '/voices/azure/humberto.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(541, 'Alloy', 'alloy_std-ZA', 'Male', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(542, 'Echo', 'echo_std-ZA', 'Male', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(543, 'Fable', 'fable_std-ZA', 'Male', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(544, 'Onyx', 'onyx_std-ZA', 'Male', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(545, 'Nova', 'nova_std-ZA', 'Female', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(546, 'Shimmer', 'shimmer_std-ZA', 'Female', 'af-ZA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(547, 'Alloy', 'alloy_std-XA', 'Male', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(548, 'Echo', 'echo_std-XA', 'Male', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(549, 'Fable', 'fable_std-XA', 'Male', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(550, 'Onyx', 'onyx_std-XA', 'Male', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(551, 'Nova', 'nova_std-XA', 'Female', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(552, 'Shimmer', 'shimmer_std-XA', 'Female', 'ar-XA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(553, 'Alloy', 'alloy_std-AM', 'Male', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(554, 'Echo', 'echo_std-AM', 'Male', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(555, 'Fable', 'fable_std-AM', 'Male', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(556, 'Onyx', 'onyx_std-AM', 'Male', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(557, 'Nova', 'nova_std-AM', 'Female', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(558, 'Shimmer', 'shimmer_std-AM', 'Female', 'hy-AM', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(559, 'Alloy', 'alloy_std-AZ', 'Male', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(560, 'Echo', 'echo_std-AZ', 'Male', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(561, 'Fable', 'fable_std-AZ', 'Male', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(562, 'Onyx', 'onyx_std-AZ', 'Male', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(563, 'Nova', 'nova_std-AZ', 'Female', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(564, 'Shimmer', 'shimmer_std-AZ', 'Female', 'az-AZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(565, 'Alloy', 'alloy_std-BY', 'Male', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(566, 'Echo', 'echo_std-BY', 'Male', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(567, 'Fable', 'fable_std-BY', 'Male', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(568, 'Onyx', 'onyx_std-BY', 'Male', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(569, 'Nova', 'nova_std-BY', 'Female', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(570, 'Shimmer', 'shimmer_std-BY', 'Female', 'be-BY', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(571, 'Alloy', 'alloy_std-BA', 'Male', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(572, 'Echo', 'echo_std-BA', 'Male', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(573, 'Fable', 'fable_std-BA', 'Male', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(574, 'Onyx', 'onyx_std-BA', 'Male', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(575, 'Nova', 'nova_std-BA', 'Female', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(576, 'Shimmer', 'shimmer_std-BA', 'Female', 'bs-BA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(577, 'Alloy', 'alloy_std-BG', 'Male', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(578, 'Echo', 'echo_std-BG', 'Male', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(579, 'Fable', 'fable_std-BG', 'Male', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(580, 'Onyx', 'onyx_std-BG', 'Male', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(581, 'Nova', 'nova_std-BG', 'Female', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(582, 'Shimmer', 'shimmer_std-BG', 'Female', 'bg-BG', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(583, 'Alloy', 'alloy_std-ca-ES', 'Male', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(584, 'Echo', 'echo_std-ca-ES', 'Male', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(585, 'Fable', 'fable_std-ca-ES', 'Male', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(586, 'Onyx', 'onyx_std-ca-ES', 'Male', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(587, 'Nova', 'nova_std-ca-ES', 'Female', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(588, 'Shimmer', 'shimmer_std-ca-ES', 'Female', 'ca-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(589, 'Alloy', 'alloy_std-CN', 'Male', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(590, 'Echo', 'echo_std-CN', 'Male', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(591, 'Fable', 'fable_std-CN', 'Male', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(592, 'Onyx', 'onyx_std-CN', 'Male', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(593, 'Nova', 'nova_std-CN', 'Female', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(594, 'Shimmer', 'shimmer_std-CN', 'Female', 'cmn-CN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(595, 'Alloy', 'alloy_std-HR', 'Male', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(596, 'Echo', 'echo_std-HR', 'Male', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(597, 'Fable', 'fable_std-HR', 'Male', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(598, 'Onyx', 'onyx_std-HR', 'Male', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(599, 'Nova', 'nova_std-HR', 'Female', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(600, 'Shimmer', 'shimmer_std-HR', 'Female', 'hr-HR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(601, 'Alloy', 'alloy_std-CZ', 'Male', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(602, 'Echo', 'echo_std-CZ', 'Male', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(603, 'Fable', 'fable_std-CZ', 'Male', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(604, 'Onyx', 'onyx_std-CZ', 'Male', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(605, 'Nova', 'nova_std-CZ', 'Female', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(606, 'Shimmer', 'shimmer_std-CZ', 'Female', 'cs-CZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(607, 'Alloy', 'alloy_std-DK', 'Male', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(608, 'Echo', 'echo_std-DK', 'Male', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(609, 'Fable', 'fable_std-DK', 'Male', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(610, 'Onyx', 'onyx_std-DK', 'Male', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(611, 'Nova', 'nova_std-DK', 'Female', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(612, 'Shimmer', 'shimmer_std-DK', 'Female', 'da-DK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(613, 'Alloy', 'alloy_std-NL', 'Male', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(614, 'Echo', 'echo_std-NL', 'Male', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(615, 'Fable', 'fable_std-NL', 'Male', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(616, 'Onyx', 'onyx_std-NL', 'Male', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(617, 'Nova', 'nova_std-NL', 'Female', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(618, 'Shimmer', 'shimmer_std-NL', 'Female', 'nl-NL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(619, 'Alloy', 'alloy_std-US', 'Male', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(621, 'Echo', 'echo_std-US', 'Male', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(622, 'Fable', 'fable_std-US', 'Male', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(623, 'Onyx', 'onyx_std-US', 'Male', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(624, 'Nova', 'nova_std-US', 'Female', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(625, 'Shimmer', 'shimmer_std-US', 'Female', 'en-US', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(626, 'Alloy', 'alloy_std-GB', 'Male', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(627, 'Echo', 'echo_std-GB', 'Male', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(628, 'Fable', 'fable_std-GB', 'Male', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(629, 'Onyx', 'onyx_std-GB', 'Male', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(631, 'Nova', 'nova_std-GB', 'Female', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(632, 'Shimmer', 'shimmer_std-GB', 'Female', 'en-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(633, 'Alloy', 'alloy_std-EE', 'Male', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(634, 'Echo', 'echo_std-EE', 'Male', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(635, 'Fable', 'fable_std-EE', 'Male', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(636, 'Onyx', 'onyx_std-EE', 'Male', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(637, 'Nova', 'nova_std-EE', 'Female', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(638, 'Shimmer', 'shimmer_std-EE', 'Female', 'et-EE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(639, 'Alloy', 'alloy_std-FI', 'Male', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(640, 'Echo', 'echo_std-FI', 'Male', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(641, 'Fable', 'fable_std-FI', 'Male', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(642, 'Onyx', 'onyx_std-FI', 'Male', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(643, 'Nova', 'nova_std-FI', 'Female', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(644, 'Shimmer', 'shimmer_std-FI', 'Female', 'fi-FI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(645, 'Alloy', 'alloy_std-FR', 'Male', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(646, 'Echo', 'echo_std-FR', 'Male', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(647, 'Fable', 'fable_std-FR', 'Male', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(648, 'Onyx', 'onyx_std-FR', 'Male', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(649, 'Nova', 'nova_std-FR', 'Female', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(650, 'Shimmer', 'shimmer_std-FR', 'Female', 'fr-FR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(652, 'Echo', 'echo_std-gl-ES', 'Male', 'gl-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(653, 'Fable', 'fable_std-gl-ES', 'Male', 'gl-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(654, 'Onyx', 'onyx_std-gl-ES', 'Male', 'gl-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(655, 'Nova', 'nova_std-gl-ES', 'Female', 'gl-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(656, 'Shimmer', 'shimmer_std-gl-ES', 'Female', 'gl-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(657, 'Alloy', 'alloy_std-DE', 'Male', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(658, 'Echo', 'echo_std-DE', 'Male', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(659, 'Fable', 'fable_std-DE', 'Male', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(660, 'Onyx', 'onyx_std-DE', 'Male', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(661, 'Nova', 'nova_std-DE', 'Female', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(662, 'Shimmer', 'shimmer_std-DE', 'Female', 'de-DE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(663, 'Alloy', 'alloy_std-GR', 'Male', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(664, 'Echo', 'echo_std-GR', 'Male', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(665, 'Fable', 'fable_std-GR', 'Male', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(666, 'Onyx', 'onyx_std-GR', 'Male', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(667, 'Nova', 'nova_std-GR', 'Female', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(668, 'Shimmer', 'shimmer_std-GR', 'Female', 'el-GR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(669, 'Alloy', 'alloy_std-IL', 'Male', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(670, 'Echo', 'echo_std-IL', 'Male', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(671, 'Fable', 'fable_std-IL', 'Male', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(672, 'Onyx', 'onyx_std-IL', 'Male', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(673, 'Nova', 'nova_std-IL', 'Female', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(674, 'Shimmer', 'shimmer_std-IL', 'Female', 'he-IL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(675, 'Alloy', 'alloy_std-IN', 'Male', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(676, 'Echo', 'echo_std-IN', 'Male', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(677, 'Fable', 'fable_std-IN', 'Male', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(678, 'Onyx', 'onyx_std-IN', 'Male', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(679, 'Nova', 'nova_std-IN', 'Female', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(680, 'Shimmer', 'shimmer_std-IN', 'Female', 'hi-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(681, 'Alloy', 'alloy_std-HU', 'Male', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(682, 'Echo', 'echo_std-HU', 'Male', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(683, 'Fable', 'fable_std-HU', 'Male', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(684, 'Onyx', 'onyx_std-HU', 'Male', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(685, 'Nova', 'nova_std-HU', 'Female', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(686, 'Shimmer', 'shimmer_std-HU', 'Female', 'hu-HU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(689, 'Alloy', 'alloy_std-IS', 'Male', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(690, 'Echo', 'echo_std-IS', 'Male', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(691, 'Fable', 'fable_std-IS', 'Male', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(692, 'Onyx', 'onyx_std-IS', 'Male', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(693, 'Nova', 'nova_std-IS', 'Female', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(694, 'Shimmer', 'shimmer_std-IS', 'Female', 'is-IS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(695, 'Alloy', 'alloy_std-ID', 'Male', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(696, 'Echo', 'echo_std-ID', 'Male', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(697, 'Fable', 'fable_std-ID', 'Male', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(698, 'Onyx', 'onyx_std-ID', 'Male', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(699, 'Nova', 'nova_std-ID', 'Female', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(701, 'Shimmer', 'shimmer_std-ID', 'Female', 'id-ID', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(702, 'Alloy', 'alloy_std-IT', 'Male', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(703, 'Echo', 'echo_std-IT', 'Male', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(704, 'Fable', 'fable_std-IT', 'Male', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(705, 'Onyx', 'onyx_std-IT', 'Male', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(706, 'Nova', 'nova_std-IT', 'Female', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(707, 'Shimmer', 'shimmer_std-IT', 'Female', 'it-IT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(708, 'Alloy', 'alloy_std-JP', 'Male', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(709, 'Echo', 'echo_std-JP', 'Male', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(710, 'Fable', 'fable_std-JP', 'Male', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(712, 'Onyx', 'onyx_std-JP', 'Male', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(713, 'Nova', 'nova_std-JP', 'Female', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(714, 'Shimmer', 'shimmer_std-JP', 'Female', 'ja-JP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(715, 'Alloy', 'alloy_std-kn-IN', 'Male', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(716, 'Echo', 'echo_std-kn-IN', 'Male', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(717, 'Fable', 'fable_std-kn-IN', 'Male', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(718, 'Onyx', 'onyx_std-kn-IN', 'Male', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(719, 'Nova', 'nova_std-kn-IN', 'Female', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(720, 'Shimmer', 'shimmer_std-kn-IN', 'Female', 'kn-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(721, 'Alloy', 'alloy_std-KZ', 'Male', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(722, 'Echo', 'echo_std-KZ', 'Male', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(723, 'Fable', 'fable_std-KZ', 'Male', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(724, 'Onyx', 'onyx_std-KZ', 'Male', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(725, 'Nova', 'nova_std-KZ', 'Female', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(726, 'Shimmer', 'shimmer_std-KZ', 'Female', 'kk-KZ', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(727, 'Alloy', 'alloy_std-KR', 'Male', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(728, 'Echo', 'echo_std-KR', 'Male', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(729, 'Fable', 'fable_std-KR', 'Male', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(730, 'Onyx', 'onyx_std-KR', 'Male', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(731, 'Nova', 'nova_std-KR', 'Female', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(732, 'Shimmer', 'shimmer_std-KR', 'Female', 'ko-KR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(733, 'Alloy', 'alloy_std-LV', 'Male', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(734, 'Echo', 'echo_std-LV', 'Male', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(735, 'Fable', 'fable_std-LV', 'Male', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(736, 'Onyx', 'onyx_std-LV', 'Male', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(737, 'Nova', 'nova_std-LV', 'Female', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(738, 'Shimmer', 'shimmer_std-LV', 'Female', 'lv-LV', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(739, 'Alloy', 'alloy_std-LT', 'Male', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(740, 'Echo', 'echo_std-LT', 'Male', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(741, 'Fable', 'fable_std-LT', 'Male', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(742, 'Onyx', 'onyx_std-LT', 'Male', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(743, 'Nova', 'nova_std-LT', 'Female', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(744, 'Shimmer', 'shimmer_std-LT', 'Female', 'lt-LT', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(745, 'Alloy', 'alloy_std-MK', 'Male', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(746, 'Echo', 'echo_std-MK', 'Male', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(747, 'Fable', 'fable_std-MK', 'Male', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(748, 'Onyx', 'onyx_std-MK', 'Male', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(749, 'Nova', 'nova_std-MK', 'Female', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(750, 'Shimmer', 'shimmer_std-MK', 'Female', 'mk-MK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-max.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(751, 'Alloy', 'alloy_std-mr-IN', 'Male', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(752, 'Echo', 'echo_std-mr-IN', 'Male', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(753, 'Fable', 'fable_std-mr-IN', 'Male', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(754, 'Onyx', 'onyx_std-mr-IN', 'Male', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(756, 'Nova', 'nova_std-mr-IN', 'Female', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(757, 'Shimmer', 'shimmer_std-mr-IN', 'Female', 'mr-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(758, 'Alloy', 'alloy_std-NP', 'Male', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(759, 'Echo', 'echo_std-NP', 'Male', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(760, 'Fable', 'fable_std-NP', 'Male', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(761, 'Onyx', 'onyx_std-NP', 'Male', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(762, 'Nova', 'nova_std-NP', 'Female', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(763, 'Shimmer', 'shimmer_std-NP', 'Female', 'ne-NP', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(764, 'Alloy', 'alloy_std-NO', 'Male', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(765, 'Echo', 'echo_std-NO', 'Male', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(766, 'Fable', 'fable_std-NO', 'Male', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(767, 'Onyx', 'onyx_std-NO', 'Male', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(768, 'Nova', 'nova_std-NO', 'Female', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(769, 'Shimmer', 'shimmer_std-NO', 'Female', 'nb-NO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(770, 'Alloy', 'alloy_std-IR', 'Male', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(771, 'Echo', 'echo_std-IR', 'Male', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(772, 'Fable', 'fable_std-IR', 'Male', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(773, 'Onyx', 'onyx_std-IR', 'Male', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(774, 'Nova', 'nova_std-IR', 'Female', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(775, 'Shimmer', 'shimmer_std-IR', 'Female', 'fa-IR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(776, 'Alloy', 'alloy_std-PL', 'Male', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(777, 'Echo', 'echo_std-PL', 'Male', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(778, 'Fable', 'fable_std-PL', 'Male', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(779, 'Onyx', 'onyx_std-PL', 'Male', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(780, 'Nova', 'nova_std-PL', 'Female', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(781, 'Shimmer', 'shimmer_std-PL', 'Female', 'pl-PL', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(782, 'Alloy', 'alloy_std-BR', 'Male', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(783, 'Echo', 'echo_std-BR', 'Male', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(784, 'Fable', 'fable_std-BR', 'Male', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(785, 'Onyx', 'onyx_std-BR', 'Male', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(786, 'Nova', 'nova_std-BR', 'Female', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(787, 'Shimmer', 'shimmer_std-BR', 'Female', 'pt-BR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(788, 'Alloy', 'alloy_std-RO', 'Male', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(789, 'Echo', 'echo_std-RO', 'Male', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(790, 'Fable', 'fable_std-RO', 'Male', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(791, 'Onyx', 'onyx_std-RO', 'Male', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(792, 'Nova', 'nova_std-RO', 'Female', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(793, 'Shimmer', 'shimmer_std-RO', 'Female', 'ro-RO', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(794, 'Alloy', 'alloy_std-RU', 'Male', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(795, 'Echo', 'echo_std-RU', 'Male', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(796, 'Fable', 'fable_std-RU', 'Male', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(797, 'Onyx', 'onyx_std-RU', 'Male', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(798, 'Nova', 'nova_std-RU', 'Female', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(799, 'Shimmer', 'shimmer_std-RU', 'Female', 'ru-RU', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(800, 'Alloy', 'alloy_std-RS', 'Male', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(801, 'Echo', 'echo_std-RS', 'Male', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(802, 'Fable', 'fable_std-RS', 'Male', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(803, 'Onyx', 'onyx_std-RS', 'Male', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(804, 'Nova', 'nova_std-RS', 'Female', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(805, 'Shimmer', 'shimmer_std-RS', 'Female', 'sr-RS', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(806, 'Alloy', 'alloy_std-SK', 'Male', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(807, 'Echo', 'echo_std-SK', 'Male', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(808, 'Fable', 'fable_std-SK', 'Male', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(809, 'Onyx', 'onyx_std-SK', 'Male', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(810, 'Nova', 'nova_std-SK', 'Female', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(811, 'Shimmer', 'shimmer_std-SK', 'Female', 'sk-SK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(812, 'Alloy', 'alloy_std-SI', 'Male', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(813, 'Echo', 'echo_std-SI', 'Male', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(814, 'Fable', 'fable_std-SI', 'Male', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(815, 'Onyx', 'onyx_std-SI', 'Male', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(816, 'Nova', 'nova_std-SI', 'Female', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(817, 'Shimmer', 'shimmer_std-SI', 'Female', 'sl-SI', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(818, 'Alloy', 'alloy_std-ES', 'Male', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(819, 'Echo', 'echo_std-ES', 'Male', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(820, 'Fable', 'fable_std-ES', 'Male', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(821, 'Onyx', 'onyx_std-ES', 'Male', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(822, 'Nova', 'nova_std-ES', 'Female', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(823, 'Shimmer', 'shimmer_std-ES', 'Female', 'es-ES', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(824, 'Alloy', 'alloy_std-KE', 'Male', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(825, 'Echo', 'echo_std-KE', 'Male', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(826, 'Fable', 'fable_std-KE', 'Male', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(827, 'Onyx', 'onyx_std-KE', 'Male', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(828, 'Nova', 'nova_std-KE', 'Female', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(829, 'Shimmer', 'shimmer_std-KE', 'Female', 'sw-KE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(830, 'Alloy', 'alloy_std-SE', 'Male', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(831, 'Echo', 'echo_std-SE', 'Male', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(832, 'Fable', 'fable_std-SE', 'Male', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(833, 'Onyx', 'onyx_std-SE', 'Male', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(834, 'Nova', 'nova_std-SE', 'Female', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(835, 'Shimmer', 'shimmer_std-SE', 'Female', 'sv-SE', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(836, 'Alloy', 'alloy_std-ta-IN', 'Male', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(837, 'Echo', 'echo_std-ta-IN', 'Male', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(838, 'Fable', 'fable_std-ta-IN', 'Male', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(839, 'Onyx', 'onyx_std-ta-IN', 'Male', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(840, 'Nova', 'nova_std-ta-IN', 'Female', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(841, 'Shimmer', 'shimmer_std-ta-IN', 'Female', 'ta-IN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(842, 'Alloy', 'alloy_std-TH', 'Male', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(843, 'Echo', 'echo_std-TH', 'Male', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(844, 'Fable', 'fable_std-TH', 'Male', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(845, 'Onyx', 'onyx_std-TH', 'Male', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(846, 'Nova', 'nova_std-TH', 'Female', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(847, 'Shimmer', 'shimmer_std-TH', 'Female', 'th-TH', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(848, 'Alloy', 'alloy_std-TR', 'Male', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(849, 'Echo', 'echo_std-TR', 'Male', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(850, 'Fable', 'fable_std-TR', 'Male', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(851, 'Onyx', 'onyx_std-TR', 'Male', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(852, 'Nova', 'nova_std-TR', 'Female', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(853, 'Shimmer', 'shimmer_std-TR', 'Female', 'tr-TR', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(854, 'Alloy', 'alloy_std-UA', 'Male', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(855, 'Echo', 'echo_std-UA', 'Male', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(856, 'Fable', 'fable_std-UA', 'Male', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(857, 'Onyx', 'onyx_std-UA', 'Male', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(858, 'Nova', 'nova_std-UA', 'Female', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(859, 'Shimmer', 'shimmer_std-UA', 'Female', 'uk-UA', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(860, 'Alloy', 'alloy_std-PK', 'Male', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(861, 'Echo', 'echo_std-PK', 'Male', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(862, 'Fable', 'fable_std-PK', 'Male', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(863, 'Onyx', 'onyx_std-PK', 'Male', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(864, 'Nova', 'nova_std-PK', 'Female', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(865, 'Shimmer', 'shimmer_std-PK', 'Female', 'ur-PK', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(866, 'Alloy', 'alloy_std-VN', 'Male', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(867, 'Echo', 'echo_std-VN', 'Male', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(868, 'Fable', 'fable_std-VN', 'Male', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(869, 'Onyx', 'onyx_std-VN', 'Male', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(870, 'Nova', 'nova_std-VN', 'Female', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(871, 'Shimmer', 'shimmer_std-VN', 'Female', 'vi-VN', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(872, 'Alloy', 'alloy_std-cy-GB', 'Male', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'standard', '/voices/openai/alloy-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(873, 'Echo', 'echo_std-cy-GB', 'Male', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'standard', '/voices/openai/echo-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(874, 'Fable', 'fable_std-cy-GB', 'Male', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'standard', '/voices/openai/fable-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(875, 'Onyx', 'onyx_std-cy-GB', 'Male', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'standard', '/voices/openai/onyx-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(876, 'Nova', 'nova_std-cy-GB', 'Female', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'standard', '/voices/openai/nova-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(877, 'Shimmer', 'shimmer_std-cy-GB', 'Female', 'cy-GB', 'openai_std', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'standard', '/voices/openai/shimmer-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(878, 'Alloy', 'alloy_ZA', 'Male', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(879, 'Echo', 'echo_ZA', 'Male', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(880, 'Fable', 'fable_ZA', 'Male', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(881, 'Onyx', 'onyx_ZA', 'Male', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(882, 'Nova', 'nova_ZA', 'Female', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(883, 'Shimmer', 'shimmer_ZA', 'Female', 'af-ZA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-afr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(884, 'Alloy', 'alloy_XA', 'Male', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(885, 'Echo', 'echo_XA', 'Male', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(886, 'Fable', 'fable_XA', 'Male', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(887, 'Onyx', 'onyx_XA', 'Male', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(888, 'Nova', 'nova_XA', 'Female', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(889, 'Shimmer', 'shimmer_XA', 'Female', 'ar-XA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ara.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(890, 'Alloy', 'alloy_AM', 'Male', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(891, 'Echo', 'echo_AM', 'Male', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(892, 'Fable', 'fable_AM', 'Male', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(893, 'Onyx', 'onyx_AM', 'Male', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(894, 'Nova', 'nova_AM', 'Female', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(895, 'Shimmer', 'shimmer_AM', 'Female', 'hy-AM', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-arm.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(896, 'Alloy', 'alloy_AZ', 'Male', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(897, 'Echo', 'echo_AZ', 'Male', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(898, 'Fable', 'fable_AZ', 'Male', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(899, 'Onyx', 'onyx_AZ', 'Male', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(900, 'Nova', 'nova_AZ', 'Female', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(901, 'Shimmer', 'shimmer_AZ', 'Female', 'az-AZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-aze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(902, 'Alloy', 'alloy_BY', 'Male', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(903, 'Echo', 'echo_BY', 'Male', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(904, 'Fable', 'fable_BY', 'Male', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(905, 'Onyx', 'onyx_BY', 'Male', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(906, 'Nova', 'nova_BY', 'Female', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(907, 'Shimmer', 'shimmer_BY', 'Female', 'be-BY', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-bel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(908, 'Alloy', 'alloy_BA', 'Male', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(909, 'Echo', 'echo_BA', 'Male', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(910, 'Fable', 'fable_BA', 'Male', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(911, 'Onyx', 'onyx_BA', 'Male', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(912, 'Nova', 'nova_BA', 'Female', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(913, 'Shimmer', 'shimmer_BA', 'Female', 'bs-BA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-bos.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(914, 'Alloy', 'alloy_BG', 'Male', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(915, 'Echo', 'echo_BG', 'Male', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(916, 'Fable', 'fable_BG', 'Male', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(917, 'Onyx', 'onyx_BG', 'Male', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(918, 'Nova', 'nova_BG', 'Female', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(919, 'Shimmer', 'shimmer_BG', 'Female', 'bg-BG', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-bul.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(920, 'Alloy', 'alloy_ca-ES', 'Male', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(921, 'Echo', 'echo_ca-ES', 'Male', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(922, 'Fable', 'fable_ca-ES', 'Male', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(923, 'Onyx', 'onyx_ca-ES', 'Male', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(924, 'Nova', 'nova_ca-ES', 'Female', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(925, 'Shimmer', 'shimmer_ca-ES', 'Female', 'ca-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-cat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(926, 'Alloy', 'alloy_CN', 'Male', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(927, 'Echo', 'echo_CN', 'Male', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(928, 'Fable', 'fable_CN', 'Male', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(929, 'Onyx', 'onyx_CN', 'Male', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(930, 'Nova', 'nova_CN', 'Female', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(931, 'Shimmer', 'shimmer_CN', 'Female', 'cmn-CN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-chi.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(932, 'Alloy', 'alloy_HR', 'Male', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(933, 'Echo', 'echo_HR', 'Male', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(934, 'Fable', 'fable_HR', 'Male', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(935, 'Onyx', 'onyx_HR', 'Male', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(936, 'Nova', 'nova_HR', 'Female', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(937, 'Shimmer', 'shimmer_HR', 'Female', 'hr-HR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-cro.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(938, 'Alloy', 'alloy_CZ', 'Male', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(939, 'Echo', 'echo_CZ', 'Male', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(940, 'Fable', 'fable_CZ', 'Male', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(941, 'Onyx', 'onyx_CZ', 'Male', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(942, 'Nova', 'nova_CZ', 'Female', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(943, 'Shimmer', 'shimmer_CZ', 'Female', 'cs-CZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-cze.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(944, 'Alloy', 'alloy_DK', 'Male', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(945, 'Echo', 'echo_DK', 'Male', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(946, 'Fable', 'fable_DK', 'Male', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(947, 'Onyx', 'onyx_DK', 'Male', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(948, 'Nova', 'nova_DK', 'Female', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(949, 'Shimmer', 'shimmer_DK', 'Female', 'da-DK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-dan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(950, 'Alloy', 'alloy_NL', 'Male', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(951, 'Echo', 'echo_NL', 'Male', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(952, 'Fable', 'fable_NL', 'Male', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(953, 'Onyx', 'onyx_NL', 'Male', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(954, 'Nova', 'nova_NL', 'Female', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(955, 'Shimmer', 'shimmer_NL', 'Female', 'nl-NL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(956, 'Alloy', 'alloy_US', 'Male', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(957, 'Echo', 'echo_US', 'Male', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(958, 'Fable', 'fable_US', 'Male', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(959, 'Onyx', 'onyx_US', 'Male', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(960, 'Nova', 'nova_US', 'Female', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(961, 'Shimmer', 'shimmer_US', 'Female', 'en-US', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(962, 'Alloy', 'alloy_GB', 'Male', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(963, 'Echo', 'echo_GB', 'Male', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(964, 'Fable', 'fable_GB', 'Male', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(965, 'Onyx', 'onyx_GB', 'Male', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(966, 'Nova', 'nova_GB', 'Female', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(967, 'Shimmer', 'shimmer_GB', 'Female', 'en-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-us.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(968, 'Alloy', 'alloy_EE', 'Male', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(969, 'Echo', 'echo_EE', 'Male', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(970, 'Fable', 'fable_EE', 'Male', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(971, 'Onyx', 'onyx_EE', 'Male', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(972, 'Nova', 'nova_EE', 'Female', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(973, 'Shimmer', 'shimmer_EE', 'Female', 'et-EE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-est.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(974, 'Alloy', 'alloy_FI', 'Male', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(975, 'Echo', 'echo_FI', 'Male', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(976, 'Fable', 'fable_FI', 'Male', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(977, 'Onyx', 'onyx_FI', 'Male', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(978, 'Nova', 'nova_FI', 'Female', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(979, 'Shimmer', 'shimmer_FI', 'Female', 'fi-FI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-fin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(980, 'Alloy', 'alloy_FR', 'Male', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(981, 'Echo', 'echo_FR', 'Male', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(982, 'Fable', 'fable_FR', 'Male', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(983, 'Onyx', 'onyx_FR', 'Male', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(984, 'Nova', 'nova_FR', 'Female', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(985, 'Shimmer', 'shimmer_FR', 'Female', 'fr-FR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-fra.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(986, 'Alloy', 'alloy_gl-ES', 'Male', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(987, 'Echo', 'echo_gl-ES', 'Male', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(988, 'Fable', 'fable_gl-ES', 'Male', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(989, 'Onyx', 'onyx_gl-ES', 'Male', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(990, 'Nova', 'nova_gl-ES', 'Female', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(991, 'Shimmer', 'shimmer_gl-ES', 'Female', 'gl-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-gal.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(992, 'Alloy', 'alloy_DE', 'Male', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(993, 'Echo', 'echo_DE', 'Male', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(994, 'Fable', 'fable_DE', 'Male', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(995, 'Onyx', 'onyx_DE', 'Male', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(996, 'Nova', 'nova_DE', 'Female', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(997, 'Shimmer', 'shimmer_DE', 'Female', 'de-DE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ger.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(998, 'Alloy', 'alloy_GR', 'Male', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(999, 'Echo', 'echo_GR', 'Male', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1000, 'Fable', 'fable_GR', 'Male', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1001, 'Onyx', 'onyx_GR', 'Male', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1002, 'Nova', 'nova_GR', 'Female', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1003, 'Shimmer', 'shimmer_GR', 'Female', 'el-GR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-gre.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1004, 'Alloy', 'alloy_IL', 'Male', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1005, 'Echo', 'echo_IL', 'Male', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1006, 'Fable', 'fable_IL', 'Male', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1007, 'Onyx', 'onyx_IL', 'Male', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1008, 'Nova', 'nova_IL', 'Female', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1009, 'Shimmer', 'shimmer_IL', 'Female', 'he-IL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1010, 'Alloy', 'alloy_IN', 'Male', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1011, 'Echo', 'echo_IN', 'Male', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1012, 'Fable', 'fable_IN', 'Male', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1013, 'Onyx', 'onyx_IN', 'Male', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1014, 'Nova', 'nova_IN', 'Female', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1015, 'Shimmer', 'shimmer_IN', 'Female', 'hi-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-hin.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1016, 'Alloy', 'alloy_HU', 'Male', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1017, 'Echo', 'echo_HU', 'Male', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1018, 'Fable', 'fable_HU', 'Male', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1019, 'Onyx', 'onyx_HU', 'Male', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1020, 'Nova', 'nova_HU', 'Female', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1021, 'Shimmer', 'shimmer_HU', 'Female', 'hu-HU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-hun.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1022, 'Alloy', 'alloy_IS', 'Male', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1023, 'Echo', 'echo_IS', 'Male', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1024, 'Fable', 'fable_IS', 'Male', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1025, 'Onyx', 'onyx_IS', 'Male', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1026, 'Nova', 'nova_IS', 'Female', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1027, 'Shimmer', 'shimmer_IS', 'Female', 'is-IS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ice.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1028, 'Alloy', 'alloy_ID', 'Male', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1029, 'Echo', 'echo_ID', 'Male', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1030, 'Fable', 'fable_ID', 'Male', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1031, 'Onyx', 'onyx_ID', 'Male', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1032, 'Nova', 'nova_ID', 'Female', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1033, 'Shimmer', 'shimmer_ID', 'Female', 'id-ID', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ind.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1034, 'Alloy', 'alloy_IT', 'Male', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1035, 'Echo', 'echo_IT', 'Male', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1036, 'Fable', 'fable_IT', 'Male', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1037, 'Onyx', 'onyx_IT', 'Male', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1038, 'Nova', 'nova_IT', 'Female', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1039, 'Shimmer', 'shimmer_IT', 'Female', 'it-IT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ita.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1040, 'Alloy', 'alloy_JP', 'Male', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1041, 'Echo', 'echo_JP', 'Male', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1042, 'Fable', 'fable_JP', 'Male', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1043, 'Onyx', 'onyx_JP', 'Male', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1044, 'Nova', 'nova_JP', 'Female', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1045, 'Shimmer', 'shimmer_JP', 'Female', 'ja-JP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-jap.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1046, 'Alloy', 'alloy_kn-IN', 'Male', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1047, 'Echo', 'echo_kn-IN', 'Male', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1048, 'Fable', 'fable_kn-IN', 'Male', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1049, 'Onyx', 'onyx_kn-IN', 'Male', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1050, 'Nova', 'nova_kn-IN', 'Female', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1051, 'Shimmer', 'shimmer_kn-IN', 'Female', 'kn-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1052, 'Alloy', 'alloy_KZ', 'Male', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1053, 'Echo', 'echo_KZ', 'Male', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1054, 'Fable', 'fable_KZ', 'Male', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-kan.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1055, 'Onyx', 'onyx_KZ', 'Male', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1056, 'Nova', 'nova_KZ', 'Female', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1057, 'Shimmer', 'shimmer_KZ', 'Female', 'kk-KZ', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-kaz.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1058, 'Alloy', 'alloy_KR', 'Male', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1059, 'Echo', 'echo_KR', 'Male', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1060, 'Fable', 'fable_KR', 'Male', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1061, 'Onyx', 'onyx_KR', 'Male', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1062, 'Nova', 'nova_KR', 'Female', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1063, 'Shimmer', 'shimmer_KR', 'Female', 'ko-KR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-kor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1064, 'Alloy', 'alloy_LV', 'Male', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1065, 'Echo', 'echo_LV', 'Male', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1066, 'Fable', 'fable_LV', 'Male', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1067, 'Onyx', 'onyx_LV', 'Male', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1068, 'Nova', 'nova_LV', 'Female', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1069, 'Shimmer', 'shimmer_LV', 'Female', 'lv-LV', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-lat.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1070, 'Alloy', 'alloy_LT', 'Male', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1071, 'Echo', 'echo_LT', 'Male', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1072, 'Fable', 'fable_LT', 'Male', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1073, 'Onyx', 'onyx_LT', 'Male', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1074, 'Nova', 'nova_LT', 'Female', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1075, 'Shimmer', 'shimmer_LT', 'Female', 'lt-LT', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-lit.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1076, 'Alloy', 'alloy_MK', 'Male', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1077, 'Echo', 'echo_MK', 'Male', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1078, 'Fable', 'fable_MK', 'Male', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1079, 'Onyx', 'onyx_MK', 'Male', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1080, 'Nova', 'nova_MK', 'Female', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-mac.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1081, 'Shimmer', 'shimmer_MK', 'Female', 'mk-MK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-max.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1082, 'Alloy', 'alloy_mr-IN', 'Male', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1083, 'Echo', 'echo_mr-IN', 'Male', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1084, 'Fable', 'fable_mr-IN', 'Male', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1085, 'Onyx', 'onyx_mr-IN', 'Male', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1086, 'Nova', 'nova_mr-IN', 'Female', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1087, 'Shimmer', 'shimmer_mr-IN', 'Female', 'mr-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-mar.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1088, 'Alloy', 'alloy_NP', 'Male', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1089, 'Echo', 'echo_NP', 'Male', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1090, 'Fable', 'fable_NP', 'Male', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1091, 'Onyx', 'onyx_NP', 'Male', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1092, 'Nova', 'nova_NP', 'Female', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-nep.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1093, 'Shimmer', 'shimmer_NP', 'Female', 'ne-NP', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-net.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1094, 'Alloy', 'alloy_NO', 'Male', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1095, 'Echo', 'echo_NO', 'Male', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1096, 'Fable', 'fable_NO', 'Male', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1097, 'Onyx', 'onyx_NO', 'Male', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1098, 'Nova', 'nova_NO', 'Female', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1099, 'Shimmer', 'shimmer_NO', 'Female', 'nb-NO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-nor.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1100, 'Alloy', 'alloy_IR', 'Male', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1101, 'Echo', 'echo_IR', 'Male', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1102, 'Fable', 'fable_IR', 'Male', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1103, 'Onyx', 'onyx_IR', 'Male', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1104, 'Nova', 'nova_IR', 'Female', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1105, 'Shimmer', 'shimmer_IR', 'Female', 'fa-IR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-per.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1106, 'Alloy', 'alloy_PL', 'Male', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1107, 'Echo', 'echo_PL', 'Male', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1108, 'Fable', 'fable_PL', 'Male', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1109, 'Onyx', 'onyx_PL', 'Male', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1110, 'Nova', 'nova_PL', 'Female', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1111, 'Shimmer', 'shimmer_PL', 'Female', 'pl-PL', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-pol.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1112, 'Alloy', 'alloy_BR', 'Male', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1113, 'Echo', 'echo_BR', 'Male', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1114, 'Fable', 'fable_BR', 'Male', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1115, 'Onyx', 'onyx_BR', 'Male', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1116, 'Nova', 'nova_BR', 'Female', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1117, 'Shimmer', 'shimmer_BR', 'Female', 'pt-BR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-por.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1118, 'Alloy', 'alloy_RO', 'Male', 'ro-RO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1119, 'Echo', 'echo_RO', 'Male', 'ro-RO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1120, 'Fable', 'fable_RO', 'Male', 'ro-RO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1121, 'Nova', 'nova_RO', 'Female', 'ro-RO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1122, 'Shimmer', 'shimmer_RO', 'Female', 'ro-RO', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-rom.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1123, 'Alloy', 'alloy_RU', 'Male', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1124, 'Echo', 'echo_RU', 'Male', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1125, 'Fable', 'fable_RU', 'Male', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1126, 'Onyx', 'onyx_RU', 'Male', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1127, 'Nova', 'nova_RU', 'Female', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1128, 'Shimmer', 'shimmer_RU', 'Female', 'ru-RU', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-rus.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1129, 'Alloy', 'alloy_RS', 'Male', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1130, 'Echo', 'echo_RS', 'Male', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1131, 'Fable', 'fable_RS', 'Male', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1132, 'Onyx', 'onyx_RS', 'Male', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1133, 'Nova', 'nova_RS', 'Female', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1134, 'Shimmer', 'shimmer_RS', 'Female', 'sr-RS', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ser.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1135, 'Alloy', 'alloy_SK', 'Male', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1136, 'Echo', 'echo_SK', 'Male', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1137, 'Fable', 'fable_SK', 'Male', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1138, 'Onyx', 'onyx_SK', 'Male', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1139, 'Nova', 'nova_SK', 'Female', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1140, 'Shimmer', 'shimmer_SK', 'Female', 'sk-SK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-slo.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1141, 'Alloy', 'alloy_SI', 'Male', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1142, 'Echo', 'echo_SI', 'Male', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1143, 'Fable', 'fable_SI', 'Male', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1144, 'Onyx', 'onyx_SI', 'Male', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1145, 'Nova', 'nova_SI', 'Female', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1146, 'Shimmer', 'shimmer_SI', 'Female', 'sl-SI', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1147, 'Alloy', 'alloy_ES', 'Male', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1148, 'Echo', 'echo_ES', 'Male', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1149, 'Fable', 'fable_ES', 'Male', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1150, 'Onyx', 'onyx_ES', 'Male', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1151, 'Nova', 'nova_ES', 'Female', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1152, 'Shimmer', 'shimmer_ES', 'Female', 'es-ES', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-spa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1153, 'Alloy', 'alloy_KE', 'Male', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1154, 'Echo', 'echo_KE', 'Male', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1155, 'Fable', 'fable_KE', 'Male', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1156, 'Onyx', 'onyx_KE', 'Male', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1157, 'Nova', 'nova_KE', 'Female', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1158, 'Shimmer', 'shimmer_KE', 'Female', 'sw-KE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-swa.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1159, 'Alloy', 'alloy_SE', 'Male', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1160, 'Echo', 'echo_SE', 'Male', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1161, 'Fable', 'fable_SE', 'Male', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1162, 'Onyx', 'onyx_SE', 'Male', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1163, 'Nova', 'nova_SE', 'Female', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1164, 'Shimmer', 'shimmer_SE', 'Female', 'sv-SE', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-swe.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1165, 'Alloy', 'alloy_ta-IN', 'Male', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1166, 'Echo', 'echo_ta-IN', 'Male', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1167, 'Fable', 'fable_ta-IN', 'Male', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1168, 'Onyx', 'onyx_ta-IN', 'Male', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1169, 'Nova', 'nova_ta-IN', 'Female', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1170, 'Shimmer', 'shimmer_ta-IN', 'Female', 'ta-IN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1171, 'Alloy', 'alloy_TH', 'Male', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1172, 'Echo', 'echo_TH', 'Male', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1173, 'Fable', 'fable_TH', 'Male', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1174, 'Onyx', 'onyx_TH', 'Male', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1175, 'Nova', 'nova_TH', 'Female', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1176, 'Shimmer', 'shimmer_TH', 'Female', 'th-TH', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-tha.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1177, 'Alloy', 'alloy_TR', 'Male', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1178, 'Echo', 'echo_TR', 'Male', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1179, 'Fable', 'fable_TR', 'Male', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1180, 'Onyx', 'onyx_TR', 'Male', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1181, 'Nova', 'nova_TR', 'Female', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1182, 'Shimmer', 'shimmer_TR', 'Female', 'tr-TR', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-tur.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1183, 'Alloy', 'alloy_UA', 'Male', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1184, 'Echo', 'echo_UA', 'Male', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1185, 'Fable', 'fable_UA', 'Male', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1186, 'Onyx', 'onyx_UA', 'Male', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1187, 'Nova', 'nova_UA', 'Female', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1188, 'Shimmer', 'shimmer_UA', 'Female', 'uk-UA', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-ukr.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1189, 'Alloy', 'alloy_PK', 'Male', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1190, 'Echo', 'echo_PK', 'Male', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1191, 'Fable', 'fable_PK', 'Male', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1192, 'Onyx', 'onyx_PK', 'Male', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1193, 'Nova', 'nova_PK', 'Female', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1194, 'Shimmer', 'shimmer_PK', 'Female', 'ur-PK', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-pak.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1195, 'Alloy', 'alloy_VN', 'Male', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1196, 'Echo', 'echo_VN', 'Male', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1197, 'Fable', 'fable_VN', 'Male', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1198, 'Onyx', 'onyx_VN', 'Male', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1199, 'Nova', 'nova_VN', 'Female', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1200, 'Shimmer', 'shimmer_VN', 'Female', 'vi-VN', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-vie.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1201, 'Alloy', 'alloy_cy-GB', 'Male', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/25.jpg', 'neural', '/voices/openai/alloy-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1202, 'Echo', 'echo_cy-GB', 'Male', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/24.jpg', 'neural', '/voices/openai/echo-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1203, 'Fable', 'fable_cy-GB', 'Male', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/23.jpg', 'neural', '/voices/openai/fable-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1204, 'Onyx', 'onyx_cy-GB', 'Male', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/22.jpg', 'neural', '/voices/openai/onyx-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1205, 'Nova', 'nova_cy-GB', 'Female', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/1.jpg', 'neural', '/voices/openai/nova-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1206, 'Shimmer', 'shimmer_cy-GB', 'Female', 'cy-GB', 'openai_nrl', 'openai', '/img/csp/openai-sm.png', 'active', '/voices/openai/avatars/2.jpg', 'neural', '/voices/openai/shimmer-wel.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1207, 'Clare', 'en-AU-News-E', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/clare-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1208, 'Samantha', 'en-AU-News-F', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/samantha-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1209, 'Erik', 'en-AU-News-G', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/erik-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1210, 'Heidi', 'en-GB-News-G', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/heidi-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1211, 'Emma', 'en-GB-News-H', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/emma-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1212, 'Tilda', 'en-GB-News-I', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/tilda-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1213, 'Oscar', 'en-GB-News-J', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/oscar-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1214, 'David', 'en-GB-News-K', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/david-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1215, 'Graham', 'en-GB-News-L', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/graham-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1216, 'Phillip', 'en-GB-News-M', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/phillip-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1217, 'Alba', 'en-US-News-K', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/alba-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1218, 'Sonia', 'en-US-News-L', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/sonia-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1219, 'Mark', 'en-US-News-M', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/mark-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1220, 'Jeff', 'en-US-News-N', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/25.jpg', 'neural', '/voices/gcp/jeff-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1221, 'Yael', 'he-IL-Wavenet-A', 'Female', 'he-IL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/yael-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1222, 'Itai', 'he-IL-Wavenet-B', 'Male', 'he-IL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/itai-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1223, 'Yaara', 'he-IL-Wavenet-C', 'Female', 'he-IL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/yaara-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1224, 'Marius', 'he-IL-Wavenet-D', 'Male', 'he-IL', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/marius-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1225, 'Mayalama', 'ml-IN-Wavenet-C', 'Female', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/mayalama-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1226, 'Mayalam', 'ml-IN-Wavenet-D', 'Male', 'ml-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/manayalam.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1227, 'Pohuistka', 'mr-IN-Wavenet-A', 'Female', 'mr-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/pohuistka-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1228, 'Pohui', 'mr-IN-Wavenet-B', 'Male', 'mr-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/pohui-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1229, 'Vsepoh', 'mr-IN-Wavenet-C', 'Female', 'mr-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/vsepoh-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1230, 'Lula', 'pt-BR-Wavenet-C', 'Female', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/lula-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1231, 'Umberto', 'es-US-News-D', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/umberto-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1232, 'Rodriguez', 'es-US-News-E', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/rodriguez-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1233, 'Clara', 'es-US-News-F', 'Female', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/clara-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1234, 'Julia', 'es-US-News-G', 'Female', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/julia-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1235, 'Induska', 'ta-IN-Wavenet-C', 'Female', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/induska-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1236, 'Indus', 'ta-IN-Wavenet-D', 'Male', 'ta-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/indus-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1237, 'Alex', 'en-GB-Studio-B', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/alex-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1238, 'Susan', 'en-GB-Studio-C', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/susan-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1239, 'Sam', 'en-US-Studio-M', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/sam-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1240, 'Marie', 'en-US-Studio-O', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/marie-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1241, 'Victor', 'en-US-Studio-Q', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/victor-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1242, 'Jorge', 'es-US-Studio-B', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/gorge-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1243, 'Dania', 'da-DK-Neural2-D', 'Female', 'da-DK', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/dania-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1244, 'Jessica', 'en-AU-Neural2-A', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/jessica-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1245, 'Oscar', 'en-AU-Neural2-B', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/oscar-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1246, 'Alice', 'en-AU-Neural2-C', 'Female', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/alice-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1247, 'Smith', 'en-AU-Neural2-D', 'Male', 'en-AU', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/smith-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1248, 'Rouba', 'en-IN-Neural2-A', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/rouba-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1249, 'Saumitra', 'en-IN-Neural2-B', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/saumitra-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1250, 'Rathul', 'en-IN-Neural2-C', 'Male', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/rathul-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1251, 'Baba', 'en-IN-Neural2-D', 'Female', 'en-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/6.jpg', 'neural', '/voices/gcp/baba-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1252, 'Malika', 'en-GB-Neural2-A', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/malika-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1253, 'Osman', 'en-GB-Neural2-B', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/osman-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1254, 'Sonya', 'en-GB-Neural2-C', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/sonya-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1255, 'Peter', 'en-GB-Neural2-D', 'Male', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/peter-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1256, 'Vazilina', 'en-GB-Neural2-F', 'Female', 'en-GB', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/vazilina-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1257, 'en-US-Neural2-A', 'en-US-Neural2-A', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/us1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1258, 'en-US-Neural2-C', 'en-US-Neural2-C', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/us2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1259, 'en-US-Neural2-D', 'en-US-Neural2-D', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/us3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1260, 'en-US-Neural2-E', 'en-US-Neural2-E', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/us4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1261, 'en-US-Neural2-F', 'en-US-Neural2-F', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/us5-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1262, 'en-US-Neural2-G', 'en-US-Neural2-G', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/us6-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1263, 'en-US-Neural2-H', 'en-US-Neural2-H', 'Female', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/us7-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1264, 'en-US-Neural2-I', 'en-US-Neural2-I', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/23.jpg', 'neural', '/voices/gcp/us8-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1265, 'en-US-Neural2-J', 'en-US-Neural2-J', 'Male', 'en-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/us9-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1266, 'fil-ph-Neural2-A', 'fil-ph-Neural2-A', 'Female', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/fil1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1267, 'fil-ph-Neural2-D', 'fil-ph-Neural2-D', 'Male', 'fil-PH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/fil2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1268, 'fr-CA-Neural2-A', 'fr-CA-Neural2-A', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/ca1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1269, 'fr-CA-Neural2-B', 'fr-CA-Neural2-B', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/ca2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1270, 'fr-CA-Neural2-C', 'fr-CA-Neural2-C', 'Female', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/ca3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1271, 'fr-CA-Neural2-D', 'fr-CA-Neural2-D', 'Male', 'fr-CA', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/ca4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1272, 'fr-FR-Neural2-A', 'fr-FR-Neural2-A', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/fr1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1273, 'fr-FR-Neural2-B', 'fr-FR-Neural2-B', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/fr2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1274, 'fr-FR-Neural2-C', 'fr-FR-Neural2-C', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/fr3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1275, 'fr-FR-Neural2-D', 'fr-FR-Neural2-D', 'Male', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/fr4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1276, 'fr-FR-Neural2-E', 'fr-FR-Neural2-E', 'Female', 'fr-FR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/fr5-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1277, 'de-DE-Neural2-A', 'de-DE-Neural2-A', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/de1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1278, 'de-DE-Neural2-B', 'de-DE-Neural2-B', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/de2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1279, 'de-DE-Neural2-C', 'de-DE-Neural2-C', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/de3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1280, 'de-DE-Neural2-D', 'de-DE-Neural2-D', 'Male', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/de4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1281, 'de-DE-Neural2-F', 'de-DE-Neural2-F', 'Female', 'de-DE', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/de5-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1282, 'hi-IN-Neural2-A', 'hi-IN-Neural2-A', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/in1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1283, 'hi-IN-Neural2-B', 'hi-IN-Neural2-B', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/in2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1284, 'hi-IN-Neural2-C', 'hi-IN-Neural2-C', 'Male', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/in3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1285, 'hi-IN-Neural2-D', 'hi-IN-Neural2-D', 'Female', 'hi-IN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/in4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1286, 'it-IT-Neural2-A', 'it-IT-Neural2-A', 'Female', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/it1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1287, 'it-IT-Neural2-C', 'it-IT-Neural2-C', 'Male', 'it-IT', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/24.jpg', 'neural', '/voices/gcp/it2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1288, 'ja-JP-Neural2-B', 'ja-JP-Neural2-B', 'Female', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/4.jpg', 'neural', '/voices/gcp/jp1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1289, 'ja-JP-Neural2-C', 'ja-JP-Neural2-C', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/jp2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1290, 'ja-JP-Neural2-D', 'ja-JP-Neural2-D', 'Male', 'ja-JP', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/jp3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1291, 'ko-KR-Neural2-A', 'ko-KR-Neural2-A', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/kr1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1292, 'ko-KR-Neural2-B', 'ko-KR-Neural2-B', 'Female', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/kr2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1293, 'ko-KR-Neural2-C', 'ko-KR-Neural2-C', 'Male', 'ko-KR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/kr3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1294, 'pt-BR-Neural2-A', 'pt-BR-Neural2-A', 'Female', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/br1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1295, 'pt-BR-Neural2-B', 'pt-BR-Neural2-B', 'Male', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/25.jpg', 'neural', '/voices/gcp/br2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1296, 'pt-BR-Neural2-C', 'pt-BR-Neural2-C', 'Female', 'pt-BR', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/7.jpg', 'neural', '/voices/gcp/br3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1297, 'es-ES-Neural2-A', 'es-ES-Neural2-A', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/5.jpg', 'neural', '/voices/gcp/es1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1298, 'es-ES-Neural2-B', 'es-ES-Neural2-B', 'Male', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/es2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1299, 'es-ES-Neural2-C', 'es-ES-Neural2-C', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/3.jpg', 'neural', '/voices/gcp/es3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1300, 'es-ES-Neural2-D', 'es-ES-Neural2-D', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/es4-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1301, 'es-ES-Neural2-E', 'es-ES-Neural2-E', 'Female', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/es5-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1302, 'es-ES-Neural2-F', 'es-ES-Neural2-F', 'Male', 'es-ES', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/es6-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1303, 'es-US-Neural2-A', 'es-US-Neural2-A', 'Female', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/1.jpg', 'neural', '/voices/gcp/ues1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1304, 'es-US-Neural2-B', 'es-US-Neural2-B', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/21.jpg', 'neural', '/voices/gcp/ues2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1305, 'es-US-Neural2-C', 'es-US-Neural2-C', 'Male', 'es-US', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/20.jpg', 'neural', '/voices/gcp/ues3-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1306, 'th-TH-Neural2-C', 'th-TH-Neural2-C', 'Female', 'th-TH', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/8.jpg', 'neural', '/voices/gcp/th-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1307, 'vi-VN-Neural2-A', 'vi-VN-Neural2-A', 'Female', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/2.jpg', 'neural', '/voices/gcp/vi1-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1308, 'vi-VN-Neural2-D', 'vi-VN-Neural2-D', 'Male', 'vi-VN', 'gcp_nrl', 'gcp', '/img/csp/gcp-sm.png', 'active', '/voices/gcp/avatars/22.jpg', 'neural', '/voices/gcp/vi2-new.mp3', NULL, '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1309, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1310, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1311, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1312, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1314, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1315, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1316, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1317, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1318, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1319, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1320, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1321, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1322, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1323, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1324, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1325, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1326, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1327, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1328, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1329, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1330, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1331, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1332, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1333, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1334, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1335, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1336, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1337, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1338, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1339, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1340, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1341, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1342, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1343, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1344, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1345, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1346, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1347, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1348, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1349, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1350, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1351, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1352, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1353, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'en-US', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1354, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1355, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1356, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1357, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1358, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1359, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1360, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1361, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1362, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1363, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1364, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1365, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1366, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1367, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1368, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1369, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1370, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1371, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1372, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1373, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1374, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1375, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1376, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1377, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1378, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1379, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1380, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1381, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1382, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1383, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1384, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1385, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1386, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1387, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1388, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1389, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1390, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1391, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1392, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1393, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1394, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1395, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1396, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1397, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ja-JP', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1398, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1399, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1400, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1401, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1402, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1403, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1404, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1405, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1406, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1407, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1408, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1409, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1410, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1411, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1412, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1413, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1414, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1415, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1416, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1417, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1418, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1419, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1420, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1421, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1422, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1423, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1424, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1425, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1426, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1427, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1428, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1429, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1430, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1431, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1432, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1433, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1434, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1435, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1436, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1437, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1438, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1439, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1440, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1441, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'cmn-CN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1442, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1443, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1444, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1445, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1446, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1447, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1448, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1449, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1450, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1451, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1452, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1453, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1454, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1455, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1456, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1457, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1458, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1459, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1460, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1461, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1462, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1463, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1464, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1465, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1466, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1467, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1468, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1469, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1470, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1471, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1472, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1473, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1474, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1475, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1476, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1477, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1478, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1479, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1480, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1481, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1482, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1483, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1484, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1485, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'de-DE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1486, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1487, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1488, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1489, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1490, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1491, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1492, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1493, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1494, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1495, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1496, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1497, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1498, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1499, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1500, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1501, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1502, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1503, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1504, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1505, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1506, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1507, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1508, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1509, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1510, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1511, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1512, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1513, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1514, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1515, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1516, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1517, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1518, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1519, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1520, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1521, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1522, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1523, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1524, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1525, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1526, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1527, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1528, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1529, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'hi-IN', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1530, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1531, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1532, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1533, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1534, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1535, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1536, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1537, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1538, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1539, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1540, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1541, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1542, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1543, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1544, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1545, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1546, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1547, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1548, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1549, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1550, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1551, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1552, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1553, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1554, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1555, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1556, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1557, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1558, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1559, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1560, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1561, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1562, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1563, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1564, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1565, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1566, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1567, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1568, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1569, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1570, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1571, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1572, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1573, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'fr-FR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1574, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1575, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1576, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1577, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1578, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1579, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1580, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1581, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1582, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1583, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1584, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1585, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1586, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1587, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1588, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1589, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1590, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1591, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1592, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1593, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1594, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1595, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1596, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1597, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1598, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1599, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1600, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1601, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1602, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1603, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1604, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1605, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1606, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1607, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1608, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1609, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1610, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1611, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1612, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1613, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1614, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1615, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1616, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1617, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ko-KR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1618, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1619, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1620, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1621, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1622, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1623, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1624, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1625, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1626, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1627, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1628, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1629, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1630, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1631, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1632, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1633, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1634, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1635, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1636, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1637, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1638, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1639, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1640, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1641, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1642, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1643, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1644, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1645, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1646, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1647, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1648, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1649, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1650, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1651, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1652, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1653, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1654, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1655, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1656, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1657, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1658, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1659, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1660, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1661, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'pt-PT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1662, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1663, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1664, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1665, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1666, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1667, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1668, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1669, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1670, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1671, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1672, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1673, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1674, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1675, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1676, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1677, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1678, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1679, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1680, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1681, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1682, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1683, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1684, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1685, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1686, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1687, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1688, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1689, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1690, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1691, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1692, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1693, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1694, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1695, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1696, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1697, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1698, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1699, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1700, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1701, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1702, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1703, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1704, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1705, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'it-IT', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1706, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1707, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1708, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1709, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1710, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1711, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1712, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1713, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1714, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1715, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1716, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1717, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1718, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1719, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1720, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1721, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1722, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1723, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1724, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1725, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1726, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1727, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1728, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1729, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1730, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1731, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1732, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1733, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1734, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1735, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1736, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1737, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1738, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1739, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1740, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1741, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1742, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1743, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1744, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1745, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1746, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1747, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1748, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1749, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'es-ES', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1750, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1751, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1752, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1753, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1754, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1755, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1756, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1757, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1758, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1759, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1760, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1761, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1762, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1763, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1764, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1765, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1766, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1767, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1768, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1769, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1770, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1771, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1772, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1773, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1774, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1775, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1776, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1777, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1778, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1779, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1780, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1781, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1782, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1783, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1784, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1785, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1786, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1787, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1788, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1789, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1790, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1791, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'id-ID', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1792, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1793, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1794, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1795, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1796, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1797, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1798, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1799, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1800, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1801, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1802, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1803, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1804, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1805, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1806, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1807, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1808, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1809, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1810, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1811, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1812, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1813, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1814, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1815, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1816, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1817, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1818, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1819, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1820, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1821, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1822, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1823, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1824, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1825, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1826, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1827, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1828, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1829, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1830, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1831, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1832, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1833, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1834, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1835, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'nl-NL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1836, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1837, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1838, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1839, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1840, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1841, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1842, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1843, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1844, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1845, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1846, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1847, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1848, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1849, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1850, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1851, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1852, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1853, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1854, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1855, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1856, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1857, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1858, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1859, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1860, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1861, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1862, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1863, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1864, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1865, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1866, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1867, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1868, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1869, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1870, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1871, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1872, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1873, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1874, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1875, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1876, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1877, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1878, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1879, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'tr-TR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1880, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1881, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1882, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1883, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1884, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1885, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1886, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1887, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1888, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1889, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1890, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1891, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1892, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1893, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1894, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1895, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1896, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1897, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1898, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1899, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1900, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1901, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1902, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1903, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1904, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1905, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1906, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1907, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1908, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1909, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1910, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1911, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1912, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1913, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1914, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1915, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1916, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1917, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1918, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1919, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1920, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1921, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1922, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1923, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'fil-PH', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1924, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1925, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1926, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1927, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1928, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1929, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1930, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1931, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1932, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1933, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1934, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1935, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1936, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1937, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1938, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1939, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1940, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1941, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1942, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1943, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1944, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1945, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1946, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1947, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1948, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1949, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1950, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1951, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1952, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1953, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1954, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1955, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1956, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1957, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1958, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1959, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1960, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1961, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1962, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1963, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1964, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1965, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1966, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1967, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'pl-PL', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(1968, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1969, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1970, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1971, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1972, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1973, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1974, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1975, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1976, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1977, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1978, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1979, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1980, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1981, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1982, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1983, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1984, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1985, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1986, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1987, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1988, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1989, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1990, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1991, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1992, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1993, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1994, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1995, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1996, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1997, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1998, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(1999, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2000, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2001, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2002, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2003, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2004, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2005, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2006, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2007, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2008, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2009, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2010, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2011, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'sv-SE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2012, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2013, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2014, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2015, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2016, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2017, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2018, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2019, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2020, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2021, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2022, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2023, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2024, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2025, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2026, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2027, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2028, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2029, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2030, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2031, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2032, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2033, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2034, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2035, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2036, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2037, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2038, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2039, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2040, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2041, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2042, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2043, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2044, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2045, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2046, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2047, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2048, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2049, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2050, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2051, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2052, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2053, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2054, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2055, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'bg-BG', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2056, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2057, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2058, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2059, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2060, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2061, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2062, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2063, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2064, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2065, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2066, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2067, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2068, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2069, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2070, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2071, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2072, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2073, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2074, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2075, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2076, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2077, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2078, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2079, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2080, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2081, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2082, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2083, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2084, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2085, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2086, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2087, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2088, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2089, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2090, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2091, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2092, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2093, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2094, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2095, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2096, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2097, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2098, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2099, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ro-RO', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2100, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(2101, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2102, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2103, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2104, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2105, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2106, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2107, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2108, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2109, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2110, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2111, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2112, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2113, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2114, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2115, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2116, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2117, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2118, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2119, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2120, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2121, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2122, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2123, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2124, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2125, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2126, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2127, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2128, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2129, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2130, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2131, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2132, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2133, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2134, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2135, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2136, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2137, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2138, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2139, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2140, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2141, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2142, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2143, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ar-AE', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2144, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2145, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2146, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2147, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2148, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2149, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2150, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2151, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2152, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2153, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2154, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2155, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2156, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2157, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2158, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2159, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2160, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2161, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2162, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2163, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2164, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2165, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2166, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2167, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2168, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2169, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2170, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2171, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2172, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2173, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:17', '2024-02-06 07:48:17'),
(2174, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2175, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2176, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2177, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2178, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2179, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2180, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2181, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2182, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2183, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2184, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2185, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2186, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2187, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'cs-CZ', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2188, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2189, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2190, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2191, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2192, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2193, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2194, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2195, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2196, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2197, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2198, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2199, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2200, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2201, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2202, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2203, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2204, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2205, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2206, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2207, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2208, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2209, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2210, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2211, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2212, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2213, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2214, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2215, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2216, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2217, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2218, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2219, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2220, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2221, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2222, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2223, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2224, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2225, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2226, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2227, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2228, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2229, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2230, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2231, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'el-GR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2232, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2233, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(2234, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2235, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2236, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2237, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2238, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2239, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2240, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2241, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2242, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2243, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2244, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2245, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2246, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2247, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2248, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2249, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2250, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2251, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2252, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2253, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2254, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2255, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2256, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2257, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2258, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2259, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2260, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2261, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2262, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2263, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2264, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2265, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2266, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2267, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2268, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2269, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2270, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2271, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2272, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2273, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2274, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2275, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'fi-FI', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2276, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2277, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2278, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2279, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2280, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2281, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2282, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2283, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2284, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2285, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2286, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2287, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2288, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2289, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2290, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2291, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2292, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2293, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2294, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2295, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2296, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2297, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2298, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2299, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2300, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2301, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2302, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2303, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2304, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2305, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2306, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2307, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2308, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2309, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2310, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2311, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2312, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2313, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2314, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2315, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2316, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2317, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2318, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2319, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'hr-HR', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2320, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2321, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2322, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2323, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2324, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2325, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2326, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2327, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2328, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2329, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2330, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2331, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2332, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2333, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2334, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2335, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2336, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2337, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2338, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2339, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2340, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2341, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2342, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2343, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2344, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2345, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2346, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2347, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2348, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2349, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2350, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2351, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2352, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2353, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2354, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2355, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2356, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2357, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2358, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2359, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2360, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2361, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2362, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2363, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ms-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2364, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2365, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2366, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(2367, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2368, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2369, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2370, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2371, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2372, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2373, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2374, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2375, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2376, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2377, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2378, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2379, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2380, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2381, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2382, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2383, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2384, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2385, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2386, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2387, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2388, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2389, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2390, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2391, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2392, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2393, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2394, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2395, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2396, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2397, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2398, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2399, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2400, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2401, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2402, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2403, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2404, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2405, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2406, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2407, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'sk-SK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2408, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2409, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2410, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2412, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2413, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2414, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2415, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2416, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2417, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2418, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2419, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2420, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2421, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2422, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2423, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2424, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2425, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2426, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2427, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2428, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2429, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2430, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2431, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2432, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2433, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2434, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2435, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2436, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2437, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2438, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2439, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2440, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2441, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2442, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2443, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2444, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2445, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2446, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2447, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2448, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2449, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2450, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2451, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2452, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'da-DK', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2453, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2454, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2455, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2456, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2457, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2458, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2459, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2460, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2461, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2462, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2463, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2464, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2465, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2466, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2467, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2468, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2469, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2470, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2471, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2472, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2473, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2474, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2475, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2476, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2477, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2478, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2479, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2480, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2481, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2482, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2483, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2484, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2485, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2486, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2487, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2489, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2490, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2491, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2492, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2493, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2494, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2495, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2496, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2497, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ta-MY', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2498, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2499, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2500, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2501, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18');
INSERT INTO `voices` (`id`, `voice`, `voice_id`, `gender`, `language_code`, `vendor_id`, `vendor`, `vendor_img`, `status`, `avatar_url`, `voice_type`, `sample_url`, `description`, `created_at`, `updated_at`) VALUES
(2502, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2503, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2504, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2505, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2506, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2507, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2508, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2509, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2510, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2511, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2512, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2513, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2514, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2515, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2516, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2517, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2518, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2519, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2520, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2521, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2522, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2523, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2524, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2525, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2526, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2527, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2528, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2529, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2530, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2531, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2532, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2533, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2534, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2535, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2536, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2537, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2538, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2539, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2540, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2541, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'ru-RU', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2542, 'Rachel', '21m00Tcm4TlvDq8ikWAM', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/1.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/21m00Tcm4TlvDq8ikWAM/df6788f9-5c96-470d-8312-aab3b3d8f50a.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2543, 'Drew', '29vD33N1CtxCmqQRPOHJ', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/29vD33N1CtxCmqQRPOHJ/e8b52a3f-9732-440f-b78a-16d5e26407a1.mp3', 'Well-rounded, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2544, 'Clyde', '2EiwWnXFnvU5JabPnv8n', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/2EiwWnXFnvU5JabPnv8n/65d80f52-703f-4cae-a91d-75d4e200ed02.mp3', 'War veteran, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2545, 'Paul', '5Q0t7uMcjvnagumLfvZi', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/5Q0t7uMcjvnagumLfvZi/1094515a-b080-4282-aac7-b1b8a553a3a8.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2546, 'Domi', 'AZnzlk1XvdvUeBnXmlld', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/2.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/AZnzlk1XvdvUeBnXmlld/508e12d0-a7f7-4d86-a0d3-f3884ff353ed.mp3', 'Strong, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2547, 'Dave', 'CYw3kZ02Hs0563khs1Fj', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/CYw3kZ02Hs0563khs1Fj/872cb056-45d3-419e-b5c6-de2b387a93a0.mp3', 'Conversational, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2548, 'Fin', 'D38z5RcWu1voky8WS1ja', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/D38z5RcWu1voky8WS1ja/a470ba64-1e72-46d9-ba9d-030c4155e2d2.mp3', 'Sailor, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2549, 'Sarah', 'EXAVITQu4vr4xnSDxMaL', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/3.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/EXAVITQu4vr4xnSDxMaL/6851ec91-9950-471f-8586-357c52539069.mp3', 'Soft, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2550, 'Antoni', 'ErXwobaYiN019PkySvjV', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ErXwobaYiN019PkySvjV/ee9ac367-91ee-4a56-818a-2bd1a9dbe83a.mp3', 'Well-rounded, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2551, 'Thomas', 'GBv7mTt0atIp3Br8iCZE', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/28.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/GBv7mTt0atIp3Br8iCZE/98542988-5267-4148-9a9e-baa8c4f14644.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2552, 'Charlie', 'IKne3meq5aSn9XLyUdCD', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/29.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/IKne3meq5aSn9XLyUdCD/102de6f2-22ed-43e0-a1f1-111fa75c5481.mp3', 'Casual, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2553, 'George', 'JBFqnCBsd6RMkjVDRZzb', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/30.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/JBFqnCBsd6RMkjVDRZzb/365e8ae8-5364-4b07-9a3b-1bfb4a390248.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2554, 'Emily', 'LcfcDJNUP1GQjkzn1xUU', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/4.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/LcfcDJNUP1GQjkzn1xUU/e4b994b7-9713-4238-84f3-add8fccaaccd.mp3', 'Calm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2555, 'Elli', 'MF3mGyEYCl7XYWbV9V6O', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/5.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/MF3mGyEYCl7XYWbV9V6O/d8ecadea-9e48-4e5d-868a-2ec3d7397861.mp3', 'Emotional, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2556, 'Callum', 'N2lVS1w4EtoT3dr4eOWO', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/31.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/N2lVS1w4EtoT3dr4eOWO/ac833bd8-ffda-4938-9ebc-b0f99ca25481.mp3', 'Hoarse, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2557, 'Patrick', 'ODq5zmih8GrVes37Dizd', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/32.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ODq5zmih8GrVes37Dizd/0ebec87a-2569-4976-9ea5-0170854411a9.mp3', 'Shouty, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2558, 'Harry', 'SOYHLrjzK2X1ezoPC6cr', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/33.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/SOYHLrjzK2X1ezoPC6cr/86d178f6-f4b6-4e0e-85be-3de19f490794.mp3', 'Anxious, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2559, 'Liam', 'TX3LPaxmHKxFdv7VOQHJ', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/34.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TX3LPaxmHKxFdv7VOQHJ/63148076-6363-42db-aea8-31424308b92c.mp3', 'Neutral, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2560, 'Dorothy', 'ThT5KcBeYPX3keUQqHPh', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/6.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ThT5KcBeYPX3keUQqHPh/981f0855-6598-48d2-9f8f-b6d92fbbe3fc.mp3', 'Pleasant, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2561, 'Josh', 'TxGEqnHWrfWFTfGW9XjX', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/35.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/TxGEqnHWrfWFTfGW9XjX/3ae2fc71-d5f9-4769-bb71-2a43633cd186.mp3', 'Deep, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2562, 'Arnold', 'VR6AewLTigWG4xSOukaG', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/36.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/VR6AewLTigWG4xSOukaG/316050b7-c4e0-48de-acf9-a882bb7fc43b.mp3', 'Crisp, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2563, 'Charlotte', 'XB0fDUnXU5powFXDhCwa', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/7.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XB0fDUnXU5powFXDhCwa/942356dc-f10d-4d89-bda5-4f8505ee038b.mp3', 'Seductive, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2564, 'Matilda', 'XrExE9yKIg1WjnnlVkGX', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/8.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/XrExE9yKIg1WjnnlVkGX/b930e18d-6b4d-466e-bab2-0ae97c6d8535.mp3', 'Warm, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2565, 'Matthew', 'Yko7PKHZNXotIFUBG7I9', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/37.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Yko7PKHZNXotIFUBG7I9/02c66c93-a237-436f-8a7d-43e8c49bc6a3.mp3', 'Calm, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2566, 'James', 'ZQe5CZNOzWyzPSCn5a3c', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/38.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/ZQe5CZNOzWyzPSCn5a3c/35734112-7b72-48df-bc2f-64d5ab2f791b.mp3', 'Calm, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2567, 'Joseph', 'Zlb1dXrM653N07WRdFW3', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/39.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/Zlb1dXrM653N07WRdFW3/daa22039-8b09-4c65-b59f-c79c48646a72.mp3', 'Ground reporter, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2568, 'Jeremy', 'bVMeCyTHy58xNoL34h3p', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/40.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/bVMeCyTHy58xNoL34h3p/66c47d58-26fd-4b30-8a06-07952116a72c.mp3', 'Excited, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2569, 'Michael', 'flq6f7yk4E4fJM5XTYuZ', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/20.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/flq6f7yk4E4fJM5XTYuZ/c6431a82-f7d2-4905-b8a4-a631960633d6.mp3', 'Orotund, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2570, 'Ethan', 'g5CIjZEefAph4nQFvHAz', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/21.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/g5CIjZEefAph4nQFvHAz/26acfa99-fdec-43b8-b2ee-e49e75a3ac16.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2571, 'Gigi', 'jBpfuIE2acCO8z3wKNLl', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/9.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jBpfuIE2acCO8z3wKNLl/3a7e4339-78fa-404e-8d10-c3ef5587935b.mp3', 'childlish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2572, 'Freya', 'jsCqWAovK2LkecY7zXl4', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/10.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/jsCqWAovK2LkecY7zXl4/8e1f5240-556e-4fd5-892c-25df9ea3b593.mp3', 'overhyped, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2573, 'Santa Claus', 'knrPHWnBmmDHMoiMeP3l', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/22.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/knrPHWnBmmDHMoiMeP3l/6b454051-3ec2-4a6d-aa2f-1bda2d8c93ea.mp3', 'Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2574, 'Grace', 'oWAxZDx7w5VEj9dCyTzz', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/11.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/oWAxZDx7w5VEj9dCyTzz/84a36d1c-e182-41a8-8c55-dbdd15cd6e72.mp3', 'gentle, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2575, 'Daniel', 'onwK4e9ZLuTAKqWW03F9', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/23.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/onwK4e9ZLuTAKqWW03F9/7eee0236-1a72-4b86-b303-5dcadc007ba9.mp3', 'Daniel, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2576, 'Lily', 'pFZP5JQG7iQjIQuC4Bku', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/12.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pFZP5JQG7iQjIQuC4Bku/0ab8bd74-fcd2-489d-b70a-3e1bcde8c999.mp3', 'Raspy, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2577, 'Serena', 'pMsXgVXv3BLzUgSXRplE', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/13.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pMsXgVXv3BLzUgSXRplE/d61f18ed-e5b0-4d0b-a33c-5c6e7e33b053.mp3', 'Pleasant, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2578, 'Adam', 'pNInz6obpgDQGcFmaJgB', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/24.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pNInz6obpgDQGcFmaJgB/38a69695-2ca9-4b9e-b9ec-f07ced494a58.mp3', 'Deep, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2579, 'Nicole', 'piTKgcLEGmPE4e6mEKli', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/14.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/piTKgcLEGmPE4e6mEKli/c269a54a-e2bc-44d0-bb46-4ed2666d6340.mp3', 'Whisper, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2580, 'Bill', 'pqHfZKP75CvOlQylNhV4', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/25.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/pqHfZKP75CvOlQylNhV4/52f0842a-cf81-4715-8cf0-76cfbd77088e.mp3', 'Strong, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2581, 'Jessie', 't0jbNlBVZ17f02VDIeMI', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/26.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/t0jbNlBVZ17f02VDIeMI/e26939e3-61a4-4872-a41d-33922cfbdcdc.mp3', 'Raspy, Old', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2582, 'Sam', 'yoZ06aMxZJJ28mfd3POQ', 'Male', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/27.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/yoZ06aMxZJJ28mfd3POQ/ac9d1c91-92ce-4b20-8cc2-3187a7da49ec.mp3', 'Raspy, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2583, 'Glinda', 'z9fAnlkpzviPz146aGWa', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/15.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/z9fAnlkpzviPz146aGWa/cbc60443-7b61-4ebb-b8e1-5c03237ea01d.mp3', 'Witch, Middle aged', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2584, 'Giovanni', 'zcAOhNBS3c14rBihAFp1', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/16.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zcAOhNBS3c14rBihAFp1/e7410f8f-4913-4cb8-8907-784abee5aff8.mp3', 'Foreigner, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18'),
(2585, 'Mimi', 'zrHiDhphv9ZnVXBqCLjz', 'Female', 'uk-UA', 'elevenlabs_nrl', 'elevenlabs', '/img/csp/elevenlabs-sm.png', 'active', '/voices/elevenlabs/avatars/17.jpg', 'neural', 'https://storage.googleapis.com/eleven-public-prod/premade/voices/zrHiDhphv9ZnVXBqCLjz/decbf20b-0f57-4fac-985b-a4f0290ebfc4.mp3', 'Childish, Young', '2024-02-06 07:48:18', '2024-02-06 07:48:18');

-- --------------------------------------------------------

--
-- بنية الجدول `workbooks`
--

CREATE TABLE `workbooks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `default` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_wizards`
--
ALTER TABLE `article_wizards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_categories`
--
ALTER TABLE `chat_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_conversations_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_histories`
--
ALTER TABLE `chat_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_histories_user_id_foreign` (`user_id`);

--
-- Indexes for table `chat_history_specials`
--
ALTER TABLE `chat_history_specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_prompts`
--
ALTER TABLE `chat_prompts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_specials`
--
ALTER TABLE `chat_specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contents_user_id_foreign` (`user_id`);

--
-- Indexes for table `custom_templates`
--
ALTER TABLE `custom_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_templates_user_id_foreign` (`user_id`);

--
-- Indexes for table `embeddings`
--
ALTER TABLE `embeddings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embedding_collections`
--
ALTER TABLE `embedding_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_chats`
--
ALTER TABLE `favorite_chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_chats_user_id_foreign` (`user_id`);

--
-- Indexes for table `favorite_templates`
--
ALTER TABLE `favorite_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorite_templates_user_id_foreign` (`user_id`);

--
-- Indexes for table `fine_tunes`
--
ALTER TABLE `fine_tunes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_tune_models`
--
ALTER TABLE `fine_tune_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_features`
--
ALTER TABLE `frontend_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_steps`
--
ALTER TABLE `frontend_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_tools`
--
ALTER TABLE `frontend_tools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_code_unique` (`language_code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prepaid_plans`
--
ALTER TABLE `prepaid_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promocodes_code_unique` (`code`),
  ADD KEY `promocodes_user_id_foreign` (`user_id`);

--
-- Indexes for table `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promocode_user_promocode_id_foreign` (`promocode_id`),
  ADD KEY `promocode_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `support_tickets_ticket_id_unique` (`ticket_id`),
  ADD KEY `support_tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transcripts`
--
ALTER TABLE `transcripts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transcripts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voiceover_languages`
--
ALTER TABLE `voiceover_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voiceover_languages_language_code_unique` (`language_code`);

--
-- Indexes for table `voiceover_results`
--
ALTER TABLE `voiceover_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voices`
--
ALTER TABLE `voices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workbooks`
--
ALTER TABLE `workbooks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workbooks_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `article_wizards`
--
ALTER TABLE `article_wizards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `chat_categories`
--
ALTER TABLE `chat_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chat_conversations`
--
ALTER TABLE `chat_conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chat_histories`
--
ALTER TABLE `chat_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_history_specials`
--
ALTER TABLE `chat_history_specials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_prompts`
--
ALTER TABLE `chat_prompts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_templates`
--
ALTER TABLE `custom_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_chats`
--
ALTER TABLE `favorite_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `favorite_templates`
--
ALTER TABLE `favorite_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fine_tunes`
--
ALTER TABLE `fine_tunes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_tune_models`
--
ALTER TABLE `fine_tune_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_features`
--
ALTER TABLE `frontend_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontend_steps`
--
ALTER TABLE `frontend_steps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `frontend_tools`
--
ALTER TABLE `frontend_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_platforms`
--
ALTER TABLE `payment_platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prepaid_plans`
--
ALTER TABLE `prepaid_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promocode_user`
--
ALTER TABLE `promocode_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `transcripts`
--
ALTER TABLE `transcripts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voiceover_languages`
--
ALTER TABLE `voiceover_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `voiceover_results`
--
ALTER TABLE `voiceover_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voices`
--
ALTER TABLE `voices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2586;

--
-- AUTO_INCREMENT for table `workbooks`
--
ALTER TABLE `workbooks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- قيود الجداول المُلقاة.
--

--
-- قيود الجداول `chat_conversations`
--
ALTER TABLE `chat_conversations`
  ADD CONSTRAINT `chat_conversations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `chat_histories`
--
ALTER TABLE `chat_histories`
  ADD CONSTRAINT `chat_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `codes`
--
ALTER TABLE `codes`
  ADD CONSTRAINT `codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `custom_templates`
--
ALTER TABLE `custom_templates`
  ADD CONSTRAINT `custom_templates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `favorite_chats`
--
ALTER TABLE `favorite_chats`
  ADD CONSTRAINT `favorite_chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `favorite_templates`
--
ALTER TABLE `favorite_templates`
  ADD CONSTRAINT `favorite_templates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `promocodes`
--
ALTER TABLE `promocodes`
  ADD CONSTRAINT `promocodes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- قيود الجداول `promocode_user`
--
ALTER TABLE `promocode_user`
  ADD CONSTRAINT `promocode_user_promocode_id_foreign` FOREIGN KEY (`promocode_id`) REFERENCES `promocodes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promocode_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- قيود الجداول `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `support_messages`
--
ALTER TABLE `support_messages`
  ADD CONSTRAINT `support_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `transcripts`
--
ALTER TABLE `transcripts`
  ADD CONSTRAINT `transcripts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- قيود الجداول `workbooks`
--
ALTER TABLE `workbooks`
  ADD CONSTRAINT `workbooks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
