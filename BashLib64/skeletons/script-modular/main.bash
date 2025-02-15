#
###[ embedded-bashlib64-end ]#####################
#

#
# Main
#

declare -i X_APP_NAMESPACE_X_status=1
declare X_APP_NAMESPACE_X_debug="$BL64_DBG_TARGET_NONE"
declare X_APP_NAMESPACE_X_verbose="$BL64_MSG_VERBOSE_APP"
declare X_APP_NAMESPACE_X_option=''
declare X_APP_NAMESPACE_X_command="$BL64_VAR_NULL"
declare X_APP_NAMESPACE_X_X_OPTION_X=''
declare X_APP_NAMESPACE_X_X_FLAG_X='0'

(($# == 0)) && X_APP_NAMESPACE_X_help && exit 1
while getopts ':xwy:zV:D:h' X_APP_NAMESPACE_X_option; do
  case "$X_APP_NAMESPACE_X_option" in
  x) X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND1_X' ;;
  w) X_APP_NAMESPACE_X_command='X_APP_NAMESPACE_X_X_FUNCTION_COMMAND2_X' ;;
  y) X_APP_NAMESPACE_X_X_OPTION_X="$OPTARG" ;;
  z) X_APP_NAMESPACE_X_X_FLAG_X='1' ;;
  V) X_APP_NAMESPACE_X_verbose="$OPTARG" ;;
  D) X_APP_NAMESPACE_X_debug="$OPTARG" ;;
  h) X_APP_NAMESPACE_X_help && exit 0 ;;
  *) X_APP_NAMESPACE_X_help && exit 1 ;;
  esac
done
bl64_dbg_set_level "$X_APP_NAMESPACE_X_debug" && bl64_msg_set_level "$X_APP_NAMESPACE_X_verbose" || exit $?
X_APP_NAMESPACE_X_initialize "$X_APP_NAMESPACE_X_command" || exit $?

bl64_msg_show_batch_start "$X_APP_NAMESPACE_X_command"
case "$X_APP_NAMESPACE_X_command" in
'X_APP_NAMESPACE_X_X_FUNCTION_COMMAND1_X') "$X_APP_NAMESPACE_X_command" "$X_APP_NAMESPACE_X_X_FLAG_X" "$X_APP_NAMESPACE_X_X_OPTION_X" ;;
'X_APP_NAMESPACE_X_X_FUNCTION_COMMAND2_X') "$X_APP_NAMESPACE_X_command" ;;
*) bl64_check_alert_parameter_invalid "$X_APP_NAMESPACE_X_command" ;;
esac
X_APP_NAMESPACE_X_status=$?

bl64_msg_show_batch_finish $X_APP_NAMESPACE_X_status "$X_APP_NAMESPACE_X_command"
exit $X_APP_NAMESPACE_X_status
