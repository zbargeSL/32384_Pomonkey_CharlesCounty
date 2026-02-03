#import "definitions.typ": *

#let components = (
  component(
    manufacturer: "Endress + Hauser",
    catalog: "FMR20-CBPBMVCEVEE3+Z1",
    qty: "1",
    sheet: 1,
    description: "Radar Level Transmitter",
    tags: ("LT-01",),
    service: "Pump Station Wet Well",
    specs: (
      [Up to 66ft measuring range],
      [FMR20 - Micropilot FMR20 series time-of-flight radar measurement],
      [CB - CSA C/US IS CI.I Div.2 Gr.A-d, AEx/Ex ia IIC T4 approvals],
      [P - 2 wire power supply, 4-20mA HART output, HART/Bluetooth (App) configuration operation],
      [BM - 40mm/1-$1/2$" antenna, 15m liquid, -40#sym.degree;C...80#sym.degree;C max measuring range],
      [VCE - Thread ASME MNPT1 process connection rear side, PVDF material, FNPT $1/2$ conduit connection],
      [VEE - Thread ASME MNPT1-$1/2$ process connection front side, PVDF material],
      [3 - 20m/65ft cable length],
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
      [Pivotable and adjustable arm for mounting E+H FMR20],
      [Allows alignment of transmitter with the center of a channel],
    ),
  ),
  component(
    manufacturer: "Anchor Scientific",
    catalog: "GSE60NONC-GOLD",
    qty: "6",
    sheet: 2,
    description: "Float Switch, NO",
    tags: ("LSLL-01", "LSL-01", "LSL-02", "LSH-03", "LSHH-01", "LSH-02",),
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
    manufacturer: "Endress + Hauser",
    catalog: "RSG35-B2A+C1",
    qty: "1",
    sheet: 3,
    description: "Digital Chart Recorder",
    tags: ("RECORDER",),
    service: "PLC/RTU Panel Transmitter Digital Chart Recorder",
    specs: (
      [RSG35 - Ecograph T data manager],
      [B - 4 universal inputs],
      [2 - 24 -10%...+15% AC/DC power supply],
      [A - Ethernet RJ45 + USB communication],
      [C1 - SD card, industrial grade, 1GB],
    ),
  ),
  component(
    manufacturer: "Endress + Hauser",
    catalog: "71187780",
    qty: "1",
    sheet: 3,
    description: "1GB Neutral SD Memorycard",
    tags: ("RECORDER",),
    service: "PLC/RTU Panel Transmitter Digital Chart Recorder",
    specs: (
      [SD memory card],
      [1GB storage capacity],
      [Generic, unbranded SD card],
    ),
  ),
  component(
    manufacturer: "Precision Digital",
    catalog: "PD765-7X2-00",
    qty: "1",
    sheet: 4,
    description: "Digital Process Meter Display",
    tags: ("LEVEL DISPLAY",),
    service: "PLC/RTU Panel Process Meter Display",
    specs: (
      [1.2" red LED 4 digit display],
      [NEMA 4X, IP65 rated with provided panel gasket],
      [24VDC supply voltage],
      [-40 to 185#sym.degree;F operating temperature range],
      [4-20mA input, 2 form C SPDT relays rated at 3A at 30VDC or 3A at 250VAC resistive load],
      [Programmable output relay operation and reset functionality],
      [Max/Min display stored until reset by user or meter is turned off],
      [Four front panel buttons for programming display],
    ),
  ),
)

#let spare_parts = components.filter(comp => comp.catalog == "71187780")
    ),
  ),
)

#let spare_parts = components.filter(comp => comp.catalog == "71187780")

#let spare_parts_qty = (
  "71187780": "1",
)
