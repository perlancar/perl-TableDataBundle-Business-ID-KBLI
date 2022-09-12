package ## no critic: Modules::RequireFilenameMatchesPackage
    # hide from PAUSE
    TableDataRole::Business::ID::KBLI::2020::Class;

use 5.010001;
use strict;
use warnings;

use Role::Tiny;
with 'TableDataRole::Source::CSVInFile';

around new => sub {
    my $orig = shift;

    require File::Basename;
    my $filename = File::Basename::dirname(__FILE__) . '/../../../../../../share/category.csv';
    unless (-f $filename) {
        require File::ShareDir;
        $filename = File::ShareDir::dist_file('TableDataBundle-Business-ID-KBLI', 'category.csv');
    }
    $orig->(@_, filename=>$filename);
};

package TableData::Business::ID::DGIP::2020::Category;

use 5.010001;
use strict;
use warnings;

use Role::Tiny::With;

# AUTHORITY
# DATE
# DIST
# VERSION

with 'TableDataRole::Business::ID::KBLI::2020::Category';

# STATS

1;
# ABSTRACT: List of KBLI categories

=head1 DESCRIPTION

Keyword:
