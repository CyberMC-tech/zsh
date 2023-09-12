function nalafzf(){
  sudo nala install $(apt list | cut --delimiter="/" --fields=1 | fzf --reverse --multi --preview="nala show {}")
}


function parufzf(){
  paru -S $(paru -Sl | awk '{print $2}' | fzf --multi --reverse --preview="paru -Si {}")
}


function cd(){
  __zoxide_z "$@"
  lsd --icon=always --color=always --hyperlink=always
  if [ -d ".venv" ]; then
    source "$PWD/.venv/bin/activate"
  else
    deactivate &> /dev/null
    source "$HOME/.config/zsh/.venv/bin/activate"
  fi
}

function newvenv(){
  python -m venv .venv
  cd "$PWD"
}

function ls(){
  lsd --icon=always --color=always --hyperlink=always $1
}

function ll(){
  lsd --icon=always --color=always --hyperlink=always -A -l $1
}

function la(){
  lsd --icon=always --color=always --hyperlink=always -A $1
}

function lt(){
  lsd --icon=always --color=always --hyperlink=always --tree $1
}

function hserve(){
  python -m http.server &
  firefox http://0.0.0.0:8000/ &
}

function xerosploit(){
  cd /home/hackingtool/xerosploit
  sudo /usr/bin/xerosploit
}

function autophisher(){
  sudo bash /home/hackingtool/autophisher/autophisher.sh
}

function rhawk(){
  sudo php /home/hackingtool/RED_HAWK/rhawk.php
}

function pyphisher(){
  sudo python /home/hackingtool/PyPhisher/pyphisher.py
}

# Search through all man pages
function fman() {
    man -k . | fzf -q "$1" --prompt='man> '  --preview $'echo {} | tr -d \'()\' | awk \'{printf "%s ", $2} {print $1}\' | xargs -r man' | tr -d '()' | awk '{printf "%s ", $2} {print $1}' | xargs -r man
}
