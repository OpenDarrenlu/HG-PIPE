# create project, use open_project will create a new project if the project does not exist
set description   ${case_name}_DESC
set display_name  ${case_name}_DISP
set library       "HLS"
set vendor        "PKU"
set ipname        ${case_name}
set version       "1.0"

# create export_ip folder
if { [file exists "export_ip"] == 0 } {
    file mkdir export_ip
}


# parameters
set do_csim         ${do_csim}
set do_csynth       ${do_csynth}
set do_cosim        ${do_cosim}
set do_export       ${do_export}
set do_syn          ${do_syn}
set do_impl         ${do_impl}
set phys_opt        ${phys_opt}

# open project
open_project work
add_files       case/${case_name}.cpp
add_files -tb   case/${case_name}.cpp
open_solution "solution"
# set_part xcvc1902-vsva2197-2MP-e-S 
# use ZCU102
# set_part xczu9eg-ffvb1156-2-e
set_part xczu5ev-sfvc784-1-e
set_top top
create_clock -period 2.5
config_export -format ip_catalog -rtl verilog  -vivado_phys_opt ${phys_opt}
# -vivado_clock 2.5 The 'config_export -vivado_clock' hidden command is not supported in 2020.2.

if { $$do_csim == 1 } {
    csim_design -ldflags {-Wl,--stack,10485760}
}

if { $$do_csynth == 1 } {
    csynth_design
}

if { $$do_cosim == 1 } {
    cosim_design -ldflags {-Wl,--stack,10485760}
}

if { $$do_export == 1 } {
    export_design -description $$description -display_name $$display_name                   -library $$library -vendor $$vendor -version $$version -taxonomy "IP Core" -output "export_ip/${case_name}" -ipname $$ipname
}

if { $$do_syn == 1 } {
    export_design -description $$description -display_name $$display_name -flow syn         -library $$library -vendor $$vendor -version $$version -taxonomy "IP Core" -output "export_ip/${case_name}" -ipname $$ipname
}

if { $$do_impl == 1 } {
    export_design -description $$description -display_name $$display_name -flow impl        -library $$library -vendor $$vendor -version $$version -taxonomy "IP Core" -output "export_ip/${case_name}" -ipname $$ipname
}


exit

