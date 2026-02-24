#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*RVSS Control Panels Resubmittal*]]
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

// Dictionary in Comment: Sherwood Logan Response Format
#let resub_comments = (
  "Main Circuit Breaker: Provide 30-amp circuit breaker as called out in Contract Documents": "The main circuit breaker has been swapped out for 30-amp main circuit breaker as described in the contract documents.",
  "Panel Size: Per Contract Drawing I-8, backplate width shall be 11ft. Submitted panel widths are as follows:
  - SCP: 20.00 in.
  - SPMP-01: 31.38 in.
  - SPMP-02: 31.38 in.
  - SFAN-01: 16.00 in.

Based on Contract Drawings, UPS and PLC panels are estimated to be 20 and 30 inches wide, respectively. Total width of all panels currently comes to 149in. approximately, which will not suit the 11ft backplate. Contractor shall minimize panel widths (to match Contract Drawings) as necessary to meet backplate width requirements.": "The size of the SPMP-01 and SPMP-02 panels have been modified such that the width of all designed panels will fit on the 11ft. backplate.",
  "Wall Mount Foot Kit: Foot Kit shall be stainless steel as indicated in Contract Drawing I-4.": "The foot kit for the RVSS panels has been swapped to a stainless steel version per the requirement on Contract Drawing I-4.",
  "Transient Voltage Surge Suppressor: TVSS submitted is not required per Contract Drawing I-4. Provide justification for TVSS.":"The TVSS has been removed as it is not required per Contract Drawing I-4.",
  "Power Meter: Power Meter submitted does not include LCD as required per Specification 17441 Section 2.18. Provide Socomec, Diris A40 Series or Approved Equal.":"The submitted power meter has been changed to a Diris A40 series power meter as required by Specification 17441 Section 2.18.",
  "MiniCas: 
a. MiniCas II cutsheet provided indicates line power at terminal 2 of MiniCas (Page 148 of 175). Drawings submitted indicates line power at terminal 6 of MiniCas. Confirm/revise drawings as necessary.
b. Add fuse as shown upstream of MiniCas on Contract Drawing I-4. Update accordingly.": [#enum(numbering: "a.")[The MiniCAS cut sheet has been updated to reflect the correct part number and wiring diagram. It is confirmed that line power is on terminal 6 of the MiniCAS.][A fuse has been added upstream of the MiniCAS as shown on Contract Drawing I-4.]],
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
