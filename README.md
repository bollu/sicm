# Structure and interpretation of classical mechanics

0. Follow [Scheme Mechanics Installation instructions from the MIT web page](http://groups.csail.mit.edu/mac/users/gjs/6946/linux-install.htm)
1. `cd mit-scheme-10.1.11/src && ./configure --prefix=$HOME/.local && make -j install`
2. `export MITSCHEME_LIBRARY_PATH=$HOME/.local/lib/mit-scheme-x86-64/`
3. `cd scmutils-20200810 && ./install.sh`
4. Run files with `./scmutils-20200810/mechanics.sh`
4. Solve problems in `chapters/` folder.
5. Setup `emacs`:

```lisp
(defun mechanics ()
  (interactive)
  (run-scheme  "mit-scheme --band /home/bollu/work/sicm/scmutils-20200810/mechanics.com --library /home/bollu/.local/lib/mit-scheme-x86-64/"))
```

A section a week gives:

```
>>> (12+15+11+6+12+5)/4
15.25
```

