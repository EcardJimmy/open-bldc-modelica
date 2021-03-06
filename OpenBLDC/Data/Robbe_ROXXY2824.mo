within OpenBLDC.Data;
record Robbe_ROXXY2824 "Parameters of Robbe ROXXY 2824"
  extends Modelica.Icons.Record;
  parameter Modelica.SIunits.Torque tMax = 4.02896 "Maximum motor torque" annotation(Dialog(group = "Performance data"));
  parameter Modelica.SIunits.AngularVelocity wMax = 546.4 "Maximum speed" annotation(Dialog(group = "Performance data"));
  parameter Integer p = 5 "Number of pole pairs";
  parameter Modelica.SIunits.Inertia J = 1.65e-005 "Rotor inertia" annotation(Dialog(group = "Motor design data"));
  parameter Modelica.SIunits.Resistance Rsq = 0.35
    "Winding resistance (q-axis)"                                                annotation(Dialog(group = "Motor design data"));
  parameter Modelica.SIunits.Inductance Lsq = 0.00129
    "Winding inductance (q-axis)"                                                   annotation(Dialog(group = "Motor design data"));
  parameter Modelica.SIunits.ElectricalTorqueConstant kt = 0.127
    "Torque constant"                                                              annotation(Dialog(group = "Motor design data"));
  parameter Real ks(unit = "V.s/rad") = 0.0848 "Speed constant" annotation(Dialog(group = "Motor design data"));
  parameter Modelica.SIunits.Time Tcl = 0.001
    "Current control closed loop time constant"                                           annotation(Dialog(group = "Motor design data"));
  parameter Modelica.SIunits.Current iMax = 34 "Maximum current @ Vdc" annotation(Dialog(group = "Converter design data"));
  parameter Modelica.SIunits.Voltage Vdc = 270 "DC supply nominal voltage" annotation(Dialog(group = "Converter design data"));
  parameter HEMAS.TypesConstants.NormalizedReal etaC = 0.96
    "Converter efficiency"                                                         annotation(Dialog(group = "Converter design data"));
  parameter Modelica.SIunits.Time T_Vdc = 5e-005 "Vdc filter time constant" annotation(Dialog(group = "Converter design data"));
  parameter Modelica.SIunits.Voltage VLow = 250 "Lowest allowed supply voltage"
                                                                                annotation(Dialog(group = "Converter design data"));
  parameter Modelica.SIunits.Voltage VHigh = 280
    "Highest allowed supply voltage"                                              annotation(Dialog(group = "Converter design data"));
  parameter Modelica.SIunits.Temp_K AmbT = 110 + 273.15
    "Ambient Temperature, C"                                                     annotation(Dialog(group = "Thermal data"));
  parameter Modelica.SIunits.ThermalConductance Co2St = 2.66
    "Thermal Conductivity Copper-Stator"                                                          annotation(Dialog(group = "Thermal data"));
  parameter Modelica.SIunits.HeatCapacity CoC = 184
    "Stator winding thermal Capacity"                                                 annotation(Dialog(group = "Thermal data"));
  parameter Modelica.SIunits.HeatCapacity StC = 550
    "Motor Case thermal Capacity"                                                 annotation(Dialog(group = "Thermal data"));
  parameter Modelica.SIunits.ThermalConductance MotCC = 0.2041
    "Motor Natural Convection Constant"                                                            annotation(Dialog(group = "Thermal data"));
  parameter Real kc(final unit = "V/A") = Vdc * 1 / sqrt(3) "Converter gain" annotation(Dialog(group = "Dependent data (no input possible)", enable = false));
  parameter Modelica.SIunits.Time Ta = Lsq / Rsq "Armature time constant" annotation(Dialog(group = "Dependent data (no input possible)", enable = false));
  parameter Real kp = Lsq / Tcl "Current controller proportional gain" annotation(Dialog(group = "Dependent data (no input possible)", enable = false));
  parameter Real ki = Rsq / Tcl "Current controller integral gain" annotation(Dialog(group = "Dependent data (no input possible)", enable = false));
end Robbe_ROXXY2824;
