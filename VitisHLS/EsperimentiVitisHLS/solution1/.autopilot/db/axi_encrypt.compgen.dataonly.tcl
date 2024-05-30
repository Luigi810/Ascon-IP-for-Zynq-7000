# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 32
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
c { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
m { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
ad { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
nsec { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 60
	offset_end 71
}
npub { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
k { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


