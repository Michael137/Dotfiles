#!/usr/bin/env python

from contextlib import contextmanager
import lldb

@contextmanager
def resetfmt(debugger):
    # TODO: get this default setting value from LLDB instead of hardcoding
    default_fmt = "${function.return-left}${function.scope}${ansi.fg.yellow}${function.basename}${ansi.normal}${function.template-arguments}${function.formatted-arguments}${function.return-right}${function.qualifiers}${function.suffix}"

    try:
        setting = debugger.GetSetting("plugin.cplusplus.display.function-name-format")
        custom_fmt = setting.GetStringValue(1024)
        debugger.SetInternalVariable("plugin.cplusplus.display.function-name-format", default_fmt, debugger.GetInstanceName())
        yield
    finally:
        debugger.SetInternalVariable("plugin.cplusplus.display.function-name-format", custom_fmt, debugger.GetInstanceName())
        return True

def revbt(debugger, command, result, internal_dict):
    for fr in reversed(debugger.GetSelectedTarget().GetProcess().GetSelectedThread().frames):
        print(fr)

def rawbt(debugger, command, result, internal_dict):
    with resetfmt(debugger):
        debugger.HandleCommand("thread backtrace --unfiltered")

def rawrev(debugger, command, result, internal_dict):
    with resetfmt(debugger):
        revbt(debugger, command, result, internal_dict)

# And the initialization code to add your commands
def __lldb_init_module(debugger, internal_dict):
    debugger.HandleCommand('command script add -f bt.revbt revbt')
    debugger.HandleCommand('command script add -f bt.rawbt rawbt')
    debugger.HandleCommand('command script add -f bt.rawrev rawrev')
    print('The "bt" python commands have been installed and are ready for use.')
