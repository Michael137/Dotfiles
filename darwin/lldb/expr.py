#!/usr/bin/env python

import lldb

def ast_name(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr lldb_private::TypeSystemClang::GetASTContext({command})->getDisplayName()')

def decl_ast_name(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr lldb_private::TypeSystemClang::GetASTContext(&{command}->getASTContext())->getDisplayName()')

def ctx_ast_name(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr lldb_private::TypeSystemClang::GetASTContext(&{command}->getParentASTContext())->getDisplayName()')

def die_name(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr {command}.lldb_private::plugin::dwarf::DWARFBaseDIE::GetName()')

def show_type(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr  -T -D 0 -- {command}')

def origin_ast(debugger, command, result, internal_dict):
    debugger.HandleCommand("dwim-print --persistent-result true -- lldb_private::Debugger::GetDebuggerAtIndex(0)")
    debugger.HandleCommand("dwim-print --persistent-result true -- $0.__ptr_->GetSelectedTarget()")
    debugger.HandleCommand(f'dwim-print --persistent-result true -- lldb_private::ScratchTypeSystemClang::GetForTarget(*($1.__ptr_), {command}->getASTContext().getLangOpts())')
    debugger.HandleCommand(f'decl2ast ((lldb_private::ScratchTypeSystemClang*)$2.__ptr_)->m_scratch_ast_source_up->m_ast_importer_sp.__ptr_->GetDeclOrigin({command}).decl')

def die_name(debugger, command, result, internal_dict):
    debugger.HandleCommand(f'expr {command}.lldb_private::plugin::dwarf::DWARFBaseDIE::GetName()')

# And the initialization code to add your commands
def __lldb_init_module(debugger, internal_dict):
    debugger.HandleCommand('command script add -f expr.ast_name ast')
    debugger.HandleCommand('command script add -f expr.decl_ast_name decl2ast')
    debugger.HandleCommand('command script add -f expr.ctx_ast_name ctx2ast')
    debugger.HandleCommand('command script add -f expr.die_name die')
    debugger.HandleCommand('command script add -f expr.show_type ty')
    debugger.HandleCommand('command script add -f expr.origin_ast origin')
    debugger.HandleCommand('command script add -f expr.die_name die_name')
    print('The "expr" python aliases have been installed and are ready for use.')
