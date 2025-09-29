#!/usr/bin/env python

import lldb

def step_then_disasm(debugger, command, result, internal_dict):
    # Doesn't work because of: rdar://129104818
    #th = debugger.GetSelectedTarget().GetProcess().GetSelectedThread()
    #err = lldb.SBError()
    #th.StepInstruction(False, err)
    debugger.HandleCommand("si")
    debugger.HandleCommand("disassemble")

# And the initialization code to add your commands
def __lldb_init_module(debugger, internal_dict):
    debugger.HandleCommand('command script add -f step_then_disasm.step_then_disasm sd')
    print('The "sd" python command has been installed and is ready for use.')
