$PBExportHeader$u_step_1_select_pbw_pbt.sru
forward
global type u_step_1_select_pbw_pbt from u_wizard_step
end type
type dw_1 from datawindow within u_step_1_select_pbw_pbt
end type
type cb_select_pbw from commandbutton within u_step_1_select_pbw_pbt
end type
type sle_pbw from singlelineedit within u_step_1_select_pbw_pbt
end type
type gb_1 from groupbox within u_step_1_select_pbw_pbt
end type
type gb_2 from groupbox within u_step_1_select_pbw_pbt
end type
end forward

global type u_step_1_select_pbw_pbt from u_wizard_step
dw_1 dw_1
cb_select_pbw cb_select_pbw
sle_pbw sle_pbw
gb_1 gb_1
gb_2 gb_2
end type
global u_step_1_select_pbw_pbt u_step_1_select_pbw_pbt

on u_step_1_select_pbw_pbt.create
int iCurrent
call super::create
this.dw_1=create dw_1
this.cb_select_pbw=create cb_select_pbw
this.sle_pbw=create sle_pbw
this.gb_1=create gb_1
this.gb_2=create gb_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_1
this.Control[iCurrent+2]=this.cb_select_pbw
this.Control[iCurrent+3]=this.sle_pbw
this.Control[iCurrent+4]=this.gb_1
this.Control[iCurrent+5]=this.gb_2
end on

on u_step_1_select_pbw_pbt.destroy
call super::destroy
destroy(this.dw_1)
destroy(this.cb_select_pbw)
destroy(this.sle_pbw)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event ue_validate;call super::ue_validate;if gnv_gdt.of_setpbw( sle_pbw.text ) = 1 then
	if gnv_gdt.of_setpbt( {""} ) = -1 then return -1
end if

return 1
end event

type dw_1 from datawindow within u_step_1_select_pbw_pbt
integer x = 101
integer y = 456
integer width = 2336
integer height = 520
integer taborder = 30
string title = "none"
string dataobject = "d_target_list"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
end type

type cb_select_pbw from commandbutton within u_step_1_select_pbw_pbt
integer x = 2327
integer y = 128
integer width = 123
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "..."
boolean flatstyle = true
end type

type sle_pbw from singlelineedit within u_step_1_select_pbw_pbt
integer x = 91
integer y = 128
integer width = 2231
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "Enter or select .PBW file"
end type

type gb_1 from groupbox within u_step_1_select_pbw_pbt
integer x = 27
integer y = 36
integer width = 2469
integer height = 272
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "1. Select PowerBuilder Workspace "
end type

type gb_2 from groupbox within u_step_1_select_pbw_pbt
integer x = 27
integer y = 328
integer width = 2469
integer height = 688
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "2. Select PowerBuilder Target(s)"
end type

