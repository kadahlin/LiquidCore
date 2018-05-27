//
//  LiquidCoreiOSTests.m
//  LiquidCoreiOSTests
//
//  Created by Eric Lange on 1/28/18.
//  Copyright © 2018 LiquidPlayer. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "helloworld.h"

extern int cctest_main(int argc, char* argv[]);

@interface LiquidCoreiOSTests : XCTestCase

@end

@implementation LiquidCoreiOSTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#undef V
#define V(tst) \
- (void)testCcPassing##tst { \
char *argv[] = { "cctest", "test-api/" #tst }; \
cctest_main(2, argv); \
}


/******* PASSING TESTS *******/
V(InitializeAndDisposeOnce)
V(InitializeAndDisposeMultiple)
V(SmiZero)
V(Handles)
V(IsolateOfContext)
V(HulIgennem)
V(Access)
V(AccessElement)
V(Script)
V(ScriptUsingStringResource)
V(ScriptUsingOneByteStringResource)
V(ScriptMakingExternalString)
V(ScriptMakingExternalOneByteString)
V(MakingExternalStringConditions)
V(MakingExternalOneByteStringConditions)
V(MakingExternalUnalignedOneByteString)
V(UsingExternalString)
V(UsingExternalOneByteString)
V(NewExternalForVeryLongString)
V(ScavengeExternalString)
V(ScavengeExternalOneByteString)
V(ExternalStringWithDisposeHandling)
V(StringConcat)
V(GlobalProperties)
V(ExternalWrap)
V(TinyInteger)
V(BigSmiInteger)
V(BigInteger)
V(TinyUnsignedInteger)
V(BigUnsignedSmiInteger)
V(BigUnsignedInteger)
V(OutOfSignedRangeUnsignedInteger)
V(IsNativeError)
V(IsGeneratorFunctionOrObject)
V(IsAsyncFunction)
V(ArgumentsObject)
V(IsMapOrSet)
V(StringObject)
V(StringObjectDelete)
V(NumberObject)
V(BooleanObject)
V(PrimitiveAndWrappedBooleans)
V(Number)
V(ToNumber)
V(Date)
V(Boolean)
V(IntegerValue)
V(UndefinedIsNotEnumerable)
V(DeepCrossLanguageRecursion)
V(GetSetProperty)
V(TypeOf)
V(ScriptException)
V(LocalHandle)
V(ReceiverSignature) // Start ObjectTemplate/FunctionTemplate tests
V(FunctionTemplateWithProfiler)
V(FunctionTemplate)
V(SimpleCallbackWithProfiler)
V(SimpleCallback)
V(FastReturnValuesWithProfiler)
V(FastReturnValues)
V(FunctionTemplateSetLength)
V(FindInstanceInPrototypeChain)
V(GlobalPrototype)
V(ObjectTemplate)
V(FunctionPrototype)
V(ConstructCall)
V(TestObjectTemplateInheritedWithAccessorsInPrototype1)
V(TestObjectTemplateInheritedWithAccessorsInPrototype2)
V(TestObjectTemplateInheritedWithAccessorsInPrototype3)
V(TestObjectTemplateInheritedWithPrototype1)
V(TestObjectTemplateInheritedWithPrototype2)
V(TestObjectTemplateClassInheritance)
V(TestObjectTemplateReflectConstruct)
V(DescriptorInheritance)
V(DescriptorInheritance2)
V(CallbackExceptionRegression)
V(InternalFields)
V(GlobalObjectInternalFields)
V(GlobalObjectHasRealIndexedProperty)
V(InternalFieldsAlignedPointers)
V(SetAlignedPointerInInternalFields)
V(SymbolIdentityHash)
V(StringIdentityHash)
V(SymbolProperties)
V(SymbolTemplateProperties)
V(GlobalSymbols)
V(GlobalSymbolsNoContext)
V(WellKnownSymbols)
V(EmbedderDataAlignedPointers)
V(EmbedderData)
V(IdentityHash)
V(PrivatePropertiesOnProxies)
V(PrivateProperties)
V(GlobalPrivates)
V(HiddenProperties)
V(ArrayBuffer_ApiInternalToExternal)
V(ArrayBuffer_JSInternalToExternal)
V(ArrayBuffer_External)
V(Regress97784)
V(ExternalScriptException)
V(EvalInTryFinally)
V(ExceptionOrder)
V(ThrowValues)
V(CatchZero)
V(CatchExceptionFromWith)
V(TryCatchAndFinallyHidingException)
V(TryCatchAndFinally)
V(Array)
V(Vector)
V(ConversionException)
V(APICatch)
V(APIThrowTryCatch)
V(TryCatchInTryFinally)
V(MultiRun)
V(SimplePropertyRead)
V(DefinePropertyOnAPIAccessor)
V(DefinePropertyOnDefineGetterSetter)
V(ElementAPIAccessor)
V(SimplePropertyWrite)
V(SetterOnly)
V(NoAccessors)
V(Regress892105)
V(PersistentHandles)
V(GlobalObjectTemplate)
V(DeleteAccessor)
V(IsUint8Array)
V(IsInt8Array)
V(IsUint16Array)
V(IsInt16Array)
V(IsUint32Array)
V(IsInt32Array)
V(IsFloat32Array)
V(IsFloat64Array)
V(IsUint8ClampedArray)
V(IsDataView)
V(Map)
V(MapDeleteThenAsArray)
V(Set)
V(SetDeleteThenAsArray)
V(IsConstructCall)
V(ObjectInstantiation)
V(CompilationErrorUsingTryCatchHandler)
V(TryCatchFinallyUsingTryCatchHandler)
V(GetterSetterExceptions)
V(Version)
V(InstanceProperties)
V(CatchStackOverflow)
V(DateAccess)
V(CompileExternalTwoByteSource)
V(GetCurrentContextWhenNotInContext)
V(SealHandleScope)
V(SealHandleScopeNested)
V(StaticGetters)
V(IsolateEmbedderData)
V(StringEmpty)
V(SimpleExtensions)
V(NullExtensions)
V(ExtensionMissingSourceLength)
V(ExtensionWithSourceLength)
V(UseEvalFromExtension)
V(UseWithFromExtension)
V(AutoExtensions)
V(SyntaxErrorExtensions)
V(ExceptionExtensions)
V(NativeFunctionDeclaration)
V(NativeFunctionDeclarationError)
V(NativeFunctionDeclarationErrorEscape)
V(ExtensionDependency)
V(FunctionLookup)
V(GlobalProxyIdentityHash)
V(DefineAPIAccessorOnObject)
V(Arguments)
V(AccessCheckInIC)
V(BooleanCheckMultipleContexts)
V(CallAPIFunctionOnNonObject)
V(CallICFastApi_DirectCall_GCMoveStub)
V(CallICFastApi_DirectCall_Throw)
V(CallICFastApi_TrivialSignatureWithProfiler)
V(CallICFastApi_TrivialSignature)
V(LoadICFastApi_DirectCall_GCMoveStubWithProfiler)
V(LoadICFastApi_DirectCall_GCMoveStub)
V(LoadICFastApi_DirectCall_Throw)
V(CallKnownGlobalReceiver)
V(ChainSignatureCheck)
V(CheckForCrossContextObjectLiterals)
V(CompatibleReceiverCheckOnCachedICHandler)
V(CrossActivationEval)
V(DataView)
V(DictionaryICLoadedFunction)
V(Equals)
V(EvalAliasedDynamic)
V(FunctionCall)
V(FunctionDescriptorException)
V(FunctionPrototypeAcrossContexts)
V(GlobalHandle)
V(GlobalHandleUpcast)
V(HandleEquality)
V(InitGlobalVarInProtoChain)
V(InitializeDefaultIsolateOnSecondaryThread1)
V(InternalFieldsOnGlobalProxy)
V(IsolateDifferentContexts)
V(NestedHandleScopeAndContexts)
V(StringCheckMultipleContexts)
V(NumberCheckMultipleContexts)
V(PropertyEnumeration2)
V(ReceiverConversionForAccessors)
V(Regress157124)
V(Regress2333)
V(Regress2535)
V(Regress2746)
V(Regress260106)
V(Regress54)
V(Regress618)
V(SemaphoreInterruption)
V(SetterOnConstructorPrototype)
V(SimpleSignatureCheck)
V(SubclassGetConstructorName)
V(TryCatchCustomException)
V(Utf16MissingTrailing)
V(WrapperClassId)
V(PrivateForApiIsNumber)
V(Uint8Array)
V(Int8Array)
V(Uint16Array)
V(Int16Array)
V(Uint32Array)
V(Int32Array)
V(Float32Array)
V(Float64Array)
V(Uint8ClampedArray)
V(External)
V(PropertyAttributes)
V(ConversionNumber)
V(isNumberType)
V(Equality)
V(ReadOnlyPropertyInGlobalProto)
V(ReadOnlyIndexedProperties)
V(ResettingGlobalHandle)
V(ResettingGlobalHandleToEmpty)
V(Global)
V(CopyablePersistent)
V(PersistentValueVector)
V(InstanceOf)
V(InterceptorCallICFastApi_TrivialSignatureWithProfiler)
V(InterceptorCallICFastApi_TrivialSignature)
V(TryCatchNested)
V(TryCatchNative)
V(TryCatchNativeReset)
V(ToArrayIndex)
V(SetPrototypeThrows)
V(CrossEval)
V(CrossLazyLoad)
V(ExternalAllocatedMemory)
V(Regress51719)
V(CrossContextNew)
V(SpaghettiStackReThrow)
V(DontDeleteCellLoadIC)
V(ForeignFunctionReceiver)
V(Regress137002a)
V(Regress137002b)
V(Regress142088)
V(Regress137496)
V(TurboAsmDisablesNeuter)
V(ObjectGetOwnPropertyNames)
V(VariousGetPropertiesAndThrowingCallbacks)
V(PropertyNames)
V(ObjectClone)
V(HasOwnProperty)
V(GetOwnPropertyDescriptor)
V(ReplaceConstantFunction)
V(HiddenPrototype)
V(HiddenPrototypeSet)
V(HiddenPrototypeIdentityHash)
V(GetPrototypeHidden)
V(NamedEnumeratorAndForIn)
V(IndexedInterceptorWithStringProto)
V(Regress269562)
V(Regress91517)
V(InterceptorCallICFastApi_SimpleSignatureWithProfiler)
V(InterceptorCallICFastApi_SimpleSignature)
V(InterceptorCallICFastApi_SimpleSignature_Miss1WithProfiler)
V(InterceptorCallICFastApi_SimpleSignature_Miss1)
V(InterceptorCallICFastApi_SimpleSignature_Miss2WithProfiler)
V(InterceptorCallICFastApi_SimpleSignature_Miss2)
V(InterceptorCallICFastApi_SimpleSignature_Miss3WithProfiler)
V(InterceptorCallICFastApi_SimpleSignature_Miss3)
V(InterceptorCallICFastApi_SimpleSignature_TypeErrorWithProfiler)
V(InterceptorCallICFastApi_SimpleSignature_TypeError)
V(CallICFastApi_SimpleSignatureWithProfiler)
V(CallICFastApi_SimpleSignature)
V(CallICFastApi_SimpleSignature_Miss1WithProfiler)
V(CallICFastApi_SimpleSignature_Miss1)
V(CallICFastApi_SimpleSignature_Miss2WithProfiler)
V(CallICFastApi_SimpleSignature_Miss2)
V(CallICFastApi_SimpleSignature_TypeErrorWithProfiler)
V(CallICFastApi_SimpleSignature_TypeError)
V(PrototypeSignatureCheck)
V(Constructor)
V(MutableProtoGlobal)
V(RegExp)
V(JSONParseObject)
V(JSONParseNumber)
V(JSONParseArray)
V(JSONStringifyObject)
V(JSONStringifyObjectWithGap)
V(DontDeleteAPIAccessorsCannotBeOverriden)
V(GetterHolders)
V(PreInterceptorHolders)
V(Regress239669)
V(ObjectProtoToString)
V(ObjectProtoToStringES6)
V(Promises)
V(FunctionRemovePrototype)
V(ConstructorForObject)
V(CallAsFunction)
V(CallableObject)
V(TemplateIteratorPrototypeIntrinsics)
V(TemplateErrorPrototypeIntrinsics)
V(ObjectTemplateArrayProtoIntrinsics)
V(ObjectTemplatePerContextIntrinsics)
V(CreationContextOfJsFunction)
V(ClassPrototypeCreationContext)
V(SetIntegrityLevel)
V(ErrorConstruction)
V(Regress470113)
V(AccessControlIC)
V(CreationContext)
V(CreationContextOfJsBoundFunction)
V(Regress93759)
V(Regress411877)
V(FunctionReadOnlyPrototype)
V(GetHiddenPropertyTableAfterAccessCheck)
V(GetPrototypeAccessControl)
V(SecurityTestGCAllowed)

