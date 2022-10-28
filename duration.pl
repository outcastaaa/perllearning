use Time::Moment;

my $now = Time::Moment->now;

my $then = Time::Moment->new(
    year => $ARGV[0], #紧跟的第一个参数，即 年份
    month => $ARGV[1],  #紧跟的第二个参数，即 月份
    day => $ARGV[2],
);

my $years = $then->delta_years($now);
my $months = $then->delta_months($now) % 12;
my $days = $then->delta_days($now) % 365 ;

printf "%d years and %d months and %d days\n", $years, $months,$days;
#62 years and 1 months and 67 days