#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*RVSS Control Panels Submittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "SPMP-01/02 RVSS Control Panels"
#let reference = "Charles County Pomonkey Pump Station Improvements"

#let term_blocks = [TB-AC]

#let drawings = (
  "D32384-01": "SPMP-01/02 RVSS PANEL EXTERIOR LAYOUT",
  "D32384-02": "SPMP-01/02 RVSS PANEL INTERNAL LAYOUT",
  "D32384-03": "SPMP-01/02 RVSS PANEL 480/120VAC WIRING DIAGRAM",
  "D32384-04": "SPMP-01/02 RVSS PANEL 120VAC WIRING DIAGRAM",
)

#let comments = (
)

#let heat_dissapated = (
  "RVSS": "65",
  "Transformer": "73",
)

#let component = e.types.declare(
  "component",
  doc: "data for component used in instrument/panel",
  prefix: "@basilbarge/submittal, v1",
  fields: (
    field("manufacturer", str, doc: "Manufacturer Name", required: true, named: true),
    field("catalog", str, doc: "Part catalog number", required: true, named: true),
    field("qty", int, doc: "Part quantity", required: true, named: true),
    field("sheet", int, doc: "Sheet number that cut sheet is on", required: true, named: true),
    field("description", str, doc: "Part description", required: true, named: true),
    field("tags", array, doc: "Tags used for part number", required: true, named: true),
    field("specs", array, doc: "Specifications for part", required: true, named: true),
  ),
)