#undef V
#define V(tst) \
- (void)testCc##tst { \
char *argv[] = { "cctest", "test-api/" #tst }; \
cctest_main(2, argv); \
}

// Extensions
V(StackTraceInExtension)
V(NativeFunctionConstructCall)

// FixedArray / internal objects
V(AccessorIsPreservedOnAttributeChange)
V(IndependentWeakHandle)
V(InternalFieldCallback)
V(QuietSignalingNaNs)
V(Regress1516)
V(CheckCOWArraysCreatedRuntimeCounter)

// MakeWeak
V(TwoPassPhantomCallbacks)
V(TwoPassPhantomCallbacksNestedGc)
V(ResetWeakHandle)
V(WeakCallbackApi)
V(NewPersistentHandleFromWeakCallback)
V(DoNotUseDeletedNodesInSecondLevelGc)
V(NativeWeakMap)

// Handle issues
V(GlobalValueMap)
V(HandleIteration)
V(ExternalizeOldSpaceTwoByteCons)
V(ExternalizeOldSpaceOneByteCons)
V(EscapeableHandleScope)
V(EmptyApiCallback)
V(GlobalAccessorInfo)

// Message handling
V(MessageHandler0)
V(MessageHandler1)
V(MessageHandler2)
V(MessageHandler3)
V(MessageHandler4)
V(MessageHandler5)
V(CustomErrorToString)
V(CustomErrorMessage)
V(CustomErrorRethrowsOnToString)
V(APIThrowMessage)
V(APIThrowMessageAndVerboseTryCatch)
V(APIStackOverflowAndVerboseTryCatch)
V(ErrorWithMissingScriptInfo)
V(ExceptionCreateMessageLength)
V(ApiUncaughtException)
V(ExceptionInNativeScript)
V(SetPrototype)
V(ExceptionsDoNotPropagatePastTryCatch)
V(TryCatchSourceInfoForEOSError)
V(CaptureStackTraceForUncaughtException)
V(AsmJsWarning)
V(RethrowStackTrace)
V(RethrowPrimitiveStackTrace)
V(RethrowExistingStackTrace)
V(RethrowBogusErrorStackTrace)
V(EvalWithSourceURLInMessageScriptResourceNameOrSourceURL)
V(RecursionWithSourceURLInMessageScriptResourceNameOrSourceURL)
V(TryFinallyMessage)

