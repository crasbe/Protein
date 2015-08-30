
########## Tcl recorder starts at 06/16/11 13:58:30 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" \"../../amiga/amiga_von gobnb/Projekte/68kTurbo/TK14v0.2_IDE/tk14.sch\" "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 13:58:30 ###########


########## Tcl recorder starts at 06/16/11 14:00:17 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:00:17 ###########


########## Tcl recorder starts at 06/16/11 14:00:37 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:00:37 ###########


########## Tcl recorder starts at 06/16/11 14:02:01 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:02:01 ###########


########## Tcl recorder starts at 06/16/11 14:02:09 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:02:09 ###########


########## Tcl recorder starts at 06/16/11 14:02:30 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:02:30 ###########


########## Tcl recorder starts at 06/16/11 14:03:59 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:03:59 ###########


########## Tcl recorder starts at 06/16/11 14:04:34 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:04:34 ###########


########## Tcl recorder starts at 06/16/11 14:04:56 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:04:56 ###########


########## Tcl recorder starts at 06/16/11 14:05:07 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:05:07 ###########


########## Tcl recorder starts at 06/16/11 14:06:28 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach432ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:06:28 ###########


########## Tcl recorder starts at 06/16/11 14:09:03 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:09:03 ###########


########## Tcl recorder starts at 06/16/11 14:09:22 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:09:22 ###########


########## Tcl recorder starts at 06/16/11 14:09:34 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:09:34 ###########


########## Tcl recorder starts at 06/16/11 14:09:53 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:09:53 ###########


########## Tcl recorder starts at 06/16/11 14:11:18 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:11:18 ###########


########## Tcl recorder starts at 06/16/11 14:11:38 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:11:38 ###########


########## Tcl recorder starts at 06/16/11 14:12:14 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:12:14 ###########


########## Tcl recorder starts at 06/16/11 14:14:03 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:14:03 ###########


########## Tcl recorder starts at 06/16/11 14:14:16 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:14:16 ###########


########## Tcl recorder starts at 06/16/11 14:17:03 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:17:03 ###########


########## Tcl recorder starts at 06/16/11 14:17:13 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:17:13 ###########


########## Tcl recorder starts at 06/16/11 14:17:19 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 14:17:19 ###########


########## Tcl recorder starts at 06/16/11 15:10:23 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:10:23 ###########


########## Tcl recorder starts at 06/16/11 15:21:42 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:21:42 ###########


########## Tcl recorder starts at 06/16/11 15:31:37 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:31:37 ###########


########## Tcl recorder starts at 06/16/11 15:31:59 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:31:59 ###########


########## Tcl recorder starts at 06/16/11 15:32:05 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:32:05 ###########


########## Tcl recorder starts at 06/16/11 15:35:32 ##########

set version "1.4"
set proj_dir "D:/safe/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/16/11 15:35:32 ###########


########## Tcl recorder starts at 06/21/11 20:36:10 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:36:10 ###########


########## Tcl recorder starts at 06/21/11 20:36:20 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:36:20 ###########


########## Tcl recorder starts at 06/21/11 20:37:10 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:37:10 ###########


########## Tcl recorder starts at 06/21/11 20:37:14 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach432ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:37:14 ###########


########## Tcl recorder starts at 06/21/11 20:38:07 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:38:07 ###########


########## Tcl recorder starts at 06/21/11 20:39:16 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:39:16 ###########


########## Tcl recorder starts at 06/21/11 20:39:21 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach432a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/21/11 20:39:21 ###########


########## Tcl recorder starts at 07/07/11 22:43:24 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/07/11 22:43:24 ###########


########## Tcl recorder starts at 07/07/11 22:45:44 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/07/11 22:45:44 ###########


########## Tcl recorder starts at 07/07/11 22:46:10 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/07/11 22:46:10 ###########


########## Tcl recorder starts at 07/08/11 00:15:31 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:15:31 ###########


########## Tcl recorder starts at 07/08/11 00:37:56 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:37:56 ###########


########## Tcl recorder starts at 07/08/11 00:42:48 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:42:48 ###########


########## Tcl recorder starts at 07/08/11 00:42:53 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:42:53 ###########


