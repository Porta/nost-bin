nost
======

Just an experiment for running daemonized Ost workers, but without requiring Ost.

Usage
-----

Assuming a simple worker:

    require "app"

    Ost[:stuff].each do |item|
      # process item
    end

Place the worker at `./workers/stuff.rb` and then:

    $ nost start stuff

That should load the worker in the foreground.

You can daemonize the process by passing the `-d` flag:

    $ nost start -d stuff

If you daemonize, a file containing the daemonized process ID is written
to `./workers/stuff.pid`.

Given that `start` is the default action for running Ost workers it can
be omitted:

    $ nost -d stuff

You can kill a daemonized worker by issuing the `stop` command:

    $ nost kill stuff

This will send the `TERM` signal to the process.


Optionally, you can specify a different directory for the pid file.

    $nost -d stuff -p tmp
    
Will look for the pid file in `./tmp/` instead of the default `./workers/` directory. This is useful if you're using a deploy tool like Capistrano and need to place the pid files in a symlinked dir.


Support
-------

For now, this experiment is only tested on MRI 1.9.2+. I must add that it's working in MRI 2.1.1