// ScriptCompiler
V(TryCatchMixedNesting)
V(DontLeakGlobalObjects)
V(TryCatchSourceInfo)
V(CompilationCache)
V(PreCompileSerialization)
V(ScriptContextDependence)
V(StackTrace)
V(CaptureStackTrace)
V(ErrorLevelWarning)
V(GetStackTraceContainsFunctionsWithFunctionName)
V(DynamicWithSourceURLInStackTrace)
V(DynamicWithSourceURLInStackTraceString)
V(ScriptNameAndLineNumber)
V(ScriptPositionInfo)
V(ScriptSourceURLAndSourceMappingURL)
V(StreamingSimpleScript)
V(StreamingScriptConstantArray)
V(StreamingScriptEvalShadowing)
V(StreamingBiggerScript)
V(StreamingScriptWithParseError)
V(StreamingUtf8Script)
V(StreamingUtf8ScriptWithSplitCharactersSanityCheck)
V(StreamingUtf8ScriptWithSplitCharacters)
V(StreamingUtf8ScriptWithSplitCharactersValidEdgeCases)
V(StreamingUtf8ScriptWithSplitCharactersInvalidEdgeCases)
V(StreamingProducesParserCache)
V(StreamingWithDebuggingEnabledLate)
V(StreamingScriptWithInvalidUtf8)
V(StreamingUtf8ScriptWithMultipleMultibyteCharactersSomeSplit)
V(StreamingUtf8ScriptWithMultipleMultibyteCharactersSomeSplit2)
V(StreamingWithHarmonyScopes)
V(CodeCache)
V(InvalidParserCacheData)
V(InvalidCodeCacheData)
V(ParserCacheRejectedGracefully)
V(SimpleStreamingScriptWithSourceURL)
V(StreamingScriptWithSplitSourceURL)
V(StreamingScriptWithSourceMappingURLInTheMiddle)