########## Tcl recorder starts at 07/08/11 00:44:13 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:44:13 ###########


########## Tcl recorder starts at 07/08/11 00:44:19 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:44:19 ###########


########## Tcl recorder starts at 07/08/11 00:45:59 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:45:59 ###########


########## Tcl recorder starts at 07/08/11 00:46:08 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 00:46:08 ###########


########## Tcl recorder starts at 07/08/11 01:04:18 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:04:18 ###########


########## Tcl recorder starts at 07/08/11 01:17:21 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:17:21 ###########


########## Tcl recorder starts at 07/08/11 01:18:29 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:18:29 ###########


########## Tcl recorder starts at 07/08/11 01:19:13 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:19:13 ###########


########## Tcl recorder starts at 07/08/11 01:19:59 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:19:59 ###########


########## Tcl recorder starts at 07/08/11 01:22:49 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:22:49 ###########


########## Tcl recorder starts at 07/08/11 01:23:53 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:23:53 ###########


########## Tcl recorder starts at 07/08/11 01:26:04 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:26:04 ###########


########## Tcl recorder starts at 07/08/11 01:26:11 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:26:11 ###########


########## Tcl recorder starts at 07/08/11 01:27:48 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:27:48 ###########


########## Tcl recorder starts at 07/08/11 01:27:57 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:27:57 ###########


########## Tcl recorder starts at 07/08/11 01:28:56 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:28:56 ###########


########## Tcl recorder starts at 07/08/11 01:29:02 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:29:02 ###########


########## Tcl recorder starts at 07/08/11 01:29:22 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:29:22 ###########


########## Tcl recorder starts at 07/08/11 01:29:28 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:29:28 ###########


########## Tcl recorder starts at 07/08/11 01:32:49 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:32:50 ###########


########## Tcl recorder starts at 07/08/11 01:32:57 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 01:32:57 ###########


########## Tcl recorder starts at 07/08/11 07:17:23 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 07:17:23 ###########


########## Tcl recorder starts at 07/08/11 21:36:42 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 21:36:42 ###########


########## Tcl recorder starts at 07/08/11 21:37:21 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/08/11 21:37:21 ###########


########## Tcl recorder starts at 07/09/11 15:40:04 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/09/11 15:40:04 ###########


########## Tcl recorder starts at 07/11/11 14:40:39 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 14:40:39 ###########


########## Tcl recorder starts at 07/11/11 16:53:21 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 16:53:21 ###########


########## Tcl recorder starts at 07/11/11 16:53:37 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 16:53:37 ###########


########## Tcl recorder starts at 07/11/11 18:12:22 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:12:22 ###########


########## Tcl recorder starts at 07/11/11 18:12:28 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:12:28 ###########


########## Tcl recorder starts at 07/11/11 18:14:26 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:14:26 ###########


########## Tcl recorder starts at 07/11/11 18:14:33 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:14:33 ###########


########## Tcl recorder starts at 07/11/11 18:35:56 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:35:56 ###########


########## Tcl recorder starts at 07/11/11 18:36:09 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Fit Design
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 18:36:09 ###########


########## Tcl recorder starts at 07/11/11 21:03:47 ##########

set version "1.4"
set proj_dir "C:/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 07/11/11 21:03:47 ###########


########## Tcl recorder starts at 05/24/12 21:18:34 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 05/24/12 21:18:34 ###########


########## Tcl recorder starts at 02/08/13 19:48:03 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 02/08/13 19:48:03 ###########


########## Tcl recorder starts at 03/24/13 17:53:36 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 03/24/13 17:53:36 ###########


########## Tcl recorder starts at 04/05/13 16:52:38 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 04/05/13 16:52:38 ###########


########## Tcl recorder starts at 06/01/13 18:21:22 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/01/13 18:21:22 ###########


########## Tcl recorder starts at 06/03/13 07:12:53 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/03/13 07:12:53 ###########


########## Tcl recorder starts at 06/15/13 13:32:52 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:32:52 ###########


########## Tcl recorder starts at 06/15/13 13:34:34 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:34:34 ###########


########## Tcl recorder starts at 06/15/13 13:39:07 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:39:07 ###########


