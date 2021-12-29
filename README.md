# spectrwm

These are my configuration files for the spectrwm window manager. This is mainly
a dotfiles repo, but I feel it deserves its own repository.

spectrwm is a tiling window manager. In order to install it, you can use your
system's package repositories. To do so, you can type in the following commands
with root privileges.

### Arch Linux:
```
pacman -S spectrwm
```

### Debian/Ubuntu:
```
apt-get install spectrwm
```

### OpenBSD:
```
pkg_add spectrwm
```

For other systems or more information, check out
[their official repository](https://github.com/conformal/spectrwm).

### Features:

#### baraction.R

- [x] Date and time
- [x] RAM usage
- [ ] Battery level
- [x] Volume
- [ ] CPU
- [ ] Check for battery presence
- [ ] Add different colors for RAM and CPU usage levels
- [ ] Current window name and class
- [ ] List of workspaces

#### baraction.py

- [x] Date and time
- [x] RAM usage
- [x] Battery level
- [ ] Volume
- [ ] CPU
- [ ] Check for battery presence
- [ ] Add different colors for RAM and CPU usage levels
- [ ] Current window name and class
- [ ] List of workspaces

For now, only the right side of the top bar was implemented by me, in two
distinct languages. Though, in time, I intend to add quite a few more
information, according to my tastes.