// Property attributes
V(Overriding)
V(AccessorShouldThrowOnError)

// Global object detachment
V(MultiContexts)
V(ContextDetachGlobal)
V(DetachGlobal)
V(DetachedAccesses)
V(EvalInDetachedGlobal)
V(DefinePropertyPostDetach)

// Undetectable objects
V(UndetectableObject)
V(VoidLiteral)
V(ExtensibleOnUndetectable)

// Fatal error handler
V(ErrorReporting)

// String bugs
V(StringWrite)
V(Utf16)
V(Utf16Symbol)
V(Utf16Trailing3Byte)
V(MorphCompositeStringTest)
V(VisitExternalStrings)
V(TwoByteStringInOneByteCons)
V(ContainsOnlyOneByte)
V(StringConcatOverflow)
V(NewStringRangeError)

// Exception
V(ExceptionCreateMessage)

// ObjectTemplate / FunctionTemplate not implemented
V(TryCatchFinallyStoresMessageUsingTryCatchHandler)
V(AccessChecksReenabledCorrectly)
V(DefineOwnProperty)
V(GCInFailedAccessCheckCallback)
V(AccessCheckThrows)
V(Regress354123)
V(Regress411793)
V(AccessCheckedIsConcatSpreadable)
V(AccessCheckedToStringTag)
V(ImmutableProto)
V(EvalInAccessCheckedContext)
V(ImmutableProtoWithParent)
V(ImmutableProtoGlobal)
V(SetPrototypeTemplate)
V(CreateDataProperty)
V(InstanceCheckOnInstanceAccessor)
V(InstanceCheckOnInstanceAccessorWithInterceptor)
V(InstanceCheckOnPrototypeAccessor)

