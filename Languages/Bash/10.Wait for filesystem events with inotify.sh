#!/bin/bash

# Запустить скрипт. Зайти с другого терминала в созданную папку, создать что-нибудь и посмотреть на информацию в скрипте.

mkdir -p /temp/NewFolder
inotifywait -m /temp/NewFolder

