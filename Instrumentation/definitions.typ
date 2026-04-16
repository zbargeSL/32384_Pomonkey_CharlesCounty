#import "@preview/elembic:1.1.1" as e: field, types

#let is_resubmittal = true

#let submittal_type = "Submittal"

#if is_resubmittal {
  submittal_type = "Resubmittal"
}

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*Instrumentation #submittal_type*]]
#let spec_section = "Section 17500 - Instrumentation"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "Instruments"
#let reference = "32384 Charles County Pomonkey Pump Station Improvements"

#let is_instrument_submittal = true
#let has_spare_parts = true
#let has_heating_calc = false

#let term_blocks = [TB-AC]

#let drawings = (
  "D-01": "ENCLOSURE EXT. LAYOUT"
)

#let comments = (
  "This submittal assumes cable lengths for the various instruments included. Contractor to confirm cable lengths for instruments.",
)

#let resub_comments = (
  "Specification Section 17500.1.03.B for non-contacting level transmitters states that calculations, arrangement, and dimensional drawings for the installation location shall be submitted. These were not included in this submittal for the Radar Level Transmitter.":[A dimensional drawing with calculations has been included.],
  "Submittal \"11307-01-02 NEW Back Up Pump\" includes float LSL-02 and LSH-02. This submittal also includes LSL-02 and LSH-02 on page 37/82. Contractor shall coordinate supply and provide 6 floats total, not 8.":[The tags included in this submittal for the float switches have been updated so as not to include floats LSL-02 and LSH-02 which have already been submitted on.],
  "Submit mounting hardware as indicated on Contract Drawing I-9.": [These types of floats are "mounted" using an external weight which is supplied with the float switch.],
  "After discussion with the County, the digital recorder is not needed for the site. Remove digital chart recorder cutsheet. Provide a credit associated with the removal of the digital chart recorder from the project.":[The digital chart recorder has been removed from this submittal],
  "The submitted display does not meet the requirements of Specification 17500 Section 2.05:
    A. Display shall be a 7 digit
    B. Display shall contain a bar graph": [The display has been updated to a manufacturer and model that meets the requirements of Specification 17500 Section 2.05.],
  "The specified Endress+Hauser Micropilot FMR20 is being phased out by the manufacturer. Provide the manufacturer's current replacement model FMR20B, configured to meet the specified performance and signal requirements. The replacement model is the manufacturer's current equivalent and is available at a lower cost than the originally specified unit. Revise and resubmit product data accordingly.": [The Micropilot FMR20 that was previously submitted on has been replaced with the FMR20B in this submittal.],
)

#let resubmittal_number = "17500-01-01"

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
    field("service", str, doc: "Service for instrumentation", required: false, named: true)
  ),
)
