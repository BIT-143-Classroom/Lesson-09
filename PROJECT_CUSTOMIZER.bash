# echo In the PROJECT_CUSTOMIZER.bash file!
# echo SUBDIR: $SUBDIR
# STARTUP_OBJECT=Helpdesk.Program

# Add NUnitLite, so I can generate XML result files from the command line

echo Running this customizer in this dir:
echo `pwd`


# Before we can add NUnitLite we need to remove NUnit
echo Remove NUnit package -----------------------------------
dotnet remove "$PROJNAME" package NUnit

echo Add NUnitLite package ----------------------------------
dotnet add "$PROJNAME" package nunitlite

# And then add it back in, of course
echo Add NUnit package back in ------------------------------
dotnet add "$PROJNAME" package nunit
