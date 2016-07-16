#!/usr/bin/env fish

# Part of the Joomla! Tracker application.
# @copyright  Copyright (C) 2016 Open Source Matters, Inc. All rights reserved.
# @license    http://www.gnu.org/licenses/gpl-2.0.txt GNU General Public License Version 2 or Later

function __fish_jtracker_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'jtracker' ]
    return 0
  end
  return 1
end

function __fish_jtracker_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

function __fish_jtracker_using_action
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 2 ]
    if [ $argv[1] = $cmd[2] -a $argv[2] = $cmd[3] ]
      	return 0
    end
  end
  return 1
end

# jtracker help
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a help -d "Displays helpful information"

# jtracker clear
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a clear -d "This will clear things."
complete -f -c jtracker -n '__fish_jtracker_using_command clear' -a cache -d "Clear the g11n language directory."
complete -f -c jtracker -n '__fish_jtracker_using_action clear cache' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action clear cache' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action clear cache' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action clear cache' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command clear' -a twig -d "Clear the Twig cache."
complete -f -c jtracker -n '__fish_jtracker_using_action clear twig' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action clear twig' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action clear twig' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action clear twig' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker database
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a database -d "This will track the database status."
complete -f -c jtracker -n '__fish_jtracker_using_command database' -a migrate -d "Migrate the database schema to a newer version."
complete -f -c jtracker -n '__fish_jtracker_using_action database migrate' -s v -l version -d "Apply a specific database version."
complete -f -c jtracker -n '__fish_jtracker_using_action database migrate' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action database migrate' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action database migrate' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action database migrate' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command database' -a status -d "Check the database migration status."
complete -f -c jtracker -n '__fish_jtracker_using_action database status' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action database status' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action database status' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action database status' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker export
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a export -d "Export langfiles."
complete -f -c jtracker -n '__fish_jtracker_using_command export' -a langfiles -d "Backup language files to a given folder."
complete -f -c jtracker -n '__fish_jtracker_using_action export langfiles' -s o -l outputdir -d "The directory that should receive the export."
complete -f -c jtracker -n '__fish_jtracker_using_action export langfiles' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action export langfiles' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action export langfiles' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action export langfiles' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker get
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a get -d "Retrieve Information from various sources."
complete -f -c jtracker -n '__fish_jtracker_using_command get' -a avatars -d "Retrieve avatar images from GitHub."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action get avatars' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command get' -a composertags -d "Retrieve a list of project tags from GitHub and show their installed versions."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -l all -d "Show all tags or only the most recent."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action get composertags' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command get' -a languagefiles -d "Retrieve language files."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -l language -d "Optionally specify a single language to fetch."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action get languagefiles' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command get' -a project -d "Get the whole project info from GitHub, including issues and issue comments."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l all -d "Process all issues."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l issue -d "<n> Process only a single issue."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l range_from -d "<n> First issue to process."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l range_to -d "<n> Last issue to process."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -s f -l force -d "Force an update even if the issue has not changed."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action get project' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command get' -a users -d "Retrieve user info from GitHub."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action get users' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker install
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a install -d "Install the application."

# jtracker make
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a make -d "The make engine"
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a autocomplete -d "Generate autocomplete files."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -l type -d "The type of auto complete file (currently supported: 'phpstorm' 'fish')."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -l echo -d "Echo the output instead of writing it to a file."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make autocomplete' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a composergraph -d "Graph visualisation for your project's composer.json and its dependencies."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -s f -l file -d "Write output to a file."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -l format -d "The image type."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make composergraph' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a dbcomments -d "Generate class doc blocks for Table classes"
complete -f -c jtracker -n '__fish_jtracker_using_action make dbcomments' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make dbcomments' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make dbcomments' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make dbcomments' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make dbcomments' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a depfile -d "Create and update a dependency file."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -s f -l file -d "Write output to a file."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make depfile' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a docu -d "Compile documentation using GitHub Flavored Markdown"
complete -f -c jtracker -n '__fish_jtracker_using_action make docu' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make docu' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make docu' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make docu' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make docu' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a langfiles -d "Create and update language files."
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -l extension -d "Process only this extension"
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make langfiles' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a langtemplates -d "Create language file templates."
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -l extension -d "Process only this extension"
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make langtemplates' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a languageflags -d "Compile multiple images into a big one (CSS spriting)."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -l imagefile -d "Full path to the combined image file."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -l cssfile -d "Full path to the CSS file."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make languageflags' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command make' -a repoinfo -d "Generate repository information."
complete -f -c jtracker -n '__fish_jtracker_using_action make repoinfo' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action make repoinfo' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action make repoinfo' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action make repoinfo' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action make repoinfo' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker test
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a test -d "The test engine"
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a checkstyle -d "Run PHP CodeSniffer tests."
complete -f -c jtracker -n '__fish_jtracker_using_action test checkstyle' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test checkstyle' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test checkstyle' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test checkstyle' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a copypaste -d "Run Copy/Paste Detector (CPD) for PHP code."
complete -f -c jtracker -n '__fish_jtracker_using_action test copypaste' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test copypaste' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test copypaste' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test copypaste' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a hook -d "Tests web hooks"
complete -f -c jtracker -n '__fish_jtracker_using_action test hook' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action test hook' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test hook' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test hook' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test hook' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a langfiles -d "Check language files"
complete -f -c jtracker -n '__fish_jtracker_using_action test langfiles' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test langfiles' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test langfiles' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test langfiles' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a phploc -d "Run Lines Of Code (LOC) for PHP code."
complete -f -c jtracker -n '__fish_jtracker_using_action test phploc' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test phploc' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test phploc' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test phploc' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a phpunit -d "Run PHPUnit tests."
complete -f -c jtracker -n '__fish_jtracker_using_action test phpunit' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test phpunit' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test phpunit' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test phpunit' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command test' -a run -d "Run all tests"
complete -f -c jtracker -n '__fish_jtracker_using_action test run' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action test run' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action test run' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action test run' -l log=filename.log -d "Optionally log output to the specified log file."

# jtracker update
complete -f -c jtracker -n '__fish_jtracker_needs_command' -a update -d "Used to update resources"
complete -f -c jtracker -n '__fish_jtracker_using_command update' -a languagefiles -d "Updates language files on a translation service."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l provider -d "The translation service provider to use."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l create -d "Flag if resources should be created."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l translations -d "Flag if translations should be uploaded."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action update languagefiles' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command update' -a pulls -d "Updates selected information for pull requests on GitHub for a specified project."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action update pulls' -l log=filename.log -d "Optionally log output to the specified log file."
complete -f -c jtracker -n '__fish_jtracker_using_command update' -a server -d "Updates the local installation to either a specified version or latest git HEAD for the active branch"
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -s p -l project -d "Process the project with the given ID."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -l noprogress -d "Don't use a progress bar."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -s v -l version -d "An optional version number to update to."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -s q -l quiet -d "Be quiet - suppress output."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -s v -l verbose -d "Verbose output for debugging purpose."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -l nocolors -d "Suppress ANSI colours on unsupported terminals."
complete -f -c jtracker -n '__fish_jtracker_using_action update server' -l log=filename.log -d "Optionally log output to the specified log file."
