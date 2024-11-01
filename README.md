# My Powershell setup

## Programs to add to `C:\tools\`

These are the tools I've added to my toolbox to improve my experience from the commandline:

### batcat (bat)

A tool for printing text-files directly to the terminal that understands some file-formats and can pretty-print the text. If the text is more than can fit on the screen without scrolling, it will automatically show the content using a pager (like **less**).

[GitHub - sharkdp/bat: A cat(1) clone with wings.](https://github.com/sharkdp/bat)

### broot (br)

A pretty darn amazing file navigation tool while working from the commandline

[GitHub - Canop/broot: A new way to see and navigate directory trees : https://dystroy.org/broot](https://github.com/Canop/broot)

### delta

As the name implies, is used to show differences between versions of a file (primarily).

Is built for the needs of git and developers, so it supports syntax-highlighting for the most common languages and just provides a nice to read output when looking at changes done in a git-repository.

[GitHub - dandavison/delta: A syntax-highlighting pager for git, diff, grep, and blame output](https://github.com/dandavison/delta)

### dua

**D**isk **U**sage **A**nalyzer, or **dua**, is a tool for finding out where the space is being used and to quickly be able to delete unwanted space-thieves.

[GitHub - Byron/dua-cli: View disk space usage and delete unwanted data, fast.](https://github.com/Byron/dua-cli)

### duf

**duf** only checks to see how large the connected storage units are and their total usage and then presents it in a easy to understand format.

[GitHub - muesli/duf: Disk Usage/Free Utility - a better &#39;df&#39; alternative](https://github.com/muesli/duf)

### dust

**dust** is a different take on **du** and **dua**, but it only focuses on presenting the data, whereas **dua** also helps with removing data from the storage device.

[GitHub - bootandy/dust: A more intuitive version of du in rust](https://github.com/bootandy/dust)

### eza

A file-lister with a lot of modern functionality to fit the needs of developers when working from the commandline

[GitHub - eza-community/eza: A modern alternative to ls](https://github.com/eza-community/eza)

### fd

A fast and really simple searching tool. Most of its functionality could be replaced by simply using fzf + PSFzf, but it has some tricks up its sleave (and it works in Powershell + cmd, which is appreciated).

[GitHub - sharkdp/fd: A simple, fast and user-friendly alternative to &#39;find&#39;](https://github.com/sharkdp/fd)

### fzf + PSFzf

**fzf** is a Fuzzy Finder, an exceptional search tool to find things, even when you've misspelled something.

First, you'll need the fzf.exe for this to work at all, **PSFzf** is just a great addon to Powershell to make it even more usable.

[GitHub - junegunn/fzf: :cherry_blossom: A command-line fuzzy finder](https://github.com/junegunn/fzf)

[GitHub - kelleyma49/PSFzf: A PowerShell wrapper around the fuzzy finder fzf](https://github.com/kelleyma49/PSFzf)

### jq , xq, yq

Tools for querying JSON, XML and YAML.

[GitHub - jqlang/jq: Command-line JSON processor](https://github.com/jqlang/jq)

[GitHub - sibprogrammer/xq: Command-line XML and HTML beautifier and content extractor](https://github.com/sibprogrammer/xq)

[GitHub - mikefarah/yq: yq is a portable command-line YAML, JSON, XML, CSV, TOML and properties processor](https://github.com/mikefarah/yq)

### lazygit

A TUI (text based user-interface) for working with a git-repository. For those who want to work from the commandline and want/need an easier way to work with the repository.

[GitHub - jesseduffield/lazygit: simple terminal UI for git commands](https://github.com/jesseduffield/lazygit)

### less

A text-pager, meant to be used when you need to view the contents of a file that takes up more space than the console/commandline window currently can show without scrolling.

[GitHub - jftuga/less-Windows: GNU less compiled for Windows 10 &amp; 11. Stand-alone version with no dependencies.](https://github.com/jftuga/less-Windows)

### procs

For most Windows-users, this might feel unneccessary, but for an "old unix-tech", it just feels right when you're looking at whats currently running on the machine.

[GitHub - dalance/procs: A modern replacement for ps written in Rust](https://github.com/dalance/procs)

### rare

**rare** is one of those tools you'll just want when trying to do some analysis on logs.

[GitHub - zix99/rare: Create console histograms, bar graphs, tables, heatmaps and more in realtime using regex and expressions.](https://github.com/zix99/rare)

### ripgrep

**ripgrep** is a stupidly fast search tool that supports regular expressions and understands some code-revelant stuff, such as **.gitignore**

[GitHub - BurntSushi/ripgrep: ripgrep recursively searches directories for a regex pattern while respecting your gitignore](https://github.com/BurntSushi/ripgrep)

### starship.rs

This one is primarily to make sure I'm always aware of what repo+branch I'm currently working in, but it has a lot of additional options to make the commandline feel a little nicer. It works in more than just Powershell, so if you use for example Bash, the same config would work there too.

https://starship.rs/

### tokei

Code Line Counter/Analyzer that is both quick and presents the data per programming language.

[GitHub - XAMPPRocky/tokei: Count your code, quickly.](https://github.com/XAMPPRocky/tokei)
