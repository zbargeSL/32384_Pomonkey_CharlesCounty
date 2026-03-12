#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*PLC/RTU Control Panel Submittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "PLC/RTU Control Panel"
#let reference = "Charles County Pomonkey Pump Station Improvements"

#let is_instrument_submittal = false
#let has_spare_parts = false
#let has_heating_calc = true

#let term_blocks = [TB-AC, TB-AI, TB-AO, TB-DC, TB-DI, TB-DO]

#let drawings = (
  "D32384-10": "Pomonkey Pump Station Improvements PLC/RTU Control Panel EXT. Layout",
  "D32384-11": "Pomonkey Pump Station Improvements PLC/RTU Control Panel INT. Layout",
  "D32384-12": "Pomonkey Pump Station Improvements 120VAC Wiring Diagram",
  "D32384-13": "Pomonkey Pump Station Improvements 120VAC Wiring Diagram",
  "D32384-14": "Pomonkey Pump Station Improvements 24VDC Wiring Diagram",
  "D32384-15": "Pomonkey Pump Station Improvements Digital Input Wiring Diagram",
  "D32384-16": "Pomonkey Pump Station Improvements Digital Input Wiring Diagram",
  "D32384-17": "Pomonkey Pump Station Improvements Digital Input Wiring Diagram",
  "D32384-18": "Pomonkey Pump Station Improvements Analog Input Wiring Diagram",
  "D32384-19": "Pomonkey Pump Station Improvements Analog Output Wiring Diagram",
)

#let comments = (
  [The digital process meter and digital chart recorder have been submitted under a separate cover.],
)

#let heat_dissapated = (
  "PLC": "95.5",
  "Ethernet Switch": "20.5",
  "24VDC Power Supplies": "307.1",
  "PLC Power Supply": "29.0",
)

#let pws_components = (
  "Ethernet Switch": "0.0417",
  "Modem": "0.0417",
  "OIT": "0.7083",
  "Chart Recorder": "1.4583",
  "Level Display": "1"
)

#let component = e.types.declare(
  "component",
  doc: "data for component used in instrument/panel",
  prefix: "@basilbarge/submittal, v1",
  fields: (
    field("manufacturer", str, doc: "Manufacturer Name", required: true, named: true),
    field("catalog", str, doc: "Part catalog number", required: true, named: true),
    field("qty", str, doc: "Part quantity", required: true, named: true),
    field("sheet", int, doc: "Sheet number that cut sheet is on", required: true, named: true),
    field("description", str, doc: "Part description", required: true, named: true),
    field("tags", array, doc: "Tags used for part number", required: true, named: true),
    field("specs", array, doc: "Specifications for part", required: true, named: true),
    field("service", str, doc: "Service for instrument", required: false, named: true),
    field("misc", content, doc: "Content to render after specs", required: false, named: true)
  ),
)
