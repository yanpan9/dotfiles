sudo cp ./system/frp.service /usr/lib/systemd/system/
sudo systemctl enable frp
sudo systemctl start frp

sudo cp ./user/notebook.service /usr/lib/systemd/user/
systemctl --user enable notebook
systemctl --user start notebook


sudo cp ./user/background.service /usr/lib/systemd/user/
systemctl --user enable background
systemctl --user start background
