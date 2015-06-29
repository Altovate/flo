Analytics = Segment::Analytics.new({
    write_key: '2Bcnwz5QoWyvqAq3IRwPNykvh1TjGVdU',
    on_error: Proc.new { |status, msg| print msg }
})