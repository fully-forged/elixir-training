runner = self

spawn_link(fn() ->
  :timer.sleep 1000
  send runner, :hello
end)

receive do
  :hello -> IO.puts "Received hello"
end
