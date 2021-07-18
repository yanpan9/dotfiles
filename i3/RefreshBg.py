#!/usr/bin/python

import os
import random

from typing import List

def get_wallpapers_from_path(wallpaper_path: str) -> List[str]:
    lst_files = os.listdir(wallpaper_path)
    return [ele for ele in lst_files if ele.endswith(".jpg") or ele.endswith(".png") ]

def get_random_index(wallpaper_count: int) -> int:
    return random.randint(0, wallpaper_count-1)

def set_wallpaper_with_feh(wallpaper_path: str) -> bool:
    cmd = f"feh --bg-scale {wallpaper_path}"
    return bool(os.system(cmd))

if __name__ == "__main__":
    WALLPAPER_PATH = "/home/yanpan/Pictures/WallPapers"
    lst_wallpapers = get_wallpapers_from_path(WALLPAPER_PATH)
    chosen_wallpaper = get_random_index(len(lst_wallpapers))
    chosen_wallpaper_path = os.path.join(WALLPAPER_PATH, lst_wallpapers[chosen_wallpaper])
    set_wallpaper_with_feh(chosen_wallpaper_path)