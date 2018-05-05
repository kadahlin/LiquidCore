//
//  Scopes.cpp
//  LiquidCore
//
//  Created by Eric Lange on 1/28/18.
//  Copyright © 2018 LiquidPlayer. All rights reserved.
//

#include "V82JSC.h"

using namespace v8;

HandleScope::HandleScope(Isolate* isolate)
{
    IsolateImpl* impl = V82JSC::ToIsolateImpl(isolate);
    
    this->isolate_ = reinterpret_cast<internal::Isolate*>(isolate);
    this->prev_next_ = impl->i.ii.handle_scope_data()->next;
    this->prev_limit_ = impl->i.ii.handle_scope_data()->limit;
}

HandleScope::~HandleScope()
{
    // FIXME: Here is where we would decrement count the internal objects
}

//
// internal::HandleScope
//
// Deallocates any extensions used by the current scope.
void internal::HandleScope::DeleteExtensions(Isolate* isolate)
{
    assert(0);
}

// Counts the number of allocated handles.
int internal::HandleScope::NumberOfHandles(Isolate* isolate)
{
    assert(0);
    return 0;
}

// Extend the handle scope making room for more handles.
internal::Object** internal::HandleScope::Extend(Isolate* isolate)
{
    IsolateImpl* isolateimpl = reinterpret_cast<IsolateImpl*>(isolate);
    // FIXME: Deal with actual expanison later
    assert(isolateimpl->i.ii.handle_scope_data()->next == nullptr);

    internal::Object **handles = new internal::Object * [16384];
    HandleScopeData *data = isolateimpl->i.ii.handle_scope_data();
    data->next = handles;
    data->limit = &handles[16384];
    
    return handles;
}

internal::Object** internal::CanonicalHandleScope::Lookup(Object* object)
{
    assert(0);
    return nullptr;
}

int HandleScope::NumberOfHandles(Isolate* isolate)
{
    //IsolateImpl* impl = V82JSC::ToIsolateImpl(reinterpret_cast<Isolate*>(isolate));
    
    printf("FIXME! HandleScope::NumberOfHandles\n");
    return 1;
}

internal::Object** HandleScope::CreateHandle(internal::Isolate* isolate,
                                       internal::Object* value)
{
    IsolateImpl* impl = V82JSC::ToIsolateImpl(reinterpret_cast<Isolate*>(isolate));
    return internal::HandleScope::CreateHandle(&impl->i.ii, value);
}

internal::Object** HandleScope::CreateHandle(internal::HeapObject* heap_object,
                                       internal::Object* value)
{
    uint8_t *addr = reinterpret_cast<uint8_t*>(heap_object) - internal::kHeapObjectTag;
    InternalObjectImpl *o = reinterpret_cast<InternalObjectImpl*>(addr);
    return CreateHandle(reinterpret_cast<internal::Isolate*>(o->m_isolate), value);
}

EscapableHandleScope::EscapableHandleScope(Isolate* isolate) : HandleScope(isolate)
{
    // Super HACK!
    this->escape_slot_ = reinterpret_cast<internal::Object**>(isolate);
}

internal::Object** EscapableHandleScope::Escape(internal::Object** escape_value)
{
    // Super HACK!
    return HandleScope::CreateHandle(reinterpret_cast<internal::Isolate*>(escape_slot_), *escape_value);
}

SealHandleScope::~SealHandleScope()
{
    
}

SealHandleScope::SealHandleScope(Isolate* isolate) : isolate_(nullptr)
{
    
}

MicrotasksScope::MicrotasksScope(Isolate* isolate, Type type) : isolate_(nullptr)
{
    
}
MicrotasksScope::~MicrotasksScope()
{
    
}

/**
 * Runs microtasks if no kRunMicrotasks scope is currently active.
 */
void MicrotasksScope::PerformCheckpoint(Isolate* isolate)
{
    
}

/**
 * Returns current depth of nested kRunMicrotasks scopes.
 */
int MicrotasksScope::GetCurrentDepth(Isolate* isolate)
{
    return 0;
}

/**
 * Returns true while microtasks are being executed.
 */
bool MicrotasksScope::IsRunningMicrotasks(Isolate* isolate)
{
    return false;
}

