>mirrored from: https://gist.github.com/djfdyuruiry/6720faa3f9fc59bfdf6284ee1f41f950

# Enable `systemd` in WSL 2

This guide will enable `systemd` to run as normal under WSL 2. This will enable services like `microk8s`, `docker` and many more to `just work` during a WSL session. Note: this was tested on Windows 10 Build 2004, running Ubuntu 20.04 LTS in WSL 2.

- To enable `systemd` under WSL we require a tool called `systemd-genie`

- Copy the contents of `install-sg.sh` to a new file `/tmp/install-sg.sh`:

  ```bash
  cd /tmp
  wget --content-disposition \
    "https://gist.githubusercontent.com/djfdyuruiry/6720faa3f9fc59bfdf6284ee1f41f950/raw/952347f805045ba0e6ef7868b18f4a9a8dd2e47a/install-sg.sh"
  ```

- Make it executable:

  ```bash
  chmod +x /tmp/install-sg.sh
  ```

- Run the new script:

  ```bash
  /tmp/install-sg.sh && rm /tmp/install-sg.sh
  ```

- Exit the WSL terminal and shutdown the WSL env:

  ```bash
  wsl --shutdown
  ```

- To open a new WSL terminal with `systemd` enabled, run:

  ```powershell
  wsl genie -s
  ```

- Prove that it works:

  ```bash
  sudo systemctl status time-sync.target
  ```
