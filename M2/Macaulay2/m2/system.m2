--		Copyright 1995-2002 by Daniel R. Grayson

-- This version of 'run' doesn't handle pipes or redirection, of course
-- but it's an advantage to have this facility without depending on an outside shell.
-- We comment it out because some systems don't have wordexp() in libc, upon which 
-- expandWord is based.
-- run = cmd -> if (pid := fork()) == 0 then exec expandWord cmd else wait pid

restart = Command ( 
     () -> (
	  restarting = true;
	  runEndFunctions();
	  scan(openFiles(), f -> if f =!= stdio and f =!= stderr then close f);
	  exec if member("--restarted",commandLine) then commandLine else join({commandLine#0,"--restarted"},drop(commandLine,1))
	  )
     )

setRandomSeed = method()
installMethod(setRandomSeed, () -> rawRandomInitialize())
setRandomSeed ZZ := seed -> randomSeed = seed		    -- magic assignment, calls rawSetRandomSeed internally
setRandomSeed String := seed -> setRandomSeed fold((i,j) -> 101*i + j, 0, ascii seed)

currentLayoutTable := new MutableHashTable

addLayout = (prefix,i) -> (
     assert (i === 1 or i === 2);
     assert not currentLayoutTable#?prefix;
     currentLayoutTable#prefix = i;
     if notify or debugLevel == 11 then stderr << "--Layout#" << i << " assigned for directory " << prefix << endl;
     )

layoutToIndex := layout -> if layout === Layout#1 then 1 else if layout === Layout#2 then 2 else error "nonstandard layout detected"

addLayout(prefixDirectory, layoutToIndex currentLayout)	   -- detected in startup.m2.in
							      -- it's layout 1 when running from an installed M2, almost certainly
							      -- it's layout 2 when running from a Macaulay2 build directory while compiling from source code

addLayout(applicationDirectory()|"local/", 1) -- the user's application directory always uses layout 1

detectCurrentLayout = prefix -> (
     if currentLayoutTable#?prefix 
     then currentLayoutTable#prefix
     else if isDirectory (prefix | Layout#1#"packages") and isDirectory (prefix | replace("PKG",".",Layout#1#"packagelib"))
     then addLayout(prefix,1)
     else if isDirectory (prefix | Layout#2#"packages") and isDirectory (prefix | replace("PKG",".",Layout#2#"packagelib"))
     then addLayout(prefix,2)
     else null)

searchPrefixPath = f -> (				    -- f is a function from layout tables to paths
     f1 := f Layout#1;
     f2 := f Layout#2;
     found := for i in prefixPath do (
	  if fileExists (i|f1) then break i|f1;
	  if fileExists (i|f2) then break i|f2;
	  );
     if found =!= null then (
	  if debugLevel > 5 then stderr << "--file found in " << found << endl;
	  found)
     else (
     	  if debugLevel > 5 then stderr << "--file not found in " << stack prefixPath << endl;
	  ))

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/m2 "
-- End:
