# NPM completions for Fish shell
# from https://stackoverflow.com/questions/16657803/creating-autocomplete-script-with-sub-commands
# see also: https://github.com/fish-shell/fish-shell/tree/master/share/completions

function __fish_npm_needs_command
  set cmd (commandline -opc)

  if [ (count $cmd) -eq 1 -a $cmd[1] = 'npm' ]
    return 0
  end

  return 1
end

function __fish_npm_using_command
  set cmd (commandline -opc)

  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end

  return 1
end

# cache
complete -f -c npm -n '__fish_npm_needs_command' -a 'cache' -d "Manipulates package's cache"
complete -f -c npm -n '__fish_npm_using_command cache' -a 'add' -d 'Add the specified package to the local cache'
complete -f -c npm -n '__fish_npm_using_command cache' -a 'clean' -d "Delete  data  out of the cache folder"
complete -f -c npm -n '__fish_npm_using_command cache' -a 'ls' -d "Show the data in the cache"

# config
# @TODO lot to work on here

# help
complete -f -c npm -n '__fish_npm_needs_command' -a 'help' -d 'Get help on npm'
complete -f -c npm -n '__fish_npm_using_command help' -a "$npm_cmds"

# install
# NPM has a few aliases for install
for c in 'install' 'isntall' 'i'
    complete -f -c npm -n "__fish_npm_using_command $c" -l save-dev -d 'Save to devDependencies in package.json'
    complete -f -c npm -n "__fish_npm_using_command $c" -l save -d 'Save to dependencies in package.json'
    complete -f -c npm -n "__fish_npm_using_command $c" -s g -l global -d 'Install package globally'
end

# search
for c in 'find' 's' 'se' 'search'
    complete -x -c npm -n "__fish_npm_using_command $c" -d 'Search for packages'
    complete -x -c npm -n "__fish_npm_using_command $c" -l long -d 'Display full package descriptions and other long text across multiple lines'
end

# remove
for c in 'r' 'remove' 'rm'
    complete -f -c npm -n '__fish_npm_needs_command' -a "$c" -d 'remove package'
    complete -x -c npm -n "__fish_npm_using_command $c" -s g -l global -d 'remove global package'
end

# misc shorter explanations
complete -f -c npm -n '__fish_npm_needs_command' -a 'adduser add-user login' -d 'Add a registry user account'
complete -f -c npm -n '__fish_npm_using_command bin' -d 'Display npm bin folder'
for c in 'bugs' 'issues'
    complete -f -c npm -n "__fish_npm_using_command $c" -d 'Bugs for a package in a web browser maybe'
end
for c in 'ddp' 'dedupe' 'find-dupes'
    complete -f -c npm -n "__fish_npm_using_command $c" -d 'Reduce duplication'
end
complete -f -c npm -n '__fish_npm_using_command deprecate' -d 'Deprecate a version of a package'
for c in 'docs' 'home'
    complete -f -c npm -n "__fish_npm_using_command $c" -d 'Docs for a package in a web browser maybe'
end
complete -f -c npm -n '__fish_npm_using_command edit' -d 'Edit an installed package'
complete -f -c npm -n '__fish_npm_using_command explore' -d 'Browse an installed package'
complete -f -c npm -n '__fish_npm_using_command faq' -d 'Frequently Asked Questions'
complete -f -c npm -n '__fish_npm_using_command help-search' -l long -d 'Search npm help documentation'
for c in 'info' 'v' 'view'
    complete -x -c npm -n "__fish_npm_using_command $c" -d 'View registry info'
end
for c in 'la' 'list' 'll' 'ls'
    complete -f -c npm -n "__fish_npm_using_command $c" -d 'List installed packages'
end
for c in 'link' 'ln'
    complete -f -c npm -n "__fish_npm_using_command $c" -d 'Symlink a package folder'
end
# @TODO STOPPED AT "OUTDATED"
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''
# complete -f -c npm -n '__fish_npm_using_command ' -d ''


# List of NPM commands
# one quick-&-dirty way to get them: npm | grep ',' | tr ',' '\n'
# These are put at the bottom so that if a more specific description
# is available above (e.g. as with "cache") it doesn't get overridden
set --local npm_cmds 'add-user' 'adduser' 'apihelp' 'author' 'bin' 'bugs' 'c' 'completion' 'config' 'ddp' 'dedupe' 'deprecate' 'docs' 'edit' 'explore' 'faq' 'find' 'find-dupes' 'get' 'help' 'help-search' 'home' 'i' 'info' 'init' 'install' 'isntall' 'issues' 'la' 'link' 'list' 'll' 'ln' 'login' 'ls' 'outdated' 'owner' 'pack' 'prefix' 'prune' 'publish' 'r' 'rb' 'rebuild' 'remove' 'repo' 'restart' 'rm' 'root' 'run-script' 's' 'se' 'search' 'set' 'show' 'shrinkwrap' 'star' 'stars' 'start' 'stop' 'submodule' 't' 'tag' 'test' 'tst' 'un' 'uninstall' 'unlink' 'unpublish' 'unstar' 'up' 'update' 'v' 'version' 'view' 'whoami'

for cmd in $npm_cmds
    complete -f -c npm -n '__fish_npm_needs_command' -a "$cmd"
end
