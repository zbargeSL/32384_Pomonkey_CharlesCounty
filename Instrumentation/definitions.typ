#import "@preview/elembic:1.1.1" as e: field, types

#let is_resubmittal = true

#let submittal_type = "Submittal"

#if is_resubmittal {
  submittal_type = "Resubmittal"
}

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*Instrumentation Record Submittal*]]
#let spec_section = "Section 17500 - Instrumentation"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "Instruments"
#let reference = "32384 Charles County Pomonkey Pump Station Improvements"

#let is_instrument_submittal = true
#let has_spare_parts = false
#let has_heating_calc = false

#let term_blocks = [TB-AC]

#let drawings = (
  "D-01": "ENCLOSURE EXT. LAYOUT"
)

#let comments = (
  "This submittal assumes cable lengths for the various instruments included. Contractor to confirm cable lengths for instruments.",
)

#let resub_comments = (
  "Specification 17500, Section 1.03 - B requires additional information beyond beam angle, width, and depth. This includes but is not limited to distance from \"ladders, fill stream, floats, and any other nearby object\".

  Further, current dimensional indicate mounting of transmitter near fill stream. Per manufacturer instructions, transmitter shall not be installed above the filling curtain. Contractor shall provide dimensional drawings meeting the specification requirements, and manufacturer recommended installation requirements. Return record copy.":[Level sensor model has been changed to the 3" antenna to allow for a tighter beam angle. Updated dimensional drawings have been included. Additional specific mounting information will be coordinated with the contractor.],
  "Submittal changed \"LSL-02\" tag to \"LSL-03\", and \"LSH=-2\" tag to \"LSH-03\". This still results in eight total floats submitted for this project. Per prior comment, only six are required.
  Since Back Up Pump submittal is approved, and includes two floats, remove LSL-03 and LSH-03 from this submittal. Return record copy.":[Floats LSL-03 and LSH-03 have been removed from this submittal as requested.],
  "Mounting hardware shown on I-9 is not limited to external weight, but also cable strain reliefs, hook, cable eye, and anchor. Submit hardware as requested in record copy.": [A float bracket has been submitted with included strain relief. Verify this mounting hardware is sufficient.],
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
