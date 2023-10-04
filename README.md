# Command Line Exercises

Exercises to help me remember all the command line tools.  Hope that it'll help you as well!

**There are multiple possible tools, multiple possible shells to use, and multiple possible solutions even using the same tools and shells.**

I'll be using `zsh` and some of the tools below when thinking about these questions, but you may use whatever you'd like.

## Common Tools

Some tools I'll be using:

- [**awk**][awk]: Data-driven scripting language (and associated tool) which takes action against streams of text data.  tl;dr: You can do ETL stuff with streams of text.

- [**sed**][sed]: Stream editor: replace things in a stream.  tl;dr find-replace.

- [**curl**][curl]: Download from the internet.

- [**find**][find]: Search for files in a directory hierarchy.

- [**uniq**][uniq]: Report / omit repeated lines.

- [**grep**][grep]: Find patterns of text in a file.

- [**csvkit**][csvkit]: Do a bunch of cool things with csv files.

- [**jq**][jq]: Do awesome stuff with json.

[awk]: https://www.gnu.org/software/gawk/manual/gawk.html
[sed]: https://www.gnu.org/software/sed/manual/sed.html
[curl]: https://curl.se/docs/manpage.html
[find]: https://www.man7.org/linux/man-pages/man1/find.1.html
[uniq]: https://man7.org/linux/man-pages/man1/uniq.1.html
[grep]: https://man7.org/linux/man-pages/man1/grep.1.html
[csvkit]: https://csvkit.readthedocs.io/en/latest/
[jq]: https://jqlang.github.io/jq/

## Datasets

For some of these exercises, there will be datasets required to do the work.  You may use your own datasets and adapt, but I include the datasets in this repo.

## Exercises

For now, these are unorganized.  Maybe I'll organize them in the future.

### Exercise 001

1. Print the contents of `simple_1.json` file in the terminal.

2. Return the value of `type` in the JSON.  (*Hint: can use `jq` here.*)

### Exercise 002

1. Print the contents of `simple_2.json` file in the terminal.

2. Return a list of all values of `type`.  (*Hint: can use `jq` here.*)

3. Return a list of all *unique* values of `type`.

4. Return an alphabetized list of all *unique* values of `type`.

### Exercise 003
