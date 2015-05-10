runner = self

spawn_link(fn() ->
  :timer.sleep 2500
  send runner, :hello
end)

receive do
  :hello -> IO.puts "Received hello"
after
  2000 -> IO.puts "Timeout"
end
