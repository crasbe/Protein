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
Design = protein_1_ide.tt4;
Rev = 0.01;
DATE = 6/15/13;
TIME = 14:40:27;
Type = TT2;
Pre_Fit_Time = 1;
Source_Format = ABEL_Schematic;

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

Netlist = VHDL;
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
Out_Slew_Rate = FAST, SLOW, 14, d14, dtack, ls245datadirwrite, ncs0, ncs1, nidereset, nint2, 
	nior, niow, nls245ena, override, d15, greenledout, irq_synched_last;
Device_max_fanin = 33;
Device_max_pterms = 20;
Usercode_Format = Hex;

[PIN RESERVATIONS]
layer = OFF;

[LOCATION ASSIGNMENT]

Layer = OFF
d15 = OUTPUT,28,2,-;
override = OUTPUT,43,3,-;
nls245ena = OUTPUT,42,3,-;
ls245datadirwrite = OUTPUT,41,3,-;
nidereset = OUTPUT,40,3,-;
ncs0 = OUTPUT,39,3,-;
ncs1 = OUTPUT,38,3,-;
nior = OUTPUT,37,3,-;
niow = OUTPUT,36,3,-;
nint2 = OUTPUT,31,2,-;
d14 = OUTPUT,27,2,-;
irq_synched_last = OUTPUT,21,1,-;
greenledout = OUTPUT,20,1,-;
dtack = OUTPUT,19,1,-;
its_me_cnt1 = NODE,*,2,-;
its_me_cnt2 = NODE,*,2,-;
its_me_cnt3 = NODE,*,0,-;
its_me_cnt0 = NODE,*,2,-;
stidreg0 = NODE,*,1,-;
stidreg1 = NODE,*,0,-;
stidreg2 = NODE,*,1,-;
DE0000_DONE_R = NODE,*,0,-;
d15_id_output = NODE,*,0,-;
jeejee = NODE,*,0,-;
irq_synched = NODE,*,1,-;
dtack_0 = NODE,*,0,-;
override_0 = NODE,*,0,-;
d15_0 = NODE,*,0,-;
interrupt_flag = NODE,*,2,-;
irq_passing_enabled = NODE,*,2,-;
RN_irq_synched_last = NODE,-1,1,-;
irq_rose = NODE,*,1,-;
irq_synched_last_last = NODE,*,1,-;
ide_irq = INPUT,30,2,-;
irq_synch0 = NODE,30,2,-;
cdac = INPUT,33,-,-;
