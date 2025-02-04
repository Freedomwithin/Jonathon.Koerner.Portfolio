use strict;
use warnings;
use HTML::Template;

my $name = 'Jonathon Koerner';
my $bio = 'A passionate developer with expertise in Perl, web development, and automation. I enjoy problem-solving and am always eager to learn new technologies.';
my @projects = (
    { title => 'Crypto Prediction and Analysis Bot', description => 'Developing a bot that predicts and analyzes cryptocurrency trends using machine learning algorithms.' },
    { title => 'Concise Programming Language', description => 'Creating my own programming language called Concise, designed to be easy to learn and use while being powerful and efficient.' },
    { title => 'Web Development Projects', description => 'Developing multiple websites with a focus on modern design, user experience, and performance optimization.' },
);

# Delete the existing portfolio.html file if it exists (good practice)
unlink 'portfolio.html' or warn "Could not delete portfolio.html: $!" if -e 'portfolio.html';

# Use a RELATIVE path here!  This is the key change.
my $template = HTML::Template->new(filename => 'template.html');

$template->param(name => $name);
$template->param(bio => $bio);
$template->param(projects => \@projects);

open my $fh, '>', 'portfolio.html' or die "Could not open file: $!";
print $fh $template->output;
close $fh;

print "Portfolio generated successfully!\n";