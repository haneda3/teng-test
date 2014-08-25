package DB::Schema;
use strict;
use warnings;
use Teng::Schema::Declare;

table {
    name 'user';
    pk   'id';
    columns qw/id name/;
};

table {
    name 'user_team';
#    columns qw/id name team_id team_name/;
};

1;

