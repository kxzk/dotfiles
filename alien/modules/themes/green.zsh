#!/usr/bin/env zsh

# solarized_light

alien_theme(){
  [[ -z $color0 ]]  && color0=007    # time bg
  [[ -z $color1 ]]  && color1=244    # init bg
  [[ -z $color1r ]] && color1r=226   # init bg error
  [[ -z $color2 ]]  && color2=016    # time fg
  [[ -z $color3 ]]  && color3=006    # user bg
  [[ -z $color4 ]]  && color4=255    # user fg
  [[ -z $color5 ]]  && color5=4    # dir bg
  [[ -z $color6 ]]  && color6=255    # dir fg
  [[ -z $color7 ]]  && color7=7    # vcs bg
  [[ -z $color8 ]]  && color8=004    # prompt fg
  [[ -z $color9 ]]  && color9=4    # vcs fg
  [[ -z $color10 ]] && color10=244   # lr bg
  [[ -z $color11 ]] && color11=255   # lr fg
  [[ -z $color12 ]] && color12=253   # dirty copy bg
  [[ -z $color13 ]] && color13=016   # dirty copy fg
  [[ -z $color14 ]] && color14=5   # venv color
  
  [[ -z "${PLIB_GIT_TRACKED_COLOR}" ]]   && PLIB_GIT_TRACKED_COLOR=64
  [[ -z "${PLIB_GIT_UNTRACKED_COLOR}" ]] && PLIB_GIT_UNTRACKED_COLOR=236
}
