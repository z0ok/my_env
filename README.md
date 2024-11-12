# my_env
Some scripts and configs to setup terminal and etc.


# OhMyZsh

My custom theme, based on default kali with date:time.

```
┌──[kali@hostname]─[10:00 01.01.24]─[/home/kali/]
└─$ 
```

## How to

1) Install [oh-my-zsh](https://ohmyz.sh/#install);
2) Add theme file to `/home/[USER]/.oh-my-zsh/themes`:
```
wget https://raw.githubusercontent.com/z0ok/my_env/refs/heads/main/z0ok.zsh-theme -O ~/.oh-my-zsh/themes/z0ok.zsh-theme
```
3) Change theme in `.zshrc`. Replace `ZSH_THEME="robbyrussell"` with `ZSH_THEME="z0ok"`. Example:

```
sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"z0ok\"/" ~/.zshrc
```

# Only Zsh

Add time without oh-my-zsh package.

```
┌──(kali@hostname)-[12/11 7:03]-[/home/kali]
└─$ 
```

Open `~/.zshrc`, find function `configure_prompt()` and lines:

```
        twoline)
            PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroo
```

You have to add time-date description to this line:

```
-[%D{%f/%m} %D{%L:%M}]-
```

Result:

```
PROMPT=$'%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n'$prompt_symbol$'%m%b%F{%(#.blue.green)})-[%D{%f/%m} %D{%L:%M}]-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]\n└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} '
```