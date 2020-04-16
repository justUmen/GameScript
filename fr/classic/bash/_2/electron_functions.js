function funcjs_14_ls(){
funcjs_110_man_ls;
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_16_ls___(){
GS_text.innerHTML += `<hr>
Desktop  Documents  Downloads  Music  Videos
<hr>`;}
function funcjs_19_ls____(){
GS_text.innerHTML += `<hr>
Desktop  Documents  Downloads  Music  Videos
<hr>`;}
function funcjs_28_ls__(){
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_30_ls___(){
GS_text.innerHTML += `<hr>
bOb
<hr>`;}
function funcjs_34_rm___bOb(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_37_ls(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_39_pwd(){
GS_text.innerHTML += `<hr>
/home/example/.GameScript_bash2
<hr>`;}
function funcjs_44_mkdir_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_46_cd_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_48_pwd(){
GS_text.innerHTML += `<hr>
/home/example/.GameScript_bash2/enfant
<hr>`;}
function funcjs_50_cd______(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_52_pwd(){
GS_text.innerHTML += `<hr>
/home/example/.GameScript_bash2
<hr>`;}
function funcjs_56_ls(){
GS_text.innerHTML += `<hr>
Desktop  Documents  Downloads  Music  Videos
<hr>`;}
function funcjs_63_ls__a(){
GS_text.innerHTML += `<hr>
.bashrc  Desktop  Documents  Downloads  .config  .GameScript_bash2  Music  .profile  Videos  .Xresources
<hr>`;}
function funcjs_70_cd____GameScript_bash2(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_75_ls__a(){
GS_text.innerHTML += `<hr>
.  ..  enfant
<hr>`;}
function funcjs_84_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_86_pwd(){
GS_text.innerHTML += `<hr>
/home/example
<hr>`;}
function funcjs_91_rmdir__GameScript_bash2_enfant(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_93_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_95_rmdir____GameScript_bash2(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_99_ls__a(){
GS_text.innerHTML += `<hr>
.  ..  bin  boot  dev  etc  home  initrd.img  lib  media  mnt  opt  proc  root  run  sbin  tmp  usr  var  vmlinuz
<hr>`;}
function funcjs_103_ls___all__HOME(){
GS_text.innerHTML += `<hr>
.bashrc  Desktop  Documents  Downloads  .config  .GameScript_bash2  Music  .profile  Videos  .Xresources
<hr>`;}
function funcjs_110_man_ls(){
document.getElementById('GS_man').innerHTML = `
LS(1)                           User Commands                          LS(1)
NAME         top
       ls - list directory contents
SYNOPSIS         top
       ls [OPTION]... [FILE]...
DESCRIPTION         top
       List information about the FILEs (the current directory by default).
       Sort entries alphabetically if none of -cftuvSUX nor --sort is
       specified.

       Mandatory arguments to long options are mandatory for short options
       too.

       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..

       --author
              with -l, print the author of each file

       -b, --escape
              print C-style escapes for nongraphic characters

       --block-size=SIZE
              with -l, scale sizes by SIZE when printing them; e.g.,
              '--block-size=M'; see SIZE format below

       -B, --ignore-backups
              do not list implied entries ending with ~

       -c     with -lt: sort by, and show, ctime (time of last modification
              of file status information); with -l: show ctime and sort by
              name; otherwise: sort by ctime, newest first

       -C     list entries by columns

       --color[=WHEN]
              colorize the output; WHEN can be 'always' (default if
              omitted), 'auto', or 'never'; more info below

       -d, --directory
              list directories themselves, not their contents

       -D, --dired
              generate output designed for Emacs' dired mode

       -f     do not sort, enable -aU, disable -ls --color

       -F, --classify
              append indicator (one of */=>@|) to entries

       --file-type
              likewise, except do not append '*'

       --format=WORD
              across -x, commas -m, horizontal -x, long -l, single-column
              -1, verbose -l, vertical -C

       --full-time
              like -l --time-style=full-iso

       -g     like -l, but do not list owner

       --group-directories-first
              group directories before files;

              can be augmented with a --sort option, but any use of
              --sort=none (-U) disables grouping

       -G, --no-group
              in a long listing, don't print group names

       -h, --human-readable
              with -l and -s, print sizes like 1K 234M 2G etc.

       --si   likewise, but use powers of 1000 not 1024

       -H, --dereference-command-line
              follow symbolic links listed on the command line

       --dereference-command-line-symlink-to-dir
              follow each command line symbolic link

              that points to a directory

       --hide=PATTERN
              do not list implied entries matching shell PATTERN (overridden
              by -a or -A)

       --hyperlink[=WHEN]
              hyperlink file names; WHEN can be 'always' (default if
              omitted), 'auto', or 'never'

       --indicator-style=WORD
              append indicator with style WORD to entry names: none
              (default), slash (-p), file-type (--file-type), classify (-F)

       -i, --inode
              print the index number of each file

       -I, --ignore=PATTERN
              do not list implied entries matching shell PATTERN

       -k, --kibibytes
              default to 1024-byte blocks for disk usage; used only with -s
              and per directory totals

       -l     use a long listing format

       -L, --dereference
              when showing file information for a symbolic link, show
              information for the file the link references rather than for
              the link itself

       -m     fill width with a comma separated list of entries

       -n, --numeric-uid-gid
              like -l, but list numeric user and group IDs

       -N, --literal
              print entry names without quoting

       -o     like -l, but do not list group information

       -p, --indicator-style=slash
              append / indicator to directories

       -q, --hide-control-chars
              print ? instead of nongraphic characters

       --show-control-chars
              show nongraphic characters as-is (the default, unless program
              is 'ls' and output is a terminal)

       -Q, --quote-name
              enclose entry names in double quotes

       --quoting-style=WORD
              use quoting style WORD for entry names: literal, locale,
              shell, shell-always, shell-escape, shell-escape-always, c,
              escape (overrides QUOTING_STYLE environment variable)

       -r, --reverse
              reverse order while sorting

       -R, --recursive
              list subdirectories recursively

       -s, --size
              print the allocated size of each file, in blocks

       -S     sort by file size, largest first

       --sort=WORD
              sort by WORD instead of name: none (-U), size (-S), time (-t),
              version (-v), extension (-X)

       --time=WORD
              change the default of using modification times; access time
              (-u): atime, access, use; change time (-c): ctime, status;
              birth time: birth, creation;

              with -l, WORD determines which time to show; with --sort=time,
              sort by WORD (newest first)

       --time-style=TIME_STYLE
              time/date format with -l; see TIME_STYLE below

       -t     sort by time, newest first; see --time

       -T, --tabsize=COLS
              assume tab stops at each COLS instead of 8

       -u     with -lt: sort by, and show, access time; with -l: show access
              time and sort by name; otherwise: sort by access time, newest
              first

       -U     do not sort; list entries in directory order

       -v     natural sort of (version) numbers within text

       -w, --width=COLS
              set output width to COLS.  0 means no limit

       -x     list entries by lines instead of by columns

       -X     sort alphabetically by entry extension

       -Z, --context
              print any security context of each file

       -1     list one file per line.  Avoid '\n' with -q or -b

       --help display this help and exit

       --version
              output version information and exit

       The SIZE argument is an integer and optional unit (example: 10K is
       10*1024).  Units are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,...
       (powers of 1000).  Binary prefixes can be used, too: KiB=K, MiB=M,
       and so on.

       The TIME_STYLE argument can be full-iso, long-iso, iso, locale, or
       +FORMAT.  FORMAT is interpreted like in date(1).  If FORMAT is
       FORMAT1<newline>FORMAT2, then FORMAT1 applies to non-recent files and
       FORMAT2 to recent files.  TIME_STYLE prefixed with 'posix-' takes
       effect only outside the POSIX locale.  Also the TIME_STYLE
       environment variable sets the default style to use.

       Using color to distinguish file types is disabled both by default and
       with --color=never.  With --color=auto, ls emits color codes only
       when standard output is connected to a terminal.  The LS_COLORS
       environment variable can change the settings.  Use the dircolors
       command to set it.

   Exit status:
       0      if OK,

       1      if minor problems (e.g., cannot access subdirectory),

       2      if serious trouble (e.g., cannot access command-line
              argument).
AUTHOR         top
       Written by Richard M. Stallman and David MacKenzie.
REPORTING BUGS         top
       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
       Report any translation bugs to <https://translationproject.org/team/>
COPYRIGHT         top
       Copyright © 2020 Free Software Foundation, Inc.  License GPLv3+: GNU
       GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.
       There is NO WARRANTY, to the extent permitted by law.
SEE ALSO         top
       Full documentation <https://www.gnu.org/software/coreutils/ls>
       or available locally via: info '(coreutils) ls invocation'
COLOPHON         top
       This page is part of the coreutils (basic file, shell and text
       manipulation utilities) project.  Information about the project can
       be found at ⟨http://www.gnu.org/software/coreutils/⟩.  If you have a
       bug report for this manual page, see
       ⟨http://www.gnu.org/software/coreutils/⟩.  This page was obtained
       from the tarball coreutils-8.32.tar.xz fetched from
       ⟨http://www.gnutls.org/download.html⟩ on 2020-04-11.  If you discover
       any rendering problems in this HTML version of the page, or you
       believe there is a better or more up-to-date source for the page, or
       you have corrections or improvements to the information in this
       COLOPHON (which is not part of the original manual page), send a mail
       to man-pages@man7.org

GNU coreutils 8.32               March 2020                            LS(1)
`;
document.getElementById('GS_man').style.display="inline-block";
document.addEventListener('keyup', (event) => {
    if (event.key == 'q') {
        document.getElementById('GS_man').style.display = "none";
    }
});
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_117_man_rmdir(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_120_rmdir___help(){
GS_text.innerHTML += `<hr>
Usage: rmdir [OPTION]... DIRECTORY...
Remove the DIRECTORY(ies), if they are empty.

      --ignore-fail-on-non-empty
                  ignore each failure that is solely because a directory
                    is non-empty
  -p, --parents   remove DIRECTORY and its ancestors; e.g., 'rmdir -p a/b/c' is
                    similar to 'rmdir a/b/c a/b a'
  -v, --verbose   output a diagnostic for every directory processed
      --help     display this help and exit
      --version  output version information and exit

GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
Full documentation at: <http://www.gnu.org/software/coreutils/rmdir>
or available locally via: info '(coreutils) rmdir invocation'
<hr>`;}
function funcjs_123_cd__(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_125_ls(){
GS_text.innerHTML += `<hr>
bin  boot  dev  etc  home  initrd.img  lib  media  mnt  opt  proc  root  run  sbin  tmp  usr  var  vmlinuz
<hr>`;}
function funcjs_129_man_ls(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_134_ls__w_1(){
GS_text.innerHTML += `<hr>
bin
boot
dev
etc
home
initrd.img
lib
media
mnt
opt
proc
root
run
sbin
tmp
usr
var
vmlinuz
<hr>`;}
function funcjs_136_ls__w_100(){
GS_text.innerHTML += `<hr>
bin  boot  dev  etc  home  initrd.img  lib
media  mnt  opt  proc  root  run  sbin  tmp
usr  var  vmlinuz
<hr>`;}
function funcjs_139_ls___width_100(){
GS_text.innerHTML += `<hr>
bin  boot  dev  etc  home  initrd.img  lib
media  mnt  opt  proc  root  run  sbin  tmp
usr  var  vmlinuz
<hr>`;}
