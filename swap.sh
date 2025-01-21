#!/usr/bin/env bash

mv ~/.config/rofi/theme.rasi ~/.config/rofi/temp.rasi
mv ~/.config/rofi/themeAlternate.rasi ~/.config/rofi/theme.rasi
mv ~/.config/rofi/temp.rasi ~/.config/rofi/themeAlternate.rasi

mv ~/.config/rofi/styles/style_1.rasi ~/.config/rofi/styles/temp.rasi
mv ~/.config/rofi/styles/style_1Alternate.rasi ~/.config/rofi/styles/style_1.rasi
mv ~/.config/rofi/styles/temp.rasi ~/.config/rofi/styles/style_1Alternate.rasi
