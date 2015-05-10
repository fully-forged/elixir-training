worker = spawn_link(fn() -> :timer.sleep 5000 end)

Process.register(worker, :my_worker)

Process.registered |> IO.inspect

send :my_worker, :hello

Process.info(worker)[:messages] |> IO.inspect
