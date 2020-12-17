Turn-key deployment of foundational development environment for fresh WSL2 installs.

Steps:
- Disable `$USER` password requirement for sudo operations
- Clone Github credentials from Windows `.gitconfig`
- Modernisation of Ubuntu 20.04 via `apt-get`
- Install shell:
  - [ZSH](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
  - [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
  - [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
  - Clone predefined config via [`.zshrc`](https://github.com/trackness/wsl2_deploy/blob/master/.zshrc) and [`.p10k.zsh`](https://github.com/trackness/wsl2_deploy/blob/master/.p10k.zsh) in this repo
- Install dev tools:
  - [Go]() (via [custom source](https://launchpad.net/~longsleep/+archive/ubuntu/golang-backports))
  - [tfswitch](https://tfswitch.warrensbox.com/)
    - Install and set Terraform 0.13.5
  - [pyenv](https://github.com/pyenv/pyenv)
    - Install and set Python 3.9.0
  - [Poetry](https://python-poetry.org/)
  - VS Code Server
    - Currently will also open VS Code
- Execute ZSH

To initiate, run:

```sh
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null; bash -c "$(curl -fsSL https://raw.githubusercontent.com/trackness/wsl2_deploy/master/deploy)"
```