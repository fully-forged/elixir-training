runner = self

send runner, :hello
send runner, :foo

IO.inspect Process.info(runner)
IO.inspect Process.info(runner)[:messages]
