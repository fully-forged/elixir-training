# IEx

IEx is Elixir's interactive REPL.

It can be run simply with `iex`.

It supports multiline commands, so you can paste one line at a time and it will wait.

Useful functions:

- `h` shows a list of all available commands
- `h <function name>` searches the docs and prints documentation for a function. Try with `h Enum.map/2` (note that you need to pass the arity).
- `c <path>` compiles the elixir source file at the given path. Try with `c("hello.ex")`.
