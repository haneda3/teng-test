use strict;
use warnings;
use utf8;
use Teng;
use Teng::Schema::Loader;
use DDP;

my $dsn    = 'dbi:mysql:teng_test';
my $user   = 'root';
my $passwd = '';

my $dbh = DBI->connect($dsn, $user, $passwd, {
        'mysql_enable_utf8' => 1,
    });

#my $teng = Teng::Schema::Loader->load(
#    'dbh'       => $dbh,
#    'namespace' => 'App::Table',
#);

use DB;
#use DB::Schema;

my $teng = DB->new(+{dbh => $dbh});

#p $teng;
#$teng->insert('user', +{id => 1, name => 'name_test'});
my $row = $teng->single('user', {'id' => 1});
p $row->special_method;

my @rows = $teng->search_by_sql('SELECT user.id, user.name, user.team_id, team.name AS team_name FROM user LEFT OUTER JOIN team ON user.team_id = team.id', '', 'user_team');
p @rows;
p @rows->[0]->team_name;
p @rows->[0]->special_method;
1;
