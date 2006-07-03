--		Copyright 2004 by Daniel R. Grayson

export {
        symbol operatorAttributes,
	symbol CoefficientRing,
	symbol Flexible,
	symbol lift', symbol liftable', symbol promote',    -- temporary new versions
	symbol Binary,
	symbol Global,
	symbol MethodFunction,
	symbol DL,
	symbol DT,
	symbol DD,
	symbol STYLE,
	symbol MethodFunctionWithOptions,
	symbol Prefix,
	symbol Postfix,
	symbol Dispatch,
	symbol currentString,
	symbol methodOptions,
        symbol minimalPrimes,
	symbol validate,
	symbol HypertextContainer,
	symbol minimalPresentationMap,
	symbol LATER,
	symbol minimalPresentationMapInv,
	symbol META,
	symbol LINK,
	symbol SYNOPSIS,
	symbol Heading,
	symbol Number,
	symbol FollowLinks,
	symbol cacheValue,
	symbol stashValue,
	symbol addHook,
	symbol tutorial,
	symbol removeHook,
	symbol runHooks,
	symbol tryHooks,
	symbol generateAssertions,
        symbol unsequence,
        symbol F4,
	symbol permutations,
	symbol sublists,
        symbol separateRegexp,
        symbol comodule,
        symbol preimage,
	symbol UserMode,
     	symbol diagonalMatrix,
        symbol weightRange,
        symbol support,
	symbol currentFileName,
	symbol round,
        symbol currentLineNumber,
	symbol URL,
	symbol show,
	symbol replace,
        symbol compositions,
        symbol eagonNorthcott,
        symbol irreducibleDecomposition,
     	symbol isConstant,
     	symbol Homogeneous2,
        symbol Sugarless,
     	symbol Faugere,
        symbol LU,
        symbol solve,
     	symbol coefficient,
	symbol part,
     	symbol hh,
        symbol Schubert,
	symbol ExampleItem,
	symbol RerunExamples,
     	symbol permanents,
        symbol applicationDirectory,
     	symbol UpdateOnly,
        symbol currentTime,
     	symbol independentSets,
        symbol MakeDocumentation,
	symbol PrimaryTag,				    -- so toExternalString can be used to save documentation tags in an external database
        symbol LoadDocumentation,
	symbol rowPermute,
	symbol columnPermute,
	symbol rowAdd,
	symbol columnAdd,
	symbol rowMult,
	symbol columnMult,
	symbol rowSwap,
	symbol columnSwap,
        symbol Partition,
	symbol ofClass,
        symbol inverse,
	symbol functionBody,
	symbol FunctionBody,
        symbol LinearAlgebra,
        -- symbol indexHtml, -- experimental
     	symbol Email,
	symbol fileLength,
        symbol primaryDecomposition,
	symbol numRows,
	symbol numColumns,
	"numrows" => symbol numRows,
	"numcols" => symbol numColumns,
     	symbol MutableMatrix,
        symbol mutableMatrix,
	symbol randomMutableMatrix,
	symbol mutableZero,
	symbol mutableIdentity,
        symbol loadedFiles,
        symbol viewHelp,
        symbol RemakeAllDocumentation,
        symbol DegreeRank,
        symbol dismiss,
        symbol monomials,
	symbol pretty,
	symbol CheckDocumentation,
        symbol MakeLinks,
        symbol Undo,
        symbol symlinkDirectory,
        symbol symlinkFile,
     	symbol reduceHilbert,
	symbol Date,
	symbol HomePage,
	symbol Authors,
	symbol AbsoluteLinks,
        symbol Truncate,
	"coker" => symbol cokernel,
	"gens" => symbol generators,
	"ker" => symbol kernel,
	"res" => symbol resolution,
	"sub" => symbol substitute,
	symbol minimalPresentation,
	"prune" => symbol minimalPresentation,
	"minPres" => symbol minimalPresentation,
	symbol !,
	symbol !=,
	symbol SPACE,
	symbol #,
	symbol #?,
	symbol %,
	symbol &,
	symbol (*),
	symbol **,
	symbol *,
	symbol ++,
	symbol +,
	symbol ,,
	symbol -,
	symbol ->,
	symbol .,
	symbol ..,
	symbol .?,
	symbol /,
	symbol //,
	symbol :,
	symbol :=,
	symbol ;,
	symbol <,
	symbol <-,
	symbol <<,
	symbol <=,
	symbol <==>,
	symbol =!=,
	symbol =,
	symbol ==,
	symbol ===,
	symbol ===>,
	symbol ==>,
	symbol =>,
	symbol >,
	symbol >=,
	symbol >>,
	symbol ?,
	symbol @,
	symbol @@,
	symbol (,
	symbol ),
	symbol [,
	symbol ],
	symbol {,
	symbol },
	symbol ANCHOR,
	symbol COMMENT,
	symbol CDATA,
	symbol Adjacent,
	symbol Adjust,
	symbol AffineVariety,
	symbol AfterEval,
	symbol AfterNoPrint,
	symbol PrintNames,
	symbol AfterPrint,
	symbol Algorithm,
	symbol Array,
	symbol Ascending,
	symbol AssociativeExpression,
	symbol BLOCKQUOTE,
	symbol BODY,
	symbol BOLD,
	symbol BR,
        symbol br,
	symbol Bag,
	symbol Bareiss,
	symbol BasicList,
	symbol BasisElementLimit,
	symbol Bayer,
	symbol BeforePrint,
	symbol CCC,
	symbol RRR,
	symbol BinaryOperation,
	symbol Binomial,
	symbol Boolean,
	symbol CC,
	symbol CODE,
	symbol SourceCode,
	symbol CacheTable,
	symbol CallLimit,
	symbol Caveat,
	symbol ChainComplex,
	symbol ChainComplexMap,
	symbol ChangeMatrix,
	symbol CodimensionLimit,
	symbol Cofactor,
	symbol BaseFunction,
	symbol CoherentSheaf,
	symbol Command,
	symbol CompleteIntersection,
	symbol Consequences,
	symbol DIV,
	symbol Database,
	symbol DebuggingMode,
	symbol Degree,
	symbol DegreeLimit,
	symbol DegreeMap,
	symbol DegreeOrder,
	symbol Degrees,
	symbol Dense,
	symbol Descending,
	symbol Description,
	symbol Dictionary,
	symbol LocalDictionary,
	symbol GlobalDictionary,
	symbol Divide,
	symbol DivideConquer,
	symbol DocumentTag,
	symbol Down,
	symbol EM,					    -- cryptic
	symbol EXAMPLE,
	symbol Eliminate,
	symbol EliminationOrder,
        symbol SPAN,
	symbol Encapsulate,
	symbol End,
	symbol Engine,
	symbol EngineRing,
	symbol Equation,
	symbol Exclude,
	symbol Expression,
	symbol Ext,
	symbol Fano,
	symbol File,
	symbol FilePosition,
	symbol FindOne,
	symbol First,
	symbol ForestNode,
	symbol Format,
	symbol FractionField,
	symbol Function,
	symbol FunctionClosure,
	symbol CompiledFunction,
	symbol CompiledFunctionBody,
	symbol CompiledFunctionClosure,
	symbol FunctionApplication,
	symbol GBDegrees,
	symbol GF,
	symbol GLex,
	symbol GRevLex,
	symbol GRevLexSmall,
	symbol GRevLexTiny,
	symbol GaloisField,
	symbol GeneralOrderedMonoid,
	symbol GlobalAssignHook,
	symbol GlobalReleaseHook,
	symbol GradedModule,
	symbol GradedModuleMap,
	symbol Grassmannian,
	symbol GroebnerBasis,
	symbol GroupLex,
	symbol GroupRevLex,
	symbol HEAD,
	symbol HEADER1,
	symbol HEADER2,
	symbol HEADER3,
	symbol HEADER4,
	symbol HEADER5,
	symbol HEADER6,
	symbol HH,
	symbol HR,
	symbol hr,
	symbol HREF,
	symbol HTML,
	symbol HardDegreeLimit,
	symbol HashTable,
	symbol HeaderType,
	symbol Headline,
	symbol Heft,
	symbol Hermitian,
	symbol Hilbert,
	symbol Holder,
	symbol Hom,
	symbol Homogeneous,
	symbol ICfractions,
	symbol ICfractionsLong,
	symbol ICmap,
	symbol IMG,
	symbol ITALIC,
	symbol Ideal,
	symbol IgnoreExampleErrors,
	symbol IgnoreDocumentationErrors,
	symbol ImmutableType,
	symbol IndeterminateNumber,
	symbol IndexedVariable,
	symbol InfiniteNumber,
	symbol InfoDirSection,
	symbol Inhomogeneous,
	symbol Inputs,
	symbol InverseMethod,
	symbol Inverses,
	symbol Iterate,
	symbol Key,
	symbol Keyword,
	symbol LABEL,
	symbol LAYOUT,
	symbol LITERAL,
	symbol LengthLimit,
	symbol Lex,
	symbol LexSmall,
	symbol LexTiny,
	symbol Limit,
	symbol Linear,
	symbol List,
	symbol LongPolynomial,
	symbol LowerBound,
	symbol MENU,
	symbol MakeInfo,
	symbol Manipulator,
	symbol Hypertext,
	symbol HypertextParagraph,
	symbol MarkUpType,
	symbol MarkUpTypeWithOptions,
	symbol Matrix,
	symbol MatrixExpression,
	symbol MinimalGenerators,
	symbol MinimalMatrix,
	symbol MinorsComputation,
	symbol Minus,
	symbol Module,
	symbol ModuleMap,
	symbol Monoid,
	symbol MonoidElement,
	symbol Monomial,
	symbol MonomialIdeal,
	symbol MonomialOrder,
	symbol MonomialSize,
	symbol Monomials,
	symbol MutableHashTable,
	symbol MutableList,
	symbol NCLex,
	symbol Name,
	symbol Net,
	symbol NetFile,
	symbol getNetFile,
	symbol newNetFile,
	symbol NewFromMethod,
	symbol NewMethod,
	symbol NewOfFromMethod,
	symbol NewOfMethod,
	symbol NoPrint,
	symbol NonAssociativeProduct,
	symbol NonLinear,
	symbol Nothing,
	symbol Numeric,
	symbol OO,
	symbol OneExpression,
	symbol Option,
	symbol OptionTable,
	symbol Options,
	symbol Order,
	symbol OrderedMonoid,
	symbol OutputDictionary,
	symbol Outputs,
	symbol PARA,
	symbol DIV1,
	symbol PRE,
	symbol Package,
	symbol PackageDictionary,
	symbol PairLimit,
	symbol PairsRemaining,
	symbol PolynomialRing,
	symbol Position,
	symbol Power,
	symbol PackagePrefix,
	symbol InstallPrefix,
	symbol Primary,
	symbol PrimitiveElement,
	symbol Print,
	symbol Product,
	symbol ProductOrder,
	symbol Proj,
	symbol Projective,
	symbol ProjectiveHilbertPolynomial,
	symbol ProjectiveVariety,
	symbol Pseudocode,
	symbol disassemble,
	symbol PushforwardComputation,
	symbol QQ,
	symbol QuotientRing,
	symbol RR,
	symbol Repair,
	symbol Resolution,
	symbol RevLex,
	symbol ReverseDictionary,
	symbol Ring,
	symbol RingElement,
	symbol RingMap,
	symbol RowExpression,
	symbol SMALL,
	symbol STRONG,
	symbol SUB,
	symbol SUBSECTION,
	symbol SUP,
	symbol SVD,
	symbol ScriptedFunctor,
	symbol SeeAlso,
	symbol SelfInitializingType,
	symbol Sequence,
	symbol Set,
	symbol SheafOfRings,
	symbol SkewCommutative,
	symbol Sort,
	symbol SortStrategy,
	symbol SparseMonomialVectorExpression,
	symbol SparseVectorExpression,
	symbol Spec,
	symbol StopBeforeComputation,
	symbol StopWithMinimalGenerators,
	symbol Strategy,
	symbol String,
	symbol Subnodes,
	symbol SubringLimit,
	symbol Subscript,
	symbol Sum,
	symbol SumOfTwists,
	symbol Superscript,
	symbol Symbol,
	symbol Syzygies,
	symbol SyzygyLimit,
	symbol SyzygyMatrix,
	symbol SyzygyRows,
	symbol TABLE,
	symbol TR,
	symbol TD,
	symbol TEST,
	symbol TEX,
	symbol TITLE,
	symbol TO,
	symbol TO2,
	symbol TOH,
	symbol TT,
	symbol Table,
	symbol Tally,
	symbol Thing,
	symbol Time,
	symbol Tor,
	symbol TotalPairs,
	symbol TreeNode,
	symbol Type,
	symbol TypicalValue,
	symbol UL,
	symbol LI,
	symbol Unmixed,
	symbol IntermediateMarkUpType,
	symbol Up,
	symbol Usage,
	symbol UseHilbertFunction,
	symbol Variable,
	symbol VariableBaseName,
	-- symbol VariableOrder,
	symbol Variables,
	symbol Variety,
	symbol Vector,
	symbol Verbose,
	symbol Verify,
	symbol Version,
	symbol VerticalList,
	symbol VisibleList,
	symbol Weights,
	symbol WeylAlgebra,
	symbol Wrap,
	symbol WrapperType,
	symbol ZZ,
	symbol ZeroExpression,
	symbol \,
	symbol \\,
	symbol ^**,
	symbol ^,
	symbol ^^,
	symbol _,
	symbol abs,
	symbol accumulate,
	symbol acos,
	symbol addEndFunction,
	symbol addStartFunction,
	symbol adjoint,
	symbol adjoint1,				    -- adjoint' ?
	symbol alarm,
	symbol all,
	symbol allGenerators,
	symbol ambient,
	symbol ancestor,
	symbol and,
	symbol ann',
	symbol ann,
	symbol annihilator,
	symbol any,
	symbol append,
	symbol apply,
	symbol applyKeys,
	symbol applyPairs,
	symbol applyTable,
	symbol applyValues,
	symbol apropos,
	symbol argument,
	symbol ascii,
	symbol asin,
        symbol associatedPrimes,
	"ass" => symbol associatedPrimes,
	symbol assert,
	symbol assign,
	symbol atEndOfFile,
	symbol atan,
	symbol autoload,
	symbol baseFilename,
	symbol baseName,
	symbol baseRings,
	symbol basis,
	symbol beginDocumentation,
	symbol benchmark,
	symbol betti,
	symbol BettiTally,
	symbol between,
	symbol binomial,
	symbol searchPath,
	symbol borel,
	symbol boxList,
	symbol boxTable,
	symbol break,
	symbol cache,
	symbol capture,
	symbol catch,
	symbol ceiling,
	symbol centerString,
	symbol chainComplex,
	symbol char,
	symbol characters,
	symbol check,
	symbol class,
	symbol clearAll,
	symbol clearEcho,
	symbol clearOutput,
	symbol close,
	symbol closeIn,
	symbol closeOut,
	symbol endPackage,
	symbol code,
	symbol codim,
	symbol coefficientRing,
	symbol coefficients,
	symbol cohomology,
	symbol coimage,
	symbol cokernel,
	symbol collectGarbage,
	symbol columnate,
	symbol combine,
	symbol commandInterpreter,
	symbol commandLine,
	symbol complement,
	symbol complete,
	symbol components,
	symbol compress,
	symbol concatenate,
	symbol conductor,
	symbol cone,
	symbol conjugate,
	symbol connectionCount,
	symbol content,
	symbol continue,
	symbol contract',
	symbol contract,
	symbol copy,
	symbol copyDirectory,
	symbol copyFile,
	symbol copyright,
	symbol cos,
	symbol cosh,
	symbol cotangentSheaf,
	symbol cover,
	symbol coverMap,
	symbol currentDirectory,
	symbol currentFileDirectory,
	symbol dd,
	symbol debug,
	symbol decompose,
	symbol deepSplice,
	symbol degree,
	symbol degreeLength,
	symbol degrees,
	symbol degreesMonoid,
	symbol degreesRing,
	symbol delete,
	symbol demark,
	symbol denominator,
	symbol depth,
	symbol describe,
	symbol determinant,
	"det" => symbol determinant,
	symbol dictionary,
	symbol diff',
	symbol diff,
	symbol difference,
	symbol dim,
	symbol directSum,
	symbol divideByVariable,
	symbol do,
	symbol document,
	symbol drop,
	symbol dual,
	symbol dumpdata,
	symbol echoOff,
	symbol echoOn,
	symbol edit,
	symbol eigenvalues,
	symbol eigenvectors,
	symbol elements,
	symbol else,
	symbol end,
	symbol endl,
	symbol entries,
	symbol environment,
	symbol erase,
	symbol error,
	symbol euler,
	symbol eulers,
	symbol evaluate,
	symbol even,
	symbol examples,
	symbol exec,
	symbol exit,
	symbol exp,
	-- symbol expandWord,
	symbol exponents,
	symbol export,
	symbol exportMutable,
	symbol expression,
	symbol extend,
	symbol exteriorPower,
	symbol factor,
	symbol false,
	symbol fileDictionaries,
	symbol fileExists,
	symbol fileMode,
	symbol fileTime,
	symbol findFiles,
	symbol findSynonyms,
	symbol first,
	symbol firstkey,
	symbol fittingIdeal,
	symbol flagLookup,
	symbol flatten,
	symbol flip,
	symbol floor,
	symbol flush,
	symbol fold,
	symbol for,
	symbol forceGB,
	symbol fork,
	symbol format,
	symbol frac,
	symbol fraction,
	symbol frames,
	symbol from,
	symbol fromDual,
	symbol gb,
	symbol gcd,
	symbol gcdCoefficients,
	symbol genera,
	symbol generator,
	symbol generators,
	symbol genericMatrix,
	symbol genericSkewMatrix,
	symbol genericSymmetricMatrix,
	symbol genus,
	symbol get,
	symbol getChangeMatrix,
	symbol getGlobalSymbol,
	symbol getNonUnit,
	symbol getWWW,
	symbol getc,
	symbol getenv,
	symbol global,
	symbol globalAssignFunction,
	symbol globalAssignment,
	symbol globalAssignmentHooks,
	symbol globalReleaseFunction,
	symbol gradedModule,
	symbol gradedModuleMap,
	symbol graphIdeal,
	symbol graphRing,
	symbol hash,
	symbol hashTable,
	symbol height,
	symbol help,
	symbol hilbertFunction,
	symbol hilbertFunctionRing,
	symbol hilbertPolynomial,
	symbol hilbertSeries,
	symbol hold,
	symbol homogenize,
	symbol homology,
	symbol homomorphism,
	symbol horizontalJoin,
	symbol html,
	symbol hypertext,
	symbol id,
	symbol ideal,
	symbol identity,
	symbol if,
	symbol ii,
	symbol image,
	symbol imaginaryPart,
	symbol in,
	symbol incomparable,
	symbol indeterminate,
	symbol index,
	symbol indexComponents,
	symbol indices,
	symbol inducedMap,
	symbol inducesWellDefinedMap,
	symbol infinity,
	symbol info,
	symbol infoHelp,
	symbol input,
	symbol installAssignmentMethod,
	symbol installMethod,
	symbol installPackage,
	symbol uninstallPackage,
	symbol instance,
	symbol integralClosure,
	symbol integrate,
	symbol intersect,
	symbol irreducibleCharacteristicSeries,
	symbol isAffineRing,
	symbol isBorel,
	symbol isCommutative,
	symbol isDirectSum,
	symbol isDirectory,
	symbol isField,
	symbol isFreeModule,
	symbol isGlobalSymbol,
	symbol isHomogeneous,
	symbol isIdeal,
	symbol isInjective,
	symbol isInputFile,
	symbol isIsomorphism,
	symbol isListener,
	symbol isModule,
	symbol isMonomialIdeal,
	symbol isNormal,
	symbol isOpen,
	symbol isOutputFile,
	symbol isPolynomialRing,
	symbol isPrime,
	symbol isPrimitive,
	symbol isQuotientModule,
	symbol isQuotientOf,
	symbol isQuotientRing,
	symbol isReady,
	symbol isRegularFile,
	symbol isRing,
	symbol isSquareFree,
	symbol isSubmodule,
	symbol isSubset,
	symbol isSurjective,
	symbol isTable,
	symbol isUnit,
	symbol isWellDefined,
	symbol jacobian,
	symbol join,
	symbol kernel,
	symbol keys,
	symbol kill,
	symbol koszul,
	symbol last,
	symbol leadCoefficient,
	symbol leadComponent,
	symbol leadMonomial,
	symbol leadTerm,
	symbol length,
	symbol lift,
	symbol liftable,
	symbol lines,
	symbol linkFile,
	symbol list,
	symbol listForm,
	symbol listLocalSymbols,
	symbol listSymbols,
	symbol listUserSymbols,
	symbol load,
	symbol loadPackage,
	symbol loaddata,
	symbol local,
	symbol localDictionaries,
	-- symbol localSymbols,
	symbol locate,
	symbol log,
	symbol lookup,
	symbol lookupCount,
	symbol makeDirectory,
	symbol makeDocumentTag,
	symbol makePackageIndex,
	symbol map,
	symbol match,
	symbol regex,
	symbol mathML,
	symbol matrix,
	symbol max,
	symbol maxPosition,
	symbol member,
	symbol memoize,
	symbol merge,
	symbol mergePairs,
	symbol method,
	symbol methods,
	symbol min,
	symbol minPosition,
	symbol mingens,
	symbol mingle,
	symbol minimizeFilename,
	symbol minors,
	symbol minprimes,
	symbol minus,
	symbol mkdir,
	symbol mod,
	symbol modifyRing,
	symbol module,
	symbol modulo,
	symbol monoid,
	symbol monomialCurve,
	symbol monomialCurveIdeal,
	symbol monomialIdeal,
	symbol monomialSubideal,
	symbol moveFile,
	symbol mutable,
	symbol needs,
	symbol needsPackage,
	symbol net,
	symbol netRows,
	symbol new,
	symbol newClass,
	symbol newCoordinateSystem,
	symbol newPackage,
	symbol newline,
	symbol nextkey,
	symbol not,
	symbol notImplemented,
	symbol null,
	symbol nullaryMethods,
	symbol nullhomotopy,
	symbol number,
	symbol numerator,
	symbol numeric,
	symbol numgens,
	symbol odd,
	symbol of,
	symbol on,
	symbol openDatabase,
	symbol openDatabaseOut,
	symbol openFiles,
	symbol openIn,
	symbol openInOut,
	symbol openListener,
	symbol openOut,
	symbol options,
	symbol or,
	symbol order,
	symbol override,
	symbol pack,
	symbol package,
	symbol pad,
	symbol pager,
	symbol pairs,
	symbol parent,
	symbol partitions,
	symbol pdim,
	symbol peek',
	symbol peek,
	symbol pfaffians,
	symbol pi,
	symbol plus,
	symbol poincare,
	symbol poincareN,
	symbol position,
	symbol positions,
	symbol power,
	symbol precision,
	symbol prepend,
	symbol presentation,
	symbol print,
	symbol printString,
	symbol printingTimeLimit,
	symbol processID,
	symbol product,
	symbol profile,
	symbol profileSummary,
	symbol projectiveHilbertPolynomial,
	symbol promote,
	symbol promptWidth,
	symbol protect,
	symbol pruningMap,
	symbol pseudoRemainder,
	symbol pseudocode,
	symbol pushForward,
	symbol pushForward1,
	symbol quit,
	symbol quote,
	symbol quotient,
	symbol quotient',
	symbol quotientRemainder',
	symbol quotientRemainder,
	symbol radical,
	symbol random,
	symbol rank,
	symbol read,
	symbol readDirectory,
	symbol readlink,
	symbol realPart,
	symbol realpath,
	symbol recursionDepth,
	symbol regularity,
	symbol relations,
	symbol relativizeFilename,
	symbol remainder',
	symbol remainder,
	symbol remove,
	symbol removeDirectory,
	symbol removeFile,
	symbol removeLowestDimension,
	symbol reorganize,
	symbol reshape,
	symbol resolution,
	symbol restart,
	symbol return,
	symbol returnCode,
	symbol reverse,
	symbol ring,
	symbol rotate,
	symbol rsort,
	symbol run,
	symbol same,
	symbol saturate,
	symbol scan,
	symbol scanKeys,
	symbol scanPairs,
	symbol scanValues,
	symbol schreyerOrder,
	symbol select,
	symbol selectInSubring,
	symbol separate,
	symbol seq,
	symbol sequence,
	symbol set,
	symbol setEcho,
	symbol setPrecision,
	symbol setRandomSeed,
	symbol sheaf,
	symbol sheafExt,
	symbol sheafHom,
	symbol shield,
	symbol showStructure,
	symbol showTex,
	symbol showHtml,
	symbol showUserStructure,
	symbol sin,
	symbol singularLocus,
	symbol sinh,
	symbol size,
	symbol sleep,
	symbol someTerms,
	symbol sort,
	symbol sortColumns,
	symbol source,
	symbol splice,
	symbol sqrt,
	symbol stack,
	symbol standardForm,
	symbol standardPairs,
	symbol status,
	symbol stderr,
	symbol stdio,
	symbol submatrix,
	symbol submodule,
	symbol subquotient,
	symbol subscript,
	symbol subsets,
	symbol substitute,
	symbol substring,
	symbol subtable,
	symbol sum,
	symbol super,
	symbol superscript,
	symbol symbol,
	symbol symmetricAlgebra,
	symbol symmetricPower,
	symbol synonym,
	symbol syz,
	symbol syzygyScheme,
	symbol table,
	symbol take,
	symbol tally,
	symbol tan,
	symbol tangentSheaf,
	symbol tanh,
	symbol target,
	symbol temporaryFileName,
	symbol tensor,
	symbol tensorAssociativity,
	symbol terms,
	symbol tex,
	symbol texLiteral,
	symbol texMath,
	symbol then,
	symbol throw,
	symbol time,
	symbol times,
	symbol timing,
	symbol to,
	symbol toRRR,
	symbol toDual,
	symbol toExternalString,
	symbol toField,
	symbol toList,
	symbol toLower,
	symbol toSequence,
	symbol toString,
	symbol toUpper,
	symbol topComponents,
	"top" => symbol topComponents,
	symbol topCoefficients,
	symbol trace,
	symbol transpose,
	symbol trim,
	symbol true,
	symbol truncate,
	symbol truncateOutput,
	symbol try,
	symbol typicalValues,
	symbol ultimate,
	symbol unbag,
	symbol uncurry,
	symbol undocumented,
	symbol uniform,
	symbol unique,
	symbol unlist,
	symbol unstack,
	symbol use,
	symbol userSymbols,
	symbol value,
	symbol values,
	symbol variety,
	symbol vars,
	symbol vector,
	symbol version,
	symbol verticalJoin,
	symbol wait,
	symbol wedgeProduct,
	symbol when,
	symbol while,
	symbol width,
	symbol wrap,
	symbol xor,
	symbol youngest,
	symbol zero,
	symbol |,
	symbol |-,
	symbol ||,
	symbol ~
}

exportMutable {
	symbol p,
        symbol i,
	symbol S,
	symbol T,
     	symbol homeDirectory,
        symbol GF$a,
        symbol applicationDirectorySuffix,
	symbol backtrace,
	symbol backupFileRegexp,
	symbol buildHomeDirectory,
	symbol compactMatrixForm,
	symbol currentPackage,
	symbol debugError,
	symbol debugLevel,
	symbol debuggingMode,
	symbol encapDirectory,
	symbol engineDebugLevel,
	symbol errorCode,
	symbol errorDepth,
	symbol fileExitHooks,
	symbol gbTrace,
	symbol dictionaryPath,
	symbol lineNumber,
	symbol loadDepth,
	symbol notify,
	symbol oo,
	symbol ooo,
	symbol oooo,
	symbol loadedPackages,
	symbol path,
	symbol prefixDirectory,
	symbol printWidth,
	symbol printingPrecision,
	symbol recursionLimit,
	symbol sourceHomeDirectory,
	symbol interpreterDepth,
	symbol stopIfError
	}
   

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/m2 "
-- End:
