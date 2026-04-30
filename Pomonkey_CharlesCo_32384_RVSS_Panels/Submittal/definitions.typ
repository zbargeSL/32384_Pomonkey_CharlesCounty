#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*RVSS Control Panels Resubmittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "SPMP-01/02 RVSS Control Panels"
#let reference = "Charles County Pomonkey Pump Station Improvements"
#let resubmittal_no = "16421-01-01"

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
  "Per Contract Drawing S-4, top of backplate is approximately 6’ above grade. Per submittals, SPMP panels are 4’ tall and PLC panel is 5’ tall. If panels are installed at top of backplate, distance provided between bottom of panel and grade is approximately 2’ (SPMP) and 1’ (PLC). Per NFPA 820, Annex A Figure A.4.2(a), spherical area with radius of 3’ surrounding hazardous gas vents are considered classified. Contract Drawing E-2 shows conduits from wet well penetrating grade directly below SPMP panels. If installed in this manner, panels would be in classified area and is not permitted. Contractor shall submit backplate sketch outlining electrical equipment dimensions and locations, and confirm that spherical radius of 3’ requirement is met.": [This has been acknowledged and a rudimentary drawing of the backplate with all of the panels on it has already been submitted. This to be coordinated between the electrician and contractor.],
  "Equipment is conditionally approved provided that all panels (SCP, SPMP-01, SPMP-02, SFAN-01, UPS, and PLC) fit within the 11-ft backplate and comply with all applicable NFPA and NEC requirements. Final panel layout, dimensions, and code compliance remain the Contractor’s responsibility.": [This comment has been acknowledged.],
  "Heater is currently shown located outside of panel. Locate heater inside panel and update drawings as required.": [The location of the heater has been updated to clearly indicate that the heater shall be mounted inside the enclosure, on the side rather than on the backpanel.],
  "Submitted Diris 4825 0500 does not include ethernet Modbus TCP as required by Specification 17441 Section 2.18. Provide 4825 0501.": [The model of the Diris power meter has been updated to meet Specification 17441 Section 2.18.],
  "Provide new cutsheet for associated panel.": [Because of the size contraints of this panel, the enclosure will have to be custom ordered from Saginaw. The details and construction will be the same as the enclosure/backpanel whose cut sheet is included in the submittal, with the only difference being the dimension as indicated on the submitted drawing package.],
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
