# Command Line Exercises

Exercises to help me remember all the command line tools.  Hope that it'll help you as well!

**There are multiple possible tools, multiple possible shells to use, and multiple possible solutions even using the same tools and shells.**

I'll be using `zsh` and some of the tools below when thinking about these questions, but you may use whatever you'd like.

## Quickstart

### Create the Command-line Env and Site

```shell
docker compose up -d
docker compose exec main /bin/bash

# When done...
docker compose down
```

or you can use the justfile:

```shell
just up

# When done...
just down
```

### Use the Env and Site

The exercises are listed at <http://localhost:5000/>.  Use the shell created in the previous exercise to do them!

## Common Tools

Some tools I'll be using:

- [**awk**][awk]: Data-driven scripting language (and associated tool) which takes action against streams of text data.  tl;dr: You can do ETL stuff with streams of text.
- [**csvkit**][csvkit]: Do a bunch of cool things with csv files.  (**Note**: there is no command `csvkit`, it's smaller utils inside this package.)
- [**curl**][curl]: Download from the internet.
- [**find**][find]: Search for files in a directory hierarchy.
- [**grep**][grep]: Find patterns of text in a file.
- [**jq**][jq]: Do awesome stuff with json.
- [**mktemp**][mktemp]: Make temporary directories.  Pretty useful little command.
- [**nc**][nc]: Netcat (`nc`) is a unix utility which reads and writes data across network connections, using TCP or UDP protocol.
- [**sed**][sed]: Stream editor: replace things in a stream.  tl;dr find-replace.
- [**ss**][ss]: Socket Statistics (`ss`) is used to dump socket statistics. It allows showing information similar to netstat.  It can display more TCP and state information than other tools.
- [**uniq**][uniq]: Report / omit repeated lines.

[awk]: https://www.gnu.org/software/gawk/manual/gawk.html
[csvkit]: https://csvkit.readthedocs.io/en/latest/
[curl]: https://curl.se/docs/manpage.html
[find]: https://www.man7.org/linux/man-pages/man1/find.1.html
[grep]: https://man7.org/linux/man-pages/man1/grep.1.html
[jq]: https://jqlang.github.io/jq/
[mktemp]: https://www.gnu.org/software/autogen/mktemp.html
[nc]: https://manpages.debian.org/stretch/netcat-traditional/nc.1.en.html
[sed]: https://www.gnu.org/software/sed/manual/sed.html
[ss]: https://man7.org/linux/man-pages/man8/ss.8.html
[uniq]: https://man7.org/linux/man-pages/man1/uniq.1.html

## Datasets

For some of these exercises, there will be datasets required to do the work.  You may use your own datasets and adapt, but I include the datasets in this repo.

