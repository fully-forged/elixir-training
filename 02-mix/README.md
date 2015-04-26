# Mix

Elixir ships with Mix, a development tool that merges Rake and Bundler. With mix you can:

- scaffold projects
- run tasks (exactly like Rake) - built-in and custom
- manage dependencies (like Bundler) - both Elixir and Erlang
- compile, test

Try with `mix new sample` and look at the output.

Inside the `sample` folder we can see that:

- we have a `mix.exs` file: this file includes information about dependencies and bootstrapping our application.
- a `config` folder
- a `lib` folder, where we can write our logic
- a `test` folder where we can write our tests
