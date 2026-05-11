#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*PLC/RTU Control Panel Resubmittal*]]
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
  [The digital process meter has been submitted under a separate cover.],
)

#let resub_comments = (
  "All panels (SCP, SPMP-01, SPMP-02, SFAN-01, UPS, and PLC) shall fit within the 11-ft backplate and comply with all applicable NFPA and NEC requirements. Final panel layout, dimensions, and code compliance remain the Contractor’s responsibility.": [Panel locations will be coordinated with the contractor per the conference call on 5/7. Contractor will provide updated sketch of panel layouts.],
  "Per Contract Drawing S-4, top of backplate is approximately 6’ above grade. Per submittals, SPMP panels are 4’ tall and PLC panel is 5’ tall. If panels are installed at top of backplate, distance provided between bottom of panel and grade is approximately 2’ (SPMP) and 1’ (PLC). Per NFPA 820, Annex A Figure A.4.2(a), spherical area with radius of 3’ surrounding hazardous gas vents are considered classified. Contract Drawing I-8 indicates radar level transmitter LIT-01 cable terminated at PLC panel. Conduit cannot penetrate grade directly below PLC panel. Contractor shall submit backplate sketch outlining electrical equipment dimensions and locations, and confirm that spherical radius of 3’ requirement is met.": [Panel locations will be coordinated with the contractor per the conference call on 5/7. Contractor will provide updated sketch of panel layouts.],
  "After discussion with the County, the digital recorder is not needed for the site. Remove digital recorder from BOM, panel, and wiring diagrams. Provide a credit associated with the removal of the digital recorder from this project.": [The digital chart recorder has been removed from the BOM, panel, and the wiring diagrams for the enclosure.],
  "Heater is not shown on panel elevation. Update to show.": [The heater has been added to the panel elevation. The heater shall be mounted on the interior right side of the panel.],
  "Per page 115/353 of Submittal 16421-01-02 \“NEW Individual Solid State Motor Starters\”, Diris output is \“optocoupler 30 VDC, 20mA max.\”. Provide additional card (separate from 120VAC type) for Diris A40 pulsed output and confirm compatibility.": [An additional input card has been added to support the Diris pulsed output and is compatible with the signal.],
  "Grounding terminal part # on BOM does not match data sheet. Revise for conformity": [The data sheet has been updated with the correct part number shown for the grounding terminal block.],
  "Per Specification 17260 Section 2.03 and 17250 Section 2.02 (see Addendum #2), Contractor shall provide the latest 3 user licenses for OIT and PLC software. Revise submittal to include license information.": [The submittal has been revised to include the appropriate license information for the PLC and OIT software.],
  "DO card submitted indicates Triac outputs. Per Specification 17250 Section 2.03, DO shall be isolated relay output type. Revise accordingly.": [The submitted output card's documentation explicitly states that it contains 8 NO isolated output relays.],
  "Run identification below is incorrect. Revise for accuracy": [The reference run identification appears to be correct. The signal from the door switch activates a relay. One of the relays NC contacts is then wired into the PLC input card to indicate that the enclosure door has been opened. That contact is shown on line 1218A.],
  "Provide fuse upstream of Modem. As show on Contract Drawing I-6.": [A fuse has been added upstream of the modem as shown on Contract Drawing I-6.],
  "Name Plate Legend Table lists QTY 2 for Panel, Control Power, and Alarm Test. Revise for Accuracy.": [The Name plate legend table quantities have been updated to reflect an accurate quantity for the control panel.],
)

#let heat_dissapated = (
  "PLC": "95.5",
  "Ethernet Switch": "20.5",
  "24VDC Power Supplies": "72",
  "PLC Power Supply": "29.0",
)

#let pws_components = (
  "Ethernet Switch": "0.0417",
  "Modem": "0.0417",
  "OIT": "0.7083",
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
