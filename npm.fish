# NPM (https://npmjs.org) completions for Fish shell
# top 2 fns taken from
# https://stackoverflow.com/questions/16657803/creating-autocomplete-script-with-sub-commands
# see also Fish's large set of completions for examples:
# https://github.com/fish-shell/fish-shell/tree/master/share/completions

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
complete -f -c npm -n '__fish_npm_using_command cache' -a 'clean' -d 'Delete  data  out of the cache folder'
complete -f -c npm -n '__fish_npm_using_command cache' -a 'ls' -d 'Show the data in the cache'

# config
# @TODO lot to work on here

# List of NPM commands
# one quick-&-dirty way to get them: npm | grep ',' | tr ',' '\n'
set --local npm_cmds 'add-user' 'adduser' 'apihelp' 'author' 'bin' 'bugs' 'c' 'completion' 'config' 'ddp' 'dedupe' 'deprecate' 'docs' 'edit' 'explore' 'faq' 'find' 'find-dupes' 'get' 'help' 'help-search' 'home' 'i' 'info' 'init' 'install' 'isntall' 'issues' 'la' 'link' 'list' 'll' 'ln' 'login' 'ls' 'outdated' 'owner' 'pack' 'prefix' 'prune' 'publish' 'r' 'rb' 'rebuild' 'remove' 'repo' 'restart' 'rm' 'root' 'run-script' 's' 'se' 'search' 'set' 'show' 'shrinkwrap' 'star' 'stars' 'start' 'stop' 'submodule' 't' 'tag' 'test' 'tst' 'un' 'uninstall' 'unlink' 'unpublish' 'unstar' 'up' 'update' 'v' 'version' 'view' 'whoami'

# help
complete -f -c npm -n '__fish_npm_needs_command' -a 'help' -d 'Get help on npm'
complete -f -c npm -n '__fish_npm_using_command help' -a "$npm_cmds"

# install
for c in 'install' 'isntall' 'i'
    complete -f -c npm -n '__fish_npm_needs_command' -a "$c" -d 'install a package'
    complete -f -c npm -n "__fish_npm_using_command $c" -l save-dev -d 'Save to devDependencies in package.json'
    complete -f -c npm -n "__fish_npm_using_command $c" -l save -d 'Save to dependencies in package.json'
    complete -f -c npm -n "__fish_npm_using_command $c" -s g -l global -d 'Install package globally'
end

# update
for c in 'up' 'update'
    complete -f -c npm -n '__fish_npm_needs_command' -a "$c" -d 'Update package(s)'
    complete -f -c npm -n "__fish_npm_using_command $c" -s g -l global -d 'Update global package(s)'
end

# search
for c in 'find' 's' 'se' 'search'
    complete -f -c npm -n '__fish_npm_needs_command' -a "$c" -d 'Search for packages'
    complete -x -c npm -n "__fish_npm_using_command $c" -l long -d 'Display full package descriptions and other long text across multiple lines'
end

# remove
for c in 'r' 'remove' 'rm' 'un' 'uninstall' 'unlink'
    complete -f -c npm -n '__fish_npm_needs_command' -a "$c" -d 'remove package'
    complete -x -c npm -n "__fish_npm_using_command $c" -s g -l global -d 'remove global package'
    complete -x -c npm -n "__fish_npm_using_command $c" -l save -d 'Package will be removed from your dependencies'
    complete -x -c npm -n "__fish_npm_using_command $c" -l save-dev -d 'Package will be removed from your devDependencies'
    complete -x -c npm -n "__fish_npm_using_command $c" -l save-optional -d 'Package will be removed from your optionalDependencies'
end

# owner
complete -f -c npm -n '__fish_npm_needs_command' -a 'owner' -d 'Manage package owners'
complete -f -c npm -n '__fish_npm_using_command owner' -a 'ls' -d 'List package owners'
complete -f -c npm -n '__fish_npm_using_command owner' -a 'add' -d 'Add a new owner to package'
complete -f -c npm -n '__fish_npm_using_command owner' -a 'rm' -d 'Remove an owner from package'

# misc shorter explanations
complete -f -c npm -n '__fish_npm_needs_command' -a 'adduser add-user login' -d 'Add a registry user account'
complete -f -c npm -n '__fish_npm_needs_command' -a 'bin' -d 'Display npm bin folder'
complete -f -c npm -n '__fish_npm_needs_command' -a 'bugs issues' -d 'Bugs for a package in a web browser maybe'
complete -f -c npm -n '__fish_npm_needs_command' -a 'ddp dedupe find-dupes' -d 'Reduce duplication'
complete -f -c npm -n '__fish_npm_needs_command' -a 'deprecate' -d 'Deprecate a version of a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'docs home' -d 'Docs for a package in a web browser maybe'
complete -f -c npm -n '__fish_npm_needs_command' -a 'edit' -d 'Edit an installed package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'explore' -d 'Browse an installed package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'faq' -d 'Frequently Asked Questions'
complete -f -c npm -n '__fish_npm_needs_command' -a 'help-search' -d 'Search npm help documentation'
complete -f -c npm -n '__fish_npm_using_command help-search' -l long -d 'Display full package descriptions and other long text across multiple lines'
complete -f -c npm -n '__fish_npm_needs_command' -a 'info v view' -d 'View registry info'
complete -f -c npm -n '__fish_npm_needs_command' -a 'la list ll ls' -d 'List installed packages'
complete -f -c npm -n '__fish_npm_needs_command' -a 'link ln' -d 'Symlink a package folder'
complete -f -c npm -n '__fish_npm_needs_command' -a 'outdated' -d 'Check for outdated packages'
complete -f -c npm -n '__fish_npm_needs_command' -a 'pack' -d 'Create a tarball from a package'
complete -x -c npm -n '__fish_npm_needs_command' -a 'prefix' -d 'Display NPM prefix'
complete -x -c npm -n '__fish_npm_needs_command' -a 'prune' -d 'Remove extraneous packages'
complete -c npm -n '__fish_npm_needs_command' -a 'publish' -d 'Publish a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'rb rebuild' -d 'Rebuild a package'
complete -x -c npm -n '__fish_npm_needs_command' -a 'root ' -d 'Display npm root'
complete -f -c npm -n '__fish_npm_needs_command' -a 'run-script run' -d 'Run arbitrary package scripts'
complete -f -c npm -n '__fish_npm_needs_command' -a 'shrinkwrap' -d 'Lock down dependency versions'
complete -f -c npm -n '__fish_npm_needs_command' -a 'star' -d 'Mark your favorite packages'
complete -x -c npm -n '__fish_npm_needs_command' -a 'stars' -d 'View packages marked as favorites'
complete -f -c npm -n '__fish_npm_needs_command' -a 'start' -d 'Start a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'stop' -d 'Stop a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'submodule' -d 'Add a package as a git submodule'
complete -f -c npm -n '__fish_npm_needs_command' -a 't tst test' -d 'Test a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'unpublish' -d 'Remove a package from the registry'
complete -f -c npm -n '__fish_npm_needs_command' -a 'unstar' -d 'Remove star from a package'
complete -f -c npm -n '__fish_npm_needs_command' -a 'version' -d 'Bump a package version'
complete -f -c npm -n '__fish_npm_needs_command' -a 'whoami' -d 'Display npm username'
