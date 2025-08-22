<?php
// Function to calculate Easter date for a given year (Western Christian calculation)
 function calculateEaster($year){
    $a = $year % 19;
    $b = floor($year / 100);
    $c = $year % 100;
    $d = floor($b / 4);
    $e = $b % 4;
    $f = floor(($b + 8) / 25);
    $g = floor(($b - $f + 1) / 3);
    $h = (19 * $a + $b - $d - $g + 15) % 30;
    $i = floor($c / 4);
    $k = $c % 4;
    $l = (32 + 2 * $e + 2 * $i - $h - $k) % 7;
    $m = floor(($a + 11 * $h + 22 * $l) / 451);
    $month = floor(($h + $l - 7 * $m + 114) / 31);
    $day = (($h + $l - 7 * $m + 114) % 31) + 1;
    
    return new DateTime("$year-$month-$day");
}

// Generate holidays for 40 years (2015-2055)
$philippine_holidays = [];

for ($year = 2015; $year <= 2055; $year++) {
    // Fixed-date holidays
    $fixedHolidays = [
        "$year-01-01" => 'New Year\'s Day',
        "$year-05-01" => 'Labor Day',
        "$year-06-12" => 'Independence Day',
        "$year-08-21" => 'Ninoy Aquino Day',
        "$year-11-01" => 'All Saints\' Day',
        "$year-11-02" => 'All Souls\' Day',
        "$year-11-30" => 'Bonifacio Day',
        "$year-12-08" => 'Feast of the Immaculate Conception',
        "$year-12-25" => 'Christmas Day',
        "$year-12-30" => 'Rizal Day',
        "$year-12-31" => 'New Year\'s Eve',
    ];
    
    // Calculate movable holidays (based on Easter)
    $easter = calculateEaster($year);

    $maundyThursday = (clone $easter)->modify('-3 days')->format('Y-m-d');
    $goodFriday     = (clone $easter)->modify('-2 days')->format('Y-m-d');
    $blackSaturday  = (clone $easter)->modify('-1 days')->format('Y-m-d');
    $easterSunday   = $easter->format('Y-m-d');

    $movableHolidays = [
        $maundyThursday => 'Maundy Thursday',
        $goodFriday     => 'Good Friday',
        $blackSaturday  => 'Black Saturday',
        $easterSunday   => 'Easter Sunday',
    ];
    
    // Adjust National Heroes Day to the last Monday of August
    $lastMonday = new DateTime("last monday of august $year");
    $fixedHolidays[$lastMonday->format('Y-m-d')] = 'National Heroes Day';
    
    // Merge all holidays for this year
    $philippine_holidays = array_merge($philippine_holidays, $fixedHolidays, $movableHolidays);
}

// Sort holidays by date
ksort($philippine_holidays);



// Now you can use $philippine_holidays in your FullCalendar implementation
?>

<!-- <script>
document.addEventListener('DOMContentLoaded', function() {
    var calendar = new FullCalendar.Calendar(document.getElementById('calendar'), {
        initialView: 'dayGridMonth',
        events: [
            // Convert PHP holidays to FullCalendar events
            <?php foreach ($philippine_holidays as $date => $title): ?>
            {
                title: '<?php echo addslashes($title); ?>',
                start: '<?php echo $date; ?>',
                color: '#dc2626',
                allDay: true,
                display: 'background',
                className: 'holiday-event'
            },
            <?php endforeach; ?>
            // Add your other events here
        ],
        // ... other calendar options ...
    });
    calendar.render();
});
</script>

    -->