$PBExportHeader$n_cst_gdt_manager.sru
forward
global type n_cst_gdt_manager from nonvisualobject
end type
end forward

global type n_cst_gdt_manager from nonvisualobject autoinstantiate
end type

type variables
Protected:
string is_pbw
string is_pbt[]



end variables

forward prototypes
public function integer of_setpbw (string as_pbw)
public function integer of_setpbt (string as_pbt[])
end prototypes

public function integer of_setpbw (string as_pbw);return 1
end function

public function integer of_setpbt (string as_pbt[]);return 1
end function

on n_cst_gdt_manager.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_gdt_manager.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

