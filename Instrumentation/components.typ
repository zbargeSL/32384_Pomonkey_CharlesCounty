#import "definitions.typ": *

#let components = (
  component(
    manufacturer: "Endress + Hauser",
    catalog: "FMR20B-FBBADTBNVCGXR0D+Z1",
    qty: "1",
    sheet: 1,
    description: "Radar Level Transmitter",
    tags: ("LT-01",),
    service: "Pump Station Wet Well",
    specs: (
      [Up to 98.4ft measuring range],
      [FMR20 - Micropilot FMR20 series time-of-flight radar measurement],
      [FB - CAN/US IS Cl.I,II,III Div.1 Gr.A-G T4 AEx/Ex ia IIC T4, AEx/Ex ia IIIC],
      [BA - 2 wire, 4-20mA HART output],
      [D - LED + bluetooth display/operation],
      [T - Pre-installed cable for electrical connection],
      [BN - PVDF encapsulated, 80mm / 3" antenna],
      [VCG - Thread ASME MNPT1 process connection cable entry],
      [XR0 - Without process connection on antenna end, prepared for UNI slip on flange],
      [D - 20m/65ft cable length],
      [Z1 - Tagging],
    ),
  ),
  component(
    manufacturer: "Endress + Hauser",
    catalog: "71429910",
    qty: "1",
    sheet: 1,
    description: "Swiveling Mounting Bracket, Sewer",
    tags: ("LT-01",),
    service: "Pump Station Wet Well",
    specs: (
      [Pivotable and adjustable arm for mounting E+H FMR20B],
      [Allows alignment of transmitter with the center of a channel],
    ),
  ),
  component(
    manufacturer: "Anchor Scientific",
    catalog: "GSE60NONC-GOLD",
    qty: "4",
    sheet: 2,
    description: "Float Switch, NO",
    tags: ("LSLL-01", "LSL-01", "LSH-01", "LSHH-01",),
    service: "Pump Station Level Float Switches",
    specs: (
      [G - Model G float switch],
      [SE - External weight mounting style],
      [60 - 60ft cable length],
      [NONC - 1 normally open, 1 normally closed contact],
      [GOLD - For use in intrinsically safe applications],
    ),
  ),
  component(
    manufacturer: "SJE Rhombus",
    catalog: "1009433",
    qty: "1",
    sheet: 2,
    description: "Float Switch Mounting Bracket",
    tags: ("LSLL-01", "LSL-01", "LSH-01", "LSHH-01",),
    service: "Pump Station Level Float Switches",
    specs: (
      [4 float bracket],
      [Supplied with cord strain relief connectors],
      [300 series stainless steel construction],
      [Strain relief connector accomodates 18/2, 18/3, 16/2, 16/3 SJOW and SJTW cords.],
    ),
  ),
  component(
    manufacturer: "E+H",
    catalog: "RIA452-C211A11A",
    qty: "1",
    sheet: 4,
    description: "Digital Process Meter Display",
    tags: ("LEVEL DISPLAY",),
    service: "PLC/RTU Panel Process Meter Display",
    specs: (
      [RIA452 - Process indicator with pump control unit],
      [C - FM AIS, I, II, III/2/ABCDEFG approvals],
      [2 - 20-30VDC, 20-28VAC power supply],
      [1 - 0/4-20mA measuring signal],
      [1 - 4 output relays, SPDT],
      [A - Standard communication],
      [1 - 96x96 panel mounting housing, front IP65],
      [1 - Basic version],
      [A - Standard version],
    ),
  ),
)

#let spare_parts = components.filter(comp => comp.catalog == "FMR20B-FBBADTBMVCGVEED+Z1")

#let spare_parts_qty = (
  "FMR20B-FBBADTBMVCGVEED+Z1": "1",
)
