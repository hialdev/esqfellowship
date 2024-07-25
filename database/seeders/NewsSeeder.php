<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class NewsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('news')->insert([
            [
                'title' => 'New Scholarship Opportunities for 2024',
                'slug' => Str::slug('New Scholarship Opportunities for 2024'),
                'excerpt' => 'Discover new scholarship opportunities available for students in 2024.',
                'meta_description' => 'Find out about the latest scholarship opportunities for students in 2024. Get details on eligibility, application process, and deadlines.',
                'meta_keywords' => 'scholarship, 2024, education, financial aid',
                'content' => '<h1>New Scholarship Opportunities for 2024</h1><p>Discover the latest scholarship opportunities available for students in 2024. This year, various organizations are offering scholarships to support students in their educational pursuits.</p><p>Learn about eligibility criteria, application process, and deadlines to take advantage of these opportunities.</p>',
                'image' => 'images/scholarship-2024.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Tips for Excelling in Online Education',
                'slug' => Str::slug('Tips for Excelling in Online Education'),
                'excerpt' => 'Learn practical tips for excelling in online education and achieving academic success.',
                'meta_description' => 'Get practical tips for excelling in online education. Learn strategies for staying focused, managing time, and achieving academic success.',
                'meta_keywords' => 'online education, tips, academic success, study strategies',
                'content' => '<h1>Tips for Excelling in Online Education</h1><p>With the rise of online education, it is essential for students to develop effective study strategies. In this article, we provide practical tips for excelling in online courses and achieving academic success.</p><p>Learn how to stay focused, manage your time, and make the most of your online learning experience.</p>',
                'image' => 'images/online-education.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Character Building: Essential Skills for Students',
                'slug' => Str::slug('Character Building: Essential Skills for Students'),
                'excerpt' => 'Explore essential skills for character building and personal development in students.',
                'meta_description' => 'Learn about essential skills for character building and personal development in students. Discover strategies to foster resilience, empathy, and integrity.',
                'meta_keywords' => 'character building, personal development, students, skills',
                'content' => '<h1>Character Building: Essential Skills for Students</h1><p>Character building is a crucial aspect of personal development for students. This article explores essential skills such as resilience, empathy, and integrity that students need to succeed in life.</p><p>Discover strategies to foster these skills and help students become well-rounded individuals.</p>',
                'image' => 'images/character-building.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Top Universities Offering Scholarships in 2024',
                'slug' => Str::slug('Top Universities Offering Scholarships in 2024'),
                'excerpt' => 'Find out which top universities are offering scholarships to students in 2024.',
                'meta_description' => 'Discover top universities offering scholarships in 2024. Get information on eligibility, application process, and scholarship benefits.',
                'meta_keywords' => 'top universities, scholarships, 2024, education',
                'content' => '<h1>Top Universities Offering Scholarships in 2024</h1><p>Many top universities are offering scholarships to students in 2024. This article provides information on eligibility, application process, and benefits of these scholarships.</p><p>Explore opportunities to study at prestigious institutions with financial support.</p>',
                'image' => 'images/university-scholarships.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'How to Apply for International Scholarships',
                'slug' => Str::slug('How to Apply for International Scholarships'),
                'excerpt' => 'Learn the steps and tips for applying to international scholarships.',
                'meta_description' => 'Get tips and step-by-step guidance on how to apply for international scholarships. Learn about eligibility, required documents, and application deadlines.',
                'meta_keywords' => 'international scholarships, application tips, study abroad',
                'content' => '<h1>How to Apply for International Scholarships</h1><p>Applying for international scholarships can be a complex process. This article provides step-by-step guidance and tips to help you navigate the application process.</p><p>Learn about eligibility requirements, necessary documents, and important deadlines to increase your chances of success.</p>',
                'image' => 'images/international-scholarships.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'The Role of Mentorship in Personal Development',
                'slug' => Str::slug('The Role of Mentorship in Personal Development'),
                'excerpt' => 'Understand the importance of mentorship in personal and professional development.',
                'meta_description' => 'Explore the role of mentorship in personal and professional development. Learn how to find a mentor and build a successful mentorship relationship.',
                'meta_keywords' => 'mentorship, personal development, professional growth, mentor',
                'content' => '<h1>The Role of Mentorship in Personal Development</h1><p>Mentorship plays a vital role in personal and professional development. This article explores the benefits of having a mentor and how to build a successful mentorship relationship.</p><p>Learn how to find a mentor and make the most of the guidance and support they provide.</p>',
                'image' => 'images/mentorship.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Scholarship Programs for STEM Students',
                'slug' => Str::slug('Scholarship Programs for STEM Students'),
                'excerpt' => 'Discover scholarship programs specifically for STEM students.',
                'meta_description' => 'Find out about scholarship programs available for STEM students. Learn about eligibility criteria, application process, and scholarship benefits.',
                'meta_keywords' => 'STEM scholarships, STEM education, financial aid, STEM programs',
                'content' => '<h1>Scholarship Programs for STEM Students</h1><p>There are numerous scholarship programs available specifically for students pursuing studies in Science, Technology, Engineering, and Mathematics (STEM). This article provides information on these programs, including eligibility criteria and application process.</p><p>Take advantage of these opportunities to support your STEM education and career goals.</p>',
                'image' => 'images/stem-scholarships.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Building a Strong Foundation for Lifelong Learning',
                'slug' => Str::slug('Building a Strong Foundation for Lifelong Learning'),
                'excerpt' => 'Learn how to build a strong foundation for lifelong learning and continuous personal growth.',
                'meta_description' => 'Get tips on building a strong foundation for lifelong learning. Learn strategies to foster curiosity, adaptability, and a growth mindset.',
                'meta_keywords' => 'lifelong learning, personal growth, education, growth mindset',
                'content' => '<h1>Building a Strong Foundation for Lifelong Learning</h1><p>Lifelong learning is essential for continuous personal and professional growth. This article provides tips and strategies for building a strong foundation for lifelong learning.</p><p>Learn how to foster curiosity, adaptability, and a growth mindset to keep learning and growing throughout your life.</p>',
                'image' => 'images/lifelong-learning.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'title' => 'Developing Leadership Skills in Students',
                'slug' => Str::slug('Developing Leadership Skills in Students'),
                'excerpt' => 'Explore strategies for developing leadership skills in students.',
                'meta_description' => 'Learn about strategies for developing leadership skills in students. Discover the importance of leadership education and practical tips for fostering these skills.',
                'meta_keywords' => 'leadership skills, students, education, leadership development',
                'content' => '<h1>Developing Leadership Skills in Students</h1><p>Leadership skills are crucial for success in any field. This article explores strategies for developing leadership skills in students, including the importance of leadership education and practical tips for fostering these skills.</p><p>Help students become effective leaders who can make a positive impact in their communities and beyond.</p>',
                'image' => 'images/leadership-skills.jpg',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
