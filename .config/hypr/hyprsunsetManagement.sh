# ============================================================ #
#                                                              #
#     Script to turn on and off hyprsunset                     #
#     by E. Sauthier                                           #
#                                                              #
# ============================================================ #

process="$(pidof hyprsunset | tr -d '\n')"
if [[ -z "${process// /}" ]]; then
  hyprsunset --temperature 5000
else
  killall hyprsunset
fi