// Security
V(SecurityHandler)
V(SecurityChecks)
V(SecurityChecksForPrototypeChain)
V(CrossDomainDelete)
V(CrossDomainPropertyIsEnumerable)
V(CrossDomainFor)
V(CrossDomainForInOnPrototype)
V(AccessControl)
V(AccessControlES5)
V(AccessControlGetOwnPropertyNames)

// Object bugs
V(ObjectGetConstructorName)

// Cannot use proxies on global object prototype chain :(
V(GlobalObjectInstanceProperties)
V(ShadowObject)
V(JSONStringifyAccessCheck)
V(CrossDomainAccessors)

// Hidden prototypes
V(FunctionCallOptimization)

// Function name
V(CallbackFunctionName)

// Constructor bug
V(InterceptorOnConstructorPrototype)

// PropertyDescriptor
V(Regress567998)
V(DefineProperty)
V(PropertyDescriptor)

// PropertyHandler bug
V(InterceptorShouldThrowOnError)

// Setting new target bug
V(NewTargetHandler)

// Locker / threading
V(GCFromWeakCallbacks)
V(Threading1)
V(Threading2)
V(Threading3)
V(Threading4)
V(Threading5)
V(Threading6)
V(Threading7)
V(Threading8)
V(NestedLockers)
V(NestedLockersNoTryCatch)
V(RecursiveLocking)
V(LockUnlockLock)
V(NoGlobalHandlesOrphaningDueToWeakCallback)
V(SetStackLimitInThread)
V(RunTwoIsolatesOnSingleThread)
V(MultipleIsolatesOnIndividualThreads)
V(InitializeDefaultIsolateOnSecondaryThread2)
V(InitializeDefaultIsolateOnSecondaryThread3)
V(InitializeDefaultIsolateOnSecondaryThread4)
V(InitializeDefaultIsolateOnSecondaryThread5)
V(MemoryPressure)

// Function entry hooks
V(SetFunctionEntryHook)

// Property enumeration bugs
V(PropertyEnumeration)

// Garbage collection / callbacks
V(RegExpInterruption)
V(TestIdleNotification)
V(GetHeapStatistics)
V(ExternalStringCollectedAtTearDown)
V(ExternalInternalizedStringCollectedAtTearDown)
V(ExternalInternalizedStringCollectedAtGC)
V(Regress528)
V(GCCallbacksOld)
V(GCCallbacksWithData)
V(GCCallbacks)
V(IncreaseHeapLimitForDebugging)

// ArrayBuffer not implemented
V(SkipArrayBufferBackingStoreDuringGC)
V(SkipArrayBufferDuringScavenge)

