
printf "${BLUE}%s${NORMAL}\n" "Updating Dotfiles"
cd "$HOME/dotfiles"
if git pull --rebase --stat origin master
then
  printf '%s' "$GREEN"
  printf '%s\n' '________          __    _____.__.__                 '
  printf '%s\n' '\______ \   _____/  |__/ ____\__|  |   ____   ______'
  printf '%s\n' ' |    |  \ /  _ \   __\   __\|  |  | _/ __ \ /  ___/'
  printf '%s\n' ' |    `   (  <_> )  |  |  |  |  |  |_\  ___/ \___ \ '
  printf '%s\n' '/_______  /\____/|__|  |__|  |__|____/\___  >____  >'
  printf '%s\n' '        \/                                \/     \/ '
  printf "${BLUE}%s\n" "Hooray! Dotfiles have been updated and/or is at the current version."
else
  printf "${RED}%s${NORMAL}\n" 'There was an error updating. Try again later?'
fi