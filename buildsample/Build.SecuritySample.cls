/// This is from https://github.com/intersystems/Samples-Security.
/// This class builds the downloaded sample files from https://github.com/intersystems/Samples-Security.
/// Use or operation of this code is subject to acceptance of the license available in the code repository for this code.
Class Build.SecuritySample Extends %RegisteredObject
{

/// This method prompts the user for the name of the directory that contains the downloaded files 
/// and then builds the sample.
ClassMethod Build()
{
    write !, "This is the setup method for the Samples-Security sample, which provides "
    write !, "sample security routines for with InterSystems IRIS Data Platform."
    
    write !!, "To continue, please specify the full path of the directory that contains this "
    write !, "sample. (This is the directory that contains the README.md and LICENSE files.)",!
    read "Your input: ",stagingroot
    if ($ZSTRIP(stagingroot,"<>W")="") {
        write !, "Not a valid directory. Quitting..."
        quit
    }
    set exists=##class(%File).DirectoryExists(stagingroot)
    if 'exists {
        write !, "Directory not found. Quitting..."
        quit
    }
    
    set OK=..run(stagingroot,1)
    
    if OK {
       write !!, "See the README.md file for details on this sample "
        write !, "and links to related documentation."
    } else {
        write !!, "Setup was unsuccessful. Make sure that the directory you specified"
        write !, "contains the sample files for *this* sample."
    }
}

/// This method enables you to build the sample with a minimum of output to the Terminal.
/// stagingroot is the name of the directory that contains the downloaded files. 
/// interactive controls whether this method displays output.
/// Build calls this method with interactive=1.
ClassMethod run(stagingroot As %String = "", interactive As %Boolean = 0)
{
    // Repeat this test here in case we go directly to this method
    if $ZSTRIP(stagingroot,"<>W")="" {
        if interactive {
            write !, "Not a valid directory... Quitting."
        }
        return 0
    }

   // Load routines (no need to compile them) ***************************
    if interactive {
        write !!, "Loading routines..."
    }
    set dir=stagingroot_"/rtn/" ;works on both Windows and Unix
    if '##class(%File).DirectoryExists(dir) {
        if interactive {
            write !!, "Looking for "_dir
            write !, "but it does not exist... Quitting."
        }
        return 0
    }
    do $system.OBJ.Load(dir_"ldap.mac","k",,1)
    do $system.OBJ.Load(dir_"OAUTH2.ZAUTHENTICATE.mac","k",,1)
    do $system.OBJ.Load(dir_"zauthenticate.mac","k",,1)
    do $system.OBJ.Load(dir_"zauthorize.mac","k",,1)
    do $system.OBJ.Load(dir_"REST.ZAUTHENTICATE.mac","k",,1)
    return 1
}

}
