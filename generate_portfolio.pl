use strict;
use warnings;
use HTML::Template;

# Your data
my $name = 'Jonathon Koerner';
my $bio = 'I\'m a passionate full-stack developer with a decade of experience building high-performing websites and mobile applications. I thrive on turning complex challenges into elegant, user-centric solutions. My expertise spans a wide range of technologies, including Python (with frameworks like Django and FastAPI), JavaScript (including React and Angular), and various database systems. I\'ve successfully developed mobile applications for diverse sectors, from cryptocurrency analysis and prediction tools to health and wellness platforms, always focusing on maximizing user engagement and achieving client business objectives.

My background in high-volume business operations, coupled with my training and development experience, gives me a unique understanding of client needs. I leverage this blend of technical and business acumen to translate those needs into effective solutions, ensuring seamless user adoption. I\'m adept at both front-end and back-end development, creating robust and scalable applications with clean code and a focus on maintainable architecture. I also bring strong communication and project management skills to every project, ensuring on-time and within-budget delivery. I enjoy continuous learning and am always eager to explore new technologies and expand my skillset.';
my @projects = (
    {
        title               => 'Flourish - Health and Wellness Application',
        short_description => 'A comprehensive platform for users to achieve their holistic health goals.',
        long_description  => 'This health and wellness app, built using Java and Swift, provides a comprehensive platform for users to achieve their holistic health goals. It features personalized profiles, allowing users to track their exercise routines, meditation practices, and dietary habits. The app also includes helpful reminders to maintain consistency and an AI coach to provide personalized guidance and support.',
        technologies        => 'Java, Swift',
        link               => '#'
    },
    {
        title               => 'CoinSentinel - Cryptocurrency Tracking and Analysis',
        short_description => 'An advanced application empowering users to make informed investment decisions with AI-driven insights.',
        long_description  => 'CoinSentinel is an advanced cryptocurrency tracking and analysis application that empowers users to make informed investment decisions with AI-driven insights. Built with Python, CoinSentinel provides a real-time market overview, portfolio management tools, and leverages machine learning to deliver accurate 24-hour and 48-hour price predictions. It also incorporates sentiment analysis to gauge market trends and offers custom price alerts and cryptocurrency news aggregation to keep users ahead of the curve. Gain a competitive edge with CoinSentinel\'s live analytics and predictive capabilities.',
        technologies        => 'Python, Machine Learning',
        link               => '#'
    },
    {
        title               => 'CulinaryKeeper',
        short_description => 'A expansive recipe tracker application built with the following technologies:',
        long_description  => 'CulinaryKeeper is an innovative recipe management application designed for food enthusiasts, home cooks, and professional chefs alike. This user-friendly platform allows you to effortlessly store, organize, and access your favorite recipes from any device. With features like ingredient tracking, meal planning, and smart search capabilities, CulinaryKeeper streamlines your cooking process from start to finish. The app also offers collaborative features, enabling users to share recipes with friends and family, discover new culinary inspirations, and build a personalized digital cookbook. Whether you are looking to preserve cherished family recipes or experiment with new flavors, CulinaryKeeper is your ultimate companion in the kitchen, helping you turn your culinary aspirations into delicious realities.'
        technologies        => '* **Frontend:**
    * React: JavaScript library for building user interfaces.
    * HTML: Markup language for structuring the content.
    * CSS: Styling language for the visual presentation.
    * JavaScript: Programming language for the application logic.
* **Development Tools:**
    * Node.js: JavaScript runtime environment.
    * npm or yarn: Package managers for installing dependencies.
    * create-react-app: Tool for setting up a new React project.
    * ESLint: Linting tool for code quality and style checking (optional, but recommended).
    * Git: Version control system for tracking changes.',
        link               => 'https://github.com/Freedomwithin/CulinaryKeeper'
    }
);

# Generate index.html
my $index_template = HTML::Template->new(filename => 'templates/index.html');
$index_template->param(name => $name);
$index_template->param(
    hero_description =>
    'I\'m a website and mobile app developer dedicated to creating exceptional digital experiences. I combine technical expertise with a keen understanding of user experience to build solutions that are both beautiful and effective. My services encompass the full development lifecycle, from initial concept and design to development, testing, and deployment.'
);
open my $index_fh, '>', 'index.html' or die "Could not open file: $!";
print $index_fh $index_template->output;
close $index_fh;

# Generate about.html
my $about_template = HTML::Template->new(filename => 'templates/about.html');
$about_template->param(name => $name);
$about_template->param(bio => $bio);
open my $about_fh, '>', 'about.html' or die "Could not open file: $!";
print $about_fh $about_template->output;
close $about_fh;

# Generate projects.html
my $projects_template = HTML::Template->new(filename => 'templates/projects.html');
$projects_template->param(name => $name);
$projects_template->param(projects => \@projects);
open my $projects_fh, '>', 'projects.html' or die "Could not open file: $!";
print $projects_fh $projects_template->output;
close $projects_fh;

# Generate contact.html
my $contact_template = HTML::Template->new(filename => 'templates/contact.html');
$contact_template->param(name => $name);
open my $contact_fh, '>', 'contact.html' or die "Could not open file: $!";
print $contact_fh $contact_template->output;
close $contact_fh;

print "All HTML files generated successfully!\n";
