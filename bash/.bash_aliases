# placed in bashrc
#alias l="ls -l"
#alias la="ls -la"

alias HELP_ME='less ~/.bash_aliases'
alias E="$EXPLORER . &>/dev/null &"
alias cls=clear
alias v="vim"
alias q="rm -fv *~ .*~"
alias mkcd="mkdir $1 && cd $1"
alias ide="antigravity &"

alias cist-today="firefox https://cist.nure.ua/ias/app/tt/f?p=778:201:3253819651331865:::201:P201_FIRST_DATE,P201_LAST_DATE,P201_GROUP,P201_POTOK:$(date +%d.%m.%Y),$(date +%d.%m.%Y),11415520,0:"
alias cist-zavtra="firefox https://cist.nure.ua/ias/app/tt/f?p=778:201:3253819651331865:::201:P201_FIRST_DATE,P201_LAST_DATE,P201_GROUP,P201_POTOK:$(date +%d.%m.%Y),$(date -d 'next day' +%d.%m.%Y),11415520,0:"
alias cist="firefox https://cist.nure.ua/ias/app/tt/f?p=778:201:3253819651331865:::201:P201_FIRST_DATE,P201_LAST_DATE,P201_GROUP,P201_POTOK:$(date -d 'last monday' +%d.%m.%Y),$(date -d 'sunday' +%d.%m.%Y),11415520,0:"
alias cist-next_week="firefox https://cist.nure.ua/ias/app/tt/f?p=778:201:3253819651331865:::201:P201_FIRST_DATE,P201_LAST_DATE,P201_GROUP,P201_POTOK:$(date -d 'next monday' +%d.%m.%Y),$(date -d 'next sunday+1week' +%d.%m.%Y),11415520,0:"

# guide
# prog >/dev/null 2>/dev/null &
# the same is prog >/dev/null 2>&1 &
# or just prog &>/dev/null &
#
tarcgz() {
    tar -czvf "$@"
}
tarcxz() {
    tar -cJvf "$@"
}
tarxgz() {
    tar -xzvf "$@"
}
tarxxz() {
    tar -xJvf "$@"
}
youtube() {
    $BROWSER -new-window "https://www.youtube.com/results?search_query=$*" &>/dev/null &
}
nure() {
    cist-today
    $BROWSER -new-tab 'https://gemini.google.com/app' &>/dev/null &
    $BROWSER -new-window 'https://dl.nure.ua/my/courses.php' &>/dev/null &
}

komit() {
    git add . &&
    git commit -m "$*" &&
    git push
}

y-video() {
    yt-dlp -t mp4 "$@"
}
y-audio() {
    yt-dlp -t mp3 "$@"
}

# for assembler:
# nasmork() {
#     for f in "$@"; do
#         nasm -f elf -g "$f"
#     done
#     ld -m elf_i386 "${@/.asm/.o}" -o prog
#     rm -f *.o
# }
