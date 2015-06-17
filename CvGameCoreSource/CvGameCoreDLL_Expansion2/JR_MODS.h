// JR_Mods.h
#pragma once

#ifndef JR_MODS_H
#define JR_MODS_H

//DLL 
#ifndef JR_DLL
#define JR_DLL

#include <iostream>
#include <fstream>
#include <sstream>
#endif

// LUA API wrappers
#ifndef JR_LUAAPI
#define JR_LUAAPI
#define LUAAPIEXTN(method)	static int l##method(lua_State* L)
#endif

#endif