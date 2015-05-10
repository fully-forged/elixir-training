spawn(fn() -> raise "error" end)

spawn_link(fn() -> raise "error" end)

:timer.sleep 500

IO.puts "Should never get here"