// Shared typed arrays
V(SharedUint8Array)
V(SharedInt8Array)
V(SharedUint16Array)
V(SharedInt16Array)
V(SharedUint32Array)
V(SharedInt32Array)
V(SharedFloat32Array)
V(SharedFloat64Array)
V(SharedUint8ClampedArray)
V(SharedDataView)

// Stack trace
V(CaptureStackTraceForUncaughtExceptionAndSetters)
V(SourceURLInStackTrace)
V(ScriptIdInStackTrace)
V(InlineScriptWithSourceURLInStackTrace)
V(SetStackLimit)
V(CaptureStackTraceForStackOverflow)

// Promise / reject / hook callback
V(PromiseRejectCallback)
V(PromiseHook)
V(PromiseThen)
V(PromiseStateAndValue)

// Uninmplemented function
V(ScriptOrigin)
V(FunctionGetInferredName)
V(FunctionGetDebugName)
V(FunctionGetDisplayName)
V(ScriptLineNumber)
V(ScriptColumnNumber)
V(FunctionGetScriptId)
V(FunctionGetBoundFunction)
V(FunctionNew)
V(FunctionCallOptimizationMultipleArgs)
V(ApiCallbackCanReturnSymbols)

// Isolate disposal
V(IsolateNewDispose)
V(DisposeIsolateWhenInUse)

// Random isolate function
V(VerifyArrayPrototypeGuarantees)
V(PersistentHandleVisitor)
V(PersistentHandleInNewSpaceVisitor)
V(CallCompletedCallback)
V(CallCompletedCallbackOneException)
V(CallCompletedCallbackTwoExceptions)
V(EventLogging)
V(DisallowJavascriptExecutionScope)
V(AllowJavascriptExecutionScope)
V(ThrowOnJavascriptExecution)
V(AbortOnUncaughtExceptionNoAbort)
V(AllowAtomicsWait)
V(DynamicImport)

// Disallow code generation
V(AllowCodeGenFromStrings)
V(SetErrorMessageForCodeGenFromStrings)
V(CaptureSourceForCodeGenFromStrings)

// Microtasks
V(EnqueueMicrotask)
V(RunMicrotasksIgnoresThrownExceptions)
V(SetAutorunMicrotasks)
V(RunMicrotasksWithoutEnteringContext)
V(ScopedMicrotasks)

// Function unimplemented & request interrupt
V(RequestInterruptTestWithFunctionCall)
V(RequestInterruptTestWithMethodCall)
V(RequestInterruptTestWithAccessor)
V(RequestInterruptTestWithNativeAccessor)
V(RequestInterruptTestWithMethodCallAndInterceptor)
V(RequestInterruptTestWithMathAbs)
V(RequestMultipleInterrupts)
V(RequestInterruptSmallScripts)

// Extras
V(ExtrasFunctionSource)
V(ExtrasBindingObject)
V(ExperimentalExtras)
V(ExtrasUtilsObject)

// TryCatch
V(FutexInterruption)

// Proxy
V(Proxy)

// Iternal fields on typed arrays (bug)
V(InternalFieldsOnTypedArray)
V(InternalFieldsOnDataView)

// Random seed
V(DeterministicRandomNumberGeneration)

// Entered contexts (bug)
V(CorrectEnteredContext)

#undef V
#define V(tst) \
;

// Incompatible tests
// Neutering is not supported on JavaScriptCore
V(ArrayBuffer_DisableNeuter)
V(ArrayBuffer_NeuteringApi)
V(ArrayBuffer_NeuteringScript)
// SharedArrayBuffers are implemented in JSC, but not via API
// They are also disabled by default in V8
V(SharedArrayBuffer_ApiInternalToExternal)
V(SharedArrayBuffer_JSInternalToExternal)
V(SharedArrayBuffer_External)
// Native calls (%<func>) not supported in JSC
V(NativeCallInExtensions)
// Fixed typed arrays are internal constructs, not accessible to the API
V(FixedUint8Array)
V(FixedUint8ClampedArray)
V(FixedInt8Array)
V(FixedUint16Array)
V(FixedInt16Array)
V(FixedUint32Array)
V(FixedInt32Array)
V(FixedFloat32Array)
V(FixedFloat64Array)
// JIT / compiler stuff
V(SetJitCodeEventHandler)

@end
