#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*Secondary Control Panel Resubmittal*]]
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

#let resub_comments = (
  "Panel Size: Per Contract Drawing I-8, backplate width shall be 11ft. Submitted panel widths are as follows:
  - SCP: 20.00 in.
  - SPMP-01: 31.38 in.
  - SPMP-02: 31.38 in.
  - SFAN-01: 16.00 in.

Based on Contract Drawings, UPS and PLC panels are estimated to be 20 and 30 inches wide, respectively. Total width of all panels currently comes to 149in. approximately, which will not suit the 11ft backplate. Contractor shall minimize panel widths (to match Contract Drawings) as necessary to meet backplate width requirements.": [The width of the RVSS panel enclosures have been modified so that all of the submitted panel dimensions should fit on the 11ft backplate.],
"Charles County Comment - High Level Float: It appears the high-level float will activate the secondary control mode. We want to make sure the high-level alarm does not generate repeatedly when the station is in secondary mode.": [The high-level float does activate the secondary control mode. According to the PLC I/O List in Spec Section 17600 3.07 the Secondary Control Panel High Level Alarm is monitored by the PCS, but is not a PCS alarm. Thus, the repetitive alarm concern should not present an issue.]
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
