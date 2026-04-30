#import "@preview/elembic:1.1.1" as e: field, types

#let name = "32385 Pomonkey Pump Station SFAN CP Resubmittal"

#let project = "Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*Secondary Fan Control Panel Resubmittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "Secondary Fan Control Panel"
#let reference = "Charles County Pomonkey Pump Station Improvements"

#let is_instrument_submittal = false
#let has_spare_parts = false
#let has_heating_calc = false

#let term_blocks = [TB-AC]

#let drawings = (
  "D32384-50": "POMONKEY PS SFAN CONTROL PANEL EXTERIOR PANEL LAYOUT",
  "D32384-51": "POMONKEY PS SFAN CONTROL PANEL INTERIOR PANEL LAYOUT",
  "D32384-52": "POMONKEY PS SFAN CONTROL PANEL 120VAC WIRING DIAGRAM",
)

#let comments = (
  [The wiring schematics assume a $1/4$HP motor with an FLA of 5.8. Please verify and confirm the motor nameplate details for the secondary fan motor.],
)

#let resub_comments_1 = (
  "Fault Contact: Overload contact label is incorrect update as shown below.": [The overload contact which turns on the fault light has been updated accordingly to trigger on fan motor overload.],
  "Panel Size: Per Contract Drawing I-8, backplate width shall be 11ft. Submitted panel widths are as follows:
  - SCP: 20.00 in.
  - SPMP-01: 31.38 in.
  - SPMP-02: 31.38 in.
  - SFAN-01: 16.00 in.

Based on Contract Drawings, UPS and PLC panels are estimated to be 20 and 30 inches wide, respectively. Total width of all panels currently comes to 149in. approximately, which will not suit the 11ft backplate. Contractor shall minimize panel widths (to match Contract Drawings) as necessary to meet backplate width requirements.": [The dimensions of the RVSS panels have been modified such that all submitted panel dimensions should fit on the 11ft backplate.],
"SFAN-01 Horspower Comment: In response to Contractor comment on submittal page 5/77: SFAN-01 is shown with 1/4HP motor in submittal 8-15700-01 FRP Utility Set Fan": [Sherwood Logan has acknowledged that the submitted fan motor is $1/4$HP.]
)

#let resub_comments_2 = (
  "Identify initial RCT set point on drawings.": [Initial RCT set point has been identified on the drawings.],
  "Equipment is conditionally approved provided that all panels (SCP, SPMP-01, SPMP-02, SFAN-01, UPS, and PLC) fit within the 11-ft backplate and comply with all applicable NFPA and NEC requirements. Final panel layout, dimensions, and cod compliance remain the Contractor's responsibility.": [Sherwood Logan and Associates has acknowledged and accepts responsibility for panel layout and dimension responsibility, however code compliance is not a responsibility of Sherwood Logan and Associates.],
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
