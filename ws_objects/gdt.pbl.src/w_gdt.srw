$PBExportHeader$w_gdt.srw
forward
global type w_gdt from w_wizard
end type
end forward

global type w_gdt from w_wizard
string title = "GDT - Generate Doc Tool Wizard"
string icon = "Form!"
end type
global w_gdt w_gdt

on w_gdt.create
call super::create
end on

on w_gdt.destroy
call super::destroy
end on

event ue_initialize;call super::ue_initialize;of_addstep( "u_step_1_select_pbw_pbt" )
of_addstep( "u_step_2" )
of_addstep( "u_step_3" )

this.event ue_nextstep()

timer(0)

end event

event ue_cancel;call super::ue_cancel;close(this)

end event

event ue_finish;call super::ue_finish;messagebox(this.title,"Wizard Finished",information!)
close(this)
end event

event timer;call super::timer;this.event ue_initialize()

end event

event open;//override
timer(1)
end event

type p_1 from w_wizard`p_1 within w_gdt
boolean enabled = false
end type

type cb_previous from w_wizard`cb_previous within w_gdt
end type

type cb_next from w_wizard`cb_next within w_gdt
end type

type cb_cancel from w_wizard`cb_cancel within w_gdt
end type

type r_1 from w_wizard`r_1 within w_gdt
end type

type cb_finish from w_wizard`cb_finish within w_gdt
end type

