#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*Secondary Control Panel Submittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "Secondary Control Panel"
#let reference = "Charles County Pomonkey Pump Station Improvements"

#let is_instrument_submittal = false
#let has_spare_parts = false
#let has_heating_calc = false

#let term_blocks = [TB-AC, TB-ISB]

#let drawings = (
  "D32384-40": "ENCLOSURE EXT. LAYOUT",
  "D32384-41": "ENCLOSURE INT. LAYOUT",
  "D32384-42": "120VAC WIRING DIAGRAM",
  "D32384-43": "120VAC WIRING DIAGRAM"
)

#let comments = (
)

#let heat_dissapated = (
  "UPS": "225",
  "DC Power Supplies": "112.5",
  "Digital Input Modules": "139.12",
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
  ),
)