########## Tcl recorder starts at 06/15/13 13:42:35 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:42:35 ###########


########## Tcl recorder starts at 06/15/13 13:44:44 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:44:44 ###########


########## Tcl recorder starts at 06/15/13 13:45:50 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:45:50 ###########


########## Tcl recorder starts at 06/15/13 13:47:53 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:47:53 ###########


########## Tcl recorder starts at 06/15/13 13:49:40 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:49:40 ###########


########## Tcl recorder starts at 06/15/13 13:50:47 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# JEDEC File
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:50:47 ###########


########## Tcl recorder starts at 06/15/13 13:51:00 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:51:00 ###########


########## Tcl recorder starts at 06/15/13 13:52:47 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Hierarchy
if [runCmd "\"$cpld_bin/sch2jhd\" ../work_sources/Set_3_68K_14MHz.sch "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:52:47 ###########


########## Tcl recorder starts at 06/15/13 13:53:10 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
if [runCmd "\"$cpld_bin/sch2blf\" -dev Lattice -sup ../work_sources/Set_3_68K_14MHz.sch  -err automake.err"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bls\" -o \"set_3_68k_14mhz.bl0\" -ipo  -family -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" -i set_3_68k_14mhz.bl0 -o set_3_68k_14mhz.bl1 -collapse none -reduce none  -err automake.err -keepwires -family"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblflink\" \"set_3_68k_14mhz.bl1\" -o \"protein_1_set_3_68k_14mhz.bl2\" -omod \"protein_1_set_3_68k_14mhz\"  -err \"automake.err\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/impsrc\"  -prj protein_1_set_3_68k_14mhz -lci protein_1_set_3_68k_14mhz.lct -log protein_1_set_3_68k_14mhz.imp -err automake.err -tti protein_1_set_3_68k_14mhz.bl2 -dir $proj_dir"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -blifopt  protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mblifopt\" protein_1_set_3_68k_14mhz.bl2 -sweep -mergefb -err automake.err -o protein_1_set_3_68k_14mhz.bl3  @protein_1_set_3_68k_14mhz.b2_"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -diofft  protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/mdiofft\" protein_1_set_3_68k_14mhz.bl3 -pla -family AMDMACH -idev van -o protein_1_set_3_68k_14mhz.tt2 -oxrf protein_1_set_3_68k_14mhz.xrf -err automake.err  @protein_1_set_3_68k_14mhz.d0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/tt2tott3\" -prj protein_1_set_3_68k_14mhz -dir $proj_dir -log protein_1_set_3_68k_14mhz.log -tti protein_1_set_3_68k_14mhz.tt2 -tto protein_1_set_3_68k_14mhz.tt3"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/abelvci\" -vci protein_1_set_3_68k_14mhz.lct -dev mach4a -prefit  protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/prefit\" -inp protein_1_set_3_68k_14mhz.tt3 -out protein_1_set_3_68k_14mhz.tt4 -err automake.err -log protein_1_set_3_68k_14mhz.log -percent protein_1_set_3_68k_14mhz.tte -mod set_3_68k_14mhz  @protein_1_set_3_68k_14mhz.l0"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:53:10 ###########


########## Tcl recorder starts at 06/15/13 13:55:08 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# JEDEC File
if [runCmd "\"$cpld_bin/blif2eqn\" protein_1_set_3_68k_14mhz.tte -o protein_1_set_3_68k_14mhz.eq3 -use_short -err automake.err "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/lci2vci\" -lci protein_1_set_3_68k_14mhz.lct -out protein_1_set_3_68k_14mhz.vct -log protein_1_set_3_68k_14mhz.l2v"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [catch {open protein_1_set_3_68k_14mhz.rsp w} rspFile] {
	puts stderr "Cannot create response file protein_1_set_3_68k_14mhz.rsp: $rspFile"
} else {
	puts $rspFile "-inp \"protein_1_set_3_68k_14mhz.tt4\" -vci \"protein_1_set_3_68k_14mhz.vct\" -log \"protein_1_set_3_68k_14mhz.log\" -eqn \"protein_1_set_3_68k_14mhz.eq3\" -dev mach463a -dat \"$install_dir/ispcpld/dat/mach4a/\" -msg \"$install_dir/ispcpld/dat/\" -err automake.err -tmv \"NoInput.tmv\" 
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/machfitr\" \"@protein_1_set_3_68k_14mhz.rsp\""] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
file delete protein_1_set_3_68k_14mhz.rsp
if [runCmd "\"$cpld_bin/lci2vci\" -vci protein_1_set_3_68k_14mhz.vco -out protein_1_set_3_68k_14mhz.lco -log protein_1_set_3_68k_14mhz.v2l"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}
if [runCmd "\"$cpld_bin/synsvf\" -exe \"$install_dir/ispvmsystem/ispufw\" -prj protein_1_set_3_68k_14mhz -if protein_1_set_3_68k_14mhz.jed -j2s -log protein_1_set_3_68k_14mhz.svl "] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/15/13 13:55:08 ###########


########## Tcl recorder starts at 06/17/13 22:36:07 ##########

set version "1.5"
set proj_dir "C:/Users/Bot2/Documents/Protein I_new_set/Set_3_68K_14MHz"
cd $proj_dir

# Get directory paths
set pver $version
regsub -all {\.} $pver {_} pver
set lscfile "lsc_"
append lscfile $pver ".ini"
set lsvini_dir [lindex [array get env LSC_INI_PATH] 1]
set lsvini_path [file join $lsvini_dir $lscfile]
if {[catch {set fid [open $lsvini_path]} msg]} {
	 puts "File Open Error: $lsvini_path"
	 return false
} else {set data [read $fid]; close $fid }
foreach line [split $data '\n'] { 
	set lline [string tolower $line]
	set lline [string trim $lline]
	if {[string compare $lline "\[paths\]"] == 0} { set path 1; continue}
	if {$path && [regexp {^\[} $lline]} {set path 0; break}
	if {$path && [regexp {^bin} $lline]} {set cpld_bin $line; continue}
	if {$path && [regexp {^fpgapath} $lline]} {set fpga_dir $line; continue}
	if {$path && [regexp {^fpgabinpath} $lline]} {set fpga_bin $line}}

set cpld_bin [string range $cpld_bin [expr [string first "=" $cpld_bin]+1] end]
regsub -all "\"" $cpld_bin "" cpld_bin
set cpld_bin [file join $cpld_bin]
set install_dir [string range $cpld_bin 0 [expr [string first "ispcpld" $cpld_bin]-2]]
regsub -all "\"" $install_dir "" install_dir
set install_dir [file join $install_dir]
set fpga_dir [string range $fpga_dir [expr [string first "=" $fpga_dir]+1] end]
regsub -all "\"" $fpga_dir "" fpga_dir
set fpga_dir [file join $fpga_dir]
set fpga_bin [string range $fpga_bin [expr [string first "=" $fpga_bin]+1] end]
regsub -all "\"" $fpga_bin "" fpga_bin
set fpga_bin [file join $fpga_bin]

if {[string match "*$fpga_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$fpga_bin;$env(PATH)" }

if {[string match "*$cpld_bin;*" $env(PATH)] == 0 } {
   set env(PATH) "$cpld_bin;$env(PATH)" }

lappend auto_path [file join $install_dir "ispcpld" "tcltk" "lib" "ispwidget" "runproc"]
package require runcmd

# Commands to make the Process: 
# Constraint Editor
# - none -
# Application to view the Process: 
# Constraint Editor
if [catch {open lattice_cmd.rs2 w} rspFile] {
	puts stderr "Cannot create response file lattice_cmd.rs2: $rspFile"
} else {
	puts $rspFile "-src protein_1_set_3_68k_14mhz.tt4 -type PLA -devfile \"$install_dir/ispcpld/dat/mach4a/mach463ace.dev\" -lci \"protein_1_set_3_68k_14mhz.lct\" -touch \"protein_1_set_3_68k_14mhz.tt4\"
"
	close $rspFile
}
if [runCmd "\"$cpld_bin/lciedit\" @lattice_cmd.rs2"] {
	return
} else {
	vwait done
	if [checkResult $done] {
		return
	}
}

########## Tcl recorder end at 06/17/13 22:36:07 ###########

