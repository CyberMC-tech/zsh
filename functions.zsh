nalafzf(){
  sudo nala install $(apt list | cut --delimiter="/" --fields=1 | fzf --reverse --multi --preview="nala show {}")
}


parufzf(){
  paru -S $(paru -Sl | awk '{print $2}' | fzf --multi --reverse --preview="paru -Si {}")
}


cd(){
  builtin cd "$@"
  lsd --icon=always --color=always --hyperlink=always
  if [ -d ".venv" ]; then
    source "$PWD/.venv/bin/activate"
  else
    deactivate &> /dev/null
  fi
}

newvenv(){
  python -m venv .venv
  cd "$PWD"
}

ls(){
  lsd --icon=always --color=always --hyperlink=always
}

ll(){
  lsd --icon=always --color=always --hyperlink=always -A -l
}

la(){
  lsd --icon=always --color=always --hyperlink=always -A
}

lt(){
  lsd --icon=always --color=always --hyperlink=always --tree
}

