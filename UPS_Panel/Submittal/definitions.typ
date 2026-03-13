#import "@preview/elembic:1.1.1" as e: field, types

#let project = "32384 Charles County Pomonkey Pump Station Improvements"
#let purpose = [#underline[*UPS Panel Submittal*]]
#let spec_section = "Section 17441 - Controls System Hardware"
#let engineer = "WRA"
#let contractor = "Johnston Construction"
#let service = "UPS Panel"
#let reference = "Charles County Pomonkey Pump Station Improvements"

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
  "24VDC Power Supply": "569",
  "PLC": "36",
  "DO Card": "3.6",
  "Modem": "1",
  "Transmitters (x2)": "34",
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

  list(indent: 1em)[$"Total power draw" = (#total_power_draw"VA")*(900"W")/(#pws_load_cap"VA")=#va_to_watts"W"$. At this load, with 2 additional battery packs, the UPS has a runtime of 1 hour and 54 minutes.] 
}
