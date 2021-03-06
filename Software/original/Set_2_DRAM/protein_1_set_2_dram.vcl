[DEVICE]

Family = M4A5;
PartType = M4A5-64/32;
Package = 44PLCC;
PartNumber = M4A5-64/32-10JC;
Speed = -10;
Operating_condition = COM;
EN_Segment = NO;
Pin_MC_1to1 = NO;
Voltage = 5.0;

[REVISION]

RCS = "$Revision: 1.2 $";
Parent = m4a5.lci;
SDS_file = m4a5.sds;
Design = protein_1_set_2_dram.tt4;
Rev = 0.01;
DATE = 6/16/13;
TIME = 20:51:32;
Type = TT2;
Pre_Fit_Time = 1;
Source_Format = Schematic_Verilog_HDL;

[IGNORE ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[CLEAR ASSIGNMENTS]

Pin_Assignments = NO;
Pin_Keep_Block = NO;
Pin_Keep_Segment = NO;
Group_Assignments = NO;
Macrocell_Assignments = NO;
Macrocell_Keep_Block = NO;
Macrocell_Keep_Segment = NO;
Pin_Reservation = NO;
Timing_Constraints = NO;
Block_Reservation = NO;
Segment_Reservation = NO;
Ignore_Source_Location = NO;
Ignore_Source_Optimization = NO;
Ignore_Source_Timing = NO;

[BACKANNOTATE NETLIST]

Netlist = VERILOG;
Delay_File = SDF;
Generic_VCC = ;
Generic_GND = ;

[BACKANNOTATE ASSIGNMENTS]

Pin_Assignment = NO;
Pin_Block = NO;
Pin_Macrocell_Block = NO;
Routing = NO;

[GLOBAL PROJECT OPTIMIZATION]

Balanced_Partitioning = YES;
Spread_Placement = YES;
Max_Pin_Percent = 100;
Max_Macrocell_Percent = 100;
Max_Inter_Seg_Percent = 100;
Max_Seg_In_Percent = 100;
Max_Blk_In_Percent = 100;

[FITTER REPORT FORMAT]

Fitter_Options = YES;
Pinout_Diagram = NO;
Pinout_Listing = YES;
Detailed_Block_Segment_Summary = YES;
Input_Signal_List = YES;
Output_Signal_List = YES;
Bidir_Signal_List = YES;
Node_Signal_List = YES;
Signal_Fanout_List = YES;
Block_Segment_Fanin_List = YES;
Prefit_Eqn = YES;
Postfit_Eqn = YES;
Page_Break = YES;

[OPTIMIZATION OPTIONS]

Logic_Reduction = YES;
Max_PTerm_Split = 16;
Max_PTerm_Collapse = 16;
XOR_Synthesis = YES;
Node_Collapse = Yes;
DT_Synthesis = Yes;

[FITTER GLOBAL OPTIONS]

Run_Time = 0;
Set_Reset_Dont_Care = NO;
In_Reg_Optimize = YES;
Clock_Optimize = NO;
Conf_Unused_IOs = OUT_LOW;

[POWER]
Powerlevel = Low, High;
Default = High;
Type = GLB;

[HARDWARE DEVICE OPTIONS]
Zero_Hold_Time = No;
Signature_Word = 0;
Pull_up = Yes;
Out_Slew_Rate = FAST, SLOW, 12, cpu_d12, cpu_d13, cpu_d14, cpu_d15, C_CS, dram_nlcas, dram_nras0, 
	dram_nucas, dram_ras1, dram_ras2, dram_ras3, mux_switch;
Device_max_fanin = 33;
Device_max_pterms = 20;
Usercode_Format = Hex;

[PIN RESERVATIONS]
layer = OFF;

[LOCATION ASSIGNMENT]

Layer = OFF
dram_nlcas = OUTPUT,30,2,-;
dram_nucas = OUTPUT,29,2,-;
cpu_d14 = OUTPUT,26,2,-;
cpu_d15 = OUTPUT,25,2,-;
dram_ras1 = OUTPUT,36,3,-;
dram_nras0 = OUTPUT,31,2,-;
cpu_d12 = OUTPUT,28,2,-;
cpu_d13 = OUTPUT,27,2,-;
dram_ras3 = OUTPUT,19,1,-;
dram_ras2 = OUTPUT,18,1,-;
C_CS = OUTPUT,21,1,-;
mux_switch = OUTPUT,17,1,-;
M0_inst_access_ras = NODE,*,0,-;
M0_rfsh_select_1_ = NODE,*,2,-;
M0_rfsh_select_0_ = NODE,*,2,-;
M0_inst_rfsh_cas = NODE,*,2,-;
M0_inst_autoconf_on = NODE,*,0,-;
M0_inst_write_cycle = NODE,*,3,-;
M0_inst_read_cycle = NODE,*,3,-;
M0_inst_access_cas = NODE,*,0,-;
cpu_nas = INPUT,40,3,-;
M0_inst_cpu_nas_z = NODE,40,3,-;
cpu_clk = INPUT,11,-,-;
