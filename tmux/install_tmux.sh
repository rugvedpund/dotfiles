curl -s https://api.github.com/repos/nelsonenzo/tmux-appimage/releases/latest \
    | grep "browser_download_url.*appimage" \
    | cut -d : -f 2,3 \
    | tr -d \" \
    | wget -qi - \
    && chmod +x tmux.appimage
