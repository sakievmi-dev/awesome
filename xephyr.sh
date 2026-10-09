#!/bin/bash
Xephyr :5 -screen 1920x1080 -dpi 96 -f & sleep 1; DISPLAY=:5 awesome --config ./rc.lua --search ./
