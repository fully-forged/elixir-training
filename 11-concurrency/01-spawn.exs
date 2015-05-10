spawn(fn() ->
  :timer.sleep 2000
  IO.puts "hello"
end)

IO.puts "You should see me"

:timer.sleep 3000
