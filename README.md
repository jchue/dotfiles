# dotfiles

- **OS:** Arch
- **WM:** i3-gaps
- **Compositor:** picom
- **Bar:** polybar
- **Notifications:** dunst
- **Terminal:** Alacritty
- **File Manager:** Thunar
- **Application Launcher:** Rofi
- **Web Browser:** Firefox
- **Music Player:** Spotify with Spicetify
- **Font:** Cozette

## Colors

**Forester**

|Color      |Normal                                                                    |Bright                                                                    |
|-----------|--------------------------------------------------------------------------|--------------------------------------------------------------------------|
|Foreground |![#a8a397](https://via.placeholder.com/15/a8a397/000000?text=+) `#a8a397` |![#d8d3c7](https://via.placeholder.com/15/d8d3c7/000000?text=+) `#d8d3c7` |
|Background |![#141414](https://via.placeholder.com/15/141414/000000?text=+) `#141414` |![#191919](https://via.placeholder.com/15/191919/000000?text=+) `#191919` |
|Black      |![#1d2021](https://via.placeholder.com/15/1d2021/000000?text=+) `#1d2021` |![#363a3c](https://via.placeholder.com/15/363a3c/000000?text=+) `#363a3c` |
|Red        |![#5c201b](https://via.placeholder.com/15/5c201b/000000?text=+) `#5c201b` |![#927572](https://via.placeholder.com/15/927572/000000?text=+) `#927572` |
|Green      |![#5f5a2f](https://via.placeholder.com/15/5f5a2f/000000?text=+) `#5f5a2f` |![#a1a6a0](https://via.placeholder.com/15/a1a6a0/000000?text=+) `#a1a6a0` |
|Yellow     |![#845d2b](https://via.placeholder.com/15/845d2b/000000?text=+) `#845d2b` |![#cdc4b8](https://via.placeholder.com/15/cdc4b8/000000?text=+) `#cdc4b8` |
|Blue       |![#253847](https://via.placeholder.com/15/253847/000000?text=+) `#253847` |![#636c75](https://via.placeholder.com/15/636c75/000000?text=+) `#636c75` |
|Magenta    |![#52536b](https://via.placeholder.com/15/52536b/000000?text=+) `#52536b` |![#9596a9](https://via.placeholder.com/15/9596a9/000000?text=+) `#9596a9` |
|Cyan       |![#2c3632](https://via.placeholder.com/15/2c3632/000000?text=+) `#2c3632` |![#52645d](https://via.placeholder.com/15/52645d/000000?text=+) `#52645d` |
|White      |![#a8a397](https://via.placeholder.com/15/a8a397/000000?text=+) `#a8a397` |![#d8d3c7](https://via.placeholder.com/15/d8d3c7/000000?text=+) `#d8d3c7` |

## Installation

### Firefox

Custom styles can be found at `$HOME/.mozilla/firefox/<profile_id>.default-release/chrome/userChrome.css`, where `<profile_id>` is a random string. Therefore, the `chrome` directory in this repository is under a directory named merely `.default-release`, requiring a symbolic link:


```bash
ln -s $HOME/.mozilla/firefox/.default-release/chrome $HOME/.mozilla/firefox/<profile_id>.default-release/chrome
```

Then ensure `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true` in `about:config`.

### Thunderbird

Thunderbird is similar to Firefox, where custom styles are defined in `userChrome.css`, located under a unique `.default-release` directory. So the same symoblic linking techique is required:

```bash
ln -s $HOME/.thunderbird/.default-release/chrome $HOME/.thunderbird/<profile_id>.default-release/chrome
```

Then ensure `toolkit.legacyUserProfileCustomizations.stylesheets` is set to `true` in Preferences -> Config Editor.

### Spicetify

After installation, ensure read and write permissions are enabled for the following directories (or wherever the Spotify client is located)::

```bash
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
```
