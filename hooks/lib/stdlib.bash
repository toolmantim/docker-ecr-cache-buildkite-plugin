echoerr() {
  echo "$@" 1>&2;
}

log_fatal() {
  echoerr "In $(pwd)"
  echoerr "${@}"
  # use the last argument as the exit code
  exit_code="${*: -1}"
  if [[ "${exit_code}" =~ ^[\d]+$ ]]; then
    exit "${exit_code}"
  fi
  exit 1
}