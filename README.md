# README

Quick 'n dirty benchmark for Slim, Haml and vanilla ERB. Suggestions are appreciated.

## Requirements

Tested only on Ruby 2.3.1 and Rails 4.2.6, GG GL on anything else.  


### Flamegraphs

To generate [flamegraphs](http://samsaffron.com/archive/2013/03/19/flame-graphs-in-ruby-miniprofiler):

* add the [**flamegraph**](https://github.com/SamSaffron/flamegraph) gem to your Gemfile
* visit a page in your app with `?pp=flamegraph`

### Memory Profiling

Memory allocations can be measured (using the [memory_profiler](https://github.com/SamSaffron/memory_profiler) gem)
which will show allocations broken down by gem, file location, and class and will also highlight `String` allocations.

Add `?pp=profile-memory` to the URL of any request while Rack::MiniProfiler is enabled to generate the report.

Additional query parameters can be used to filter the results.

* `memory_profiler_allow_files` - filename pattern to include (default is all files)
* `memory_profiler_ignore_files` - filename pattern to exclude (default is no exclusions)
* `memory_profiler_top` - number of results per section (defaults to 50)

The allow/ignore patterns will be treated as regular expressions.

Example: `?pp=profile-memory&memory_profiler_allow_files=active_record|app`

There are two additional `pp` options that can be used to analyze memory which do not require the `memory_profiler` gem

* Use `?pp=profile-gc` to report on Garbage Collection statistics
* Use `?pp=analyze-memory` to report on ObjectSpace statistics
