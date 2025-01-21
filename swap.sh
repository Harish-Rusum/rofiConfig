#!/usr/bin/env bash

mv theme.rasi temp.rasi
mv themeAlternate.rasi theme.rasi
mv temp.rasi themeAlternate.rasi

mv styles/style_1.rasi styles/temp.rasi
mv styles/style_1Alternate.rasi styles/style_1.rasi
mv styles/temp.rasi styles/style_1Alternate.rasi
