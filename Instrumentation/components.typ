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
      [spec 1],
    ),
  ),
  component(
    manufacturer: "Anchor Scientific",
    catalog: "P60NO-SSTNM",
    qty: "6",
    sheet: 2,
    description: "Float Switch, NO",
    tags: ("LSLL-01", "LSL-01", "LSL-02", "LSH-03", "LSHH-01", "LSH-02",),
    service: "Pump Station Level Float Switches",
    specs: (
      [spec 1],
    ),
  ),
  component(
    manufacturer: "Endress+Hauser",
    catalog: "RSG35-B2A+C1",
    qty: "1",
    sheet: 3,
    description: "Digital Chart Recorder",
    tags: ("RECORDER",),
    service: "PLC/RTU Panel Transmitter Digital Chart Recorder",
    specs: (
      [spec 1],
    ),
  ),
  component(
    manufacturer: "Endress+Hauser",
    catalog: "71187780",
    qty: "1",
    sheet: 3,
    description: "1GB Neutral SD Memorycard",
    tags: ("RECORDER",),
    service: "PLC/RTU Panel Transmitter Digital Chart Recorder",
    specs: (
      [spec 1],
    ),
  ),
  component(
    manufacturer: "Endress+Hauser",
    catalog: "RIA452-C211A11A",
    qty: "1",
    sheet: 4,
    description: "Digital Process Meter Display",
    tags: ("RECORDER",),
    service: "PLC/RTU Panel Process Meter Display",
    specs: (
      [spec 1],
    ),
  ),
)

#let spare_parts = components.filter(comp => comp.catalog == "71187780")

#let spare_parts_qty = (
  "71187780": "1",
)
