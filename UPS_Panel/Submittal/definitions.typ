#import "@preview/elembic:1.1.1" as e: field, types

#let is_resubmittal = true

#let submittal_type = "Submittal"

#if is_resubmittal {
  submittal_type = "Resubmittal"
}

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*UPS Panel #submittal_type*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "UPS Panel"
#let reference = "Charles County Pomonkey Pump Station Improvements"
#let resubmittal_number = "17441-03-01"

#let is_instrument_submittal = false
#let has_spare_parts = false
#let has_heating_calc = false

#let term_blocks = [TB-AC]

#let drawings = (
  "D32384-30": "POMONKEY PUMP STATION UPS PANEL ENCLOSURE EXT. LAYOUT",
  "D32384-31": "POMONKEY PUMP STATION UPS PANEL ENCLOSURE INT. LAYOUT",
  "D32384-32": "POMONKEY PUMP STATION UPS PANEL UPS WIRING DIAGRAM",
)

#let ups_components = (
  "24VDC Power Supply": "63.72",
  "PLC": "36",
  "DO Card": "3.6",
  "Modem": "1",
  "Transmitters (x2)": "34",
)

#let pws_components = (
  "Ethernet Switch": "1",
  "Modem": "1",
  "OIT": "17",
  "Level Display": "24"
)

#let comments = (
)

// Resubmittal comments dictionary in Comment: Sherwood Logan Response format
#let resub_comments = (
  "Load calculation on page 26/59 indicates \"... UPS has a runtime of approximately 3 hours and 2854 minutes.\" Revise typo.": [The typo for the load calculation has been fixed.],
  "Equipment is conditionally approved provided that all panels (SCP, SPMP-01, SPMP-02, SFAN-01, UPS, and PLC) fit within the 11-ft backplate and comply with all applicable NFPA and NEC requirements. Final panel layout, dimensions, and code compliance remain the Contractor's responsibility.": [Responsibility for final panel layout and dimensions is acknowledged and understood by Sherwood Logan and Associates, however Sherwood Logan and Associates is not responsible for code compliance.],
  "Revise nameplate item #2 QTY.": [Nameplate item \#2 quantity has been appropriately revised.],
  "Circuit Breaker 7940102580 is identified on cutsheet but not shown on BOM or wiring diagrams. Revise for conformity.": [The cutsheet for circuit breakers has been revised so as not to highlight circuit breaker 7940102580.],
  "Contractor shall confirm that the control panel shall be UL 508A listed.": [Sherwood Logan and Associates confirms that the control panel shall be UL 508A listed upon fabrication.],
  "Provide breakdown of 24VDC power supply load and remove digital recorder from load calculation. Refer to submittal \"SCADA Control Panel 17250-01\" comments for additional information.": [A breakdown of the 24VDC power supply load calculation has been provided with the digital chart recorder removed."],
  "It would be desirable to include spare fuse blocks and neutrals/commons to accomodate for future expansion.": [This panel was not designed with any fuse blocks, however spare terminal blocks will be supplied according to control panel specifications.],
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
    field("service", str, doc: "Service for instrument", required: false, named: true),
    field("misc", content, doc: "Data to be rendered for device after specs", required: false, named: true)
  ),
)


#let gen_load_calc_table(pws_tags, pws_load_cap, pws_components) = {
  underline[UPS load calculations] 
  linebreak()
  linebreak()

  if pws_tags.len() > 1 {
    let desc = ""

    for (i, tag) in pws_tags.enumerate() {
        //second to last tag in array
        if i == 0 {
          desc += tag + ", "
        }  else if i == 1{
          desc += tag
        } else if i == pws_tags.len() -1 {
          desc += " and " + tag
        } else {
         desc += ", " + tag 
        }    
      }
      
    [#desc are redundant]
  }

  let total_power_draw = pws_components.values().reduce((acc, v) => float(v) + float(acc))

  table(
    columns: (75%, 25%),
    align: (left, center),
    stroke: (x,y) => if y == 0 or (x == 1 and y == pws_components.len()) {(bottom: 1pt)} else {none},
    table.header([Description], [Power Draw #linebreak() (VA)]),
    ..pws_components.pairs().flatten(),
    table.cell(align: right, [Total Power Draw]), [#total_power_draw]
  )

  let perc_use = float(total_power_draw)/float(pws_load_cap) * 100
  let va_to_watts = (float(total_power_draw)*900)/float(1000)

  list(indent: 1em)[$"Total power draw" = (#total_power_draw"VA")*(900"W")/(#pws_load_cap"VA")=#va_to_watts"W"$. At this load, with an additional battery pack, the UPS has a runtime of approximately 6 hours and 55 minutes.] 
}
 

#let gen_pws_calc_table(pws_tags, pws_load_cap, pws_components) = {
  underline[PWS load calculations] 
  linebreak()
  linebreak()

  if pws_tags.len() > 1 {
    let desc = ""

    for (i, tag) in pws_tags.enumerate() {
        //second to last tag in array
        if i == 0 {
          desc += tag + ", "
        }  else if i == 1{
          desc += tag
        } else if i == pws_tags.len() -1 {
          desc += " and " + tag
        } else {
         desc += ", " + tag 
        }    
      }
      
    [#desc are redundant]
  }

  let total_power_draw = pws_components.values().reduce((acc, v) => float(v) + float(acc))

  table(
    columns: (75%, 25%),
    align: (left, center),
    stroke: (x,y) => if y == 0 or (x == 1 and y == pws_components.len()) {(bottom: 1pt)} else {none},
    table.header([Description], [Power Draw #linebreak() (W)]),
    ..pws_components.pairs().flatten(),
    table.cell(align: right, [Total Power Draw]), [#total_power_draw]
  )

  let perc_use = float(total_power_draw)/float(pws_load_cap) * 100
  let va_to_watts = float((total_power_draw)*float(pws_load_cap)/float(480)*1.25)

  list(indent: 1em)[$"Total power draw" = (#total_power_draw"W")*(#pws_load_cap"VA")/(480"W")*1.25 "safety factor"=#calc.round(va_to_watts, digits:2)"VA"$.] 
}
