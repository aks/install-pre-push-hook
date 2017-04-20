# install-pre-push-hook
This is a simple script to help avoid pushing code directly to master

    usage: install-pre-push-hook [options] [DIR ...]
    Install a "pre-push" hook script into each named directory, which must be a git
    repository.  If no directories are named, the current directory is assumed.

    The `pre-push` hook resides in `.git/hooks/pre-push` within a git repository.

    Options
      -h   show this help
      -n   show the commands but do not actually run them
      -v   be verbose (explain what's going on)
