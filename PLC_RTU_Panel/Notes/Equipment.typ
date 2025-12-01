#set page(
  paper: "us-letter",
)

#show link: underline

#align(center)[
  Equipment Information
]

- Enclosure
   - Need a Dead Front Panel (something like #link("https://www.saginawcontrol.com/partnumber_info/?n=SCE-DF7260")[SCE-DF7260] from Saginaw matched to enclosure size)
   - Estimated 72" Hx36" Wx24" D
   - Laptop Shelf
   - Drain
   - Breather
   - Fan package
   - Grills package
   - N4X Rain Hood

- SPD
  - Going to use #link("https://citel.us/en/ac-power/din-rail-ac/ds42s-120g")[DS42S-120/G], should be an approved equal for spec

- Control Relays
  - General Relays - Harmony RXM Series
  #table(
    columns: (1fr,1fr,1fr,1fr),
    align: center,
    table.header(
      [ Voltage ], [ DPDT ], [ 3PDT ], [ 4PDT ],
    ),
    [24VDC],
    [#link("https://www.se.com/us/en/product/RXM2AB2BD/miniature-plug-in-relay-harmony-electromechanical-relays-12a-2co-with-led-lockable-test-but-to-n-24v-dc/")[RXM2AB2BD]],
    [#link("https://www.se.com/us/en/product/RXM3AB2BD/miniature-plug-in-relay-harmony-electromechanical-relays-10a-3co-with-led-lockable-test-but-to-n-24v-dc/")[RXM3AB2BD]],
    [#link("https://www.se.com/us/en/product/RXM4AB2BD/miniature-plug-in-relay-harmony-electromechanical-relays-10a-4co-with-led-lockable-test-but-to-n-24v-dc/")[RXM4AB2BD]],
    [120VAC],
    [#link("https://www.se.com/us/en/product/RXM2AB2F7")[RXM2AB2F7]],
    [#link("https://www.se.com/us/en/product/RXM3AB2F7")[RXM3AB2F7]],
    [#link("https://www.se.com/us/en/product/RXM4AB2F7")[RXM4AB2F7]],
  )
  - Timing Relay - 9050 JCK Plug-in Timers
    - 0-60 second adjustable time delay
    #table(
      columns: (1fr,1fr,1fr),
      align: center,
      table.header(
        [ Voltage ], [ On-Delay ], [ Off-Delay ]
      ),
      [ 120VAC ],
      [#link("https://www.se.com/us/en/product/9050JCK13V20/timing-relay-type-jck-plug-in-on-delay-adjustable-time-0-6-to-60-seconds-10a-240-vac-120-vac-110-vdc/")[ 9050JCK13V20 ]],
      [#link("https://www.se.com/us/en/product/9050JCK23V20/timing-relay-type-jck-plug-in-off-delay-adjustable-time-0-6-to-60-seconds-10a-240-vac-120-vac-110-vdc/")[ 9050JCK23V20 ]],
    ) 
- Panel Light
  - Panel door light switch
  - 24VDC
  - 400 lumens
  - Going with Jasco #link("https://americanwholesaleoutlet.com/jasco-26741-under-cabinet-led-light-fixture-white.html")[26741]
    - Does this come with a switch to be door activated? Talk to Mike about how this usually works

 Heater with Thermostat
  - Going to use same touch safe heater as the RVSS panel, going to ultimately depend on the size of the enclosure

- Maintenance Outlet
  - Simplex Receptacle (only type mentioned in the spec)
  - 120V GFCI
  - AB #link("https://www.rockwellautomation.com/en-us/products/details.1492-REC15G.html")[1492-REC15G] or approved equal
    - Going to submit for an approved equal. This is a duplex receptacle, so I am going to submit a duplex receptacle even though spec says simplex
  - Going to try this Hubbel #link("https://hubbellcdn.com/specsheet/WIRING_GFRST15W_spec.pdf")[GFRST15W]

- PLC
  - Modicon M340H PLC Controller - #link("https://www.se.com/us/en/product/BMXP342020H/processor-modicon-m340-max-1024-discrete-256-analog-io-modbus-ethernet-for-severe-environment/")[BMXP342020H]
  - PLC Power Supply - #link("https://www.se.com/us/en/product/BMXCPS3500H/power-supply-module-modicon-x80-100-to-240v-ac-36w-severe-environment/")[BMXCPS3500H]
  - PLC Chassis - #link("https://www.se.com/us/en/product/BMXXBP1200H/backplane-modicon-x80-12-slots-panel-mounting-plate-mounted-ruggedized/")[BMXXBP1200H]
  - Programming License - #link("https://www.se.com/us/en/product/CEXSPUCZSGPAZZ/license-ecostruxure-control-expert-service-pack-base-small-s-3-users-node-locked-digital-license/")[CEXSPUCZSGPAZZ]
  - Spart Parts:
    - 1 power supply

- PLC I/O
  - Digital Input Module - #link("https://www.se.com/us/en/product/BMXDAI1614H/discrete-input-module-modicon-x80-16-isolated-inputs-100-to-120v-ac-for-severe-environments/")[BMXDAI1614H]
    - With #link("https://www.se.com/us/en/product/BMXFTB4000/terminal-block-modicon-x80-40pin-removable-caged/")[BMXFTB4000] terminal block.
  - Digital Output Module - #link("https://www.se.com/us/en/product/BMXDRA0815H/discrete-output-module-modicon-x80-8-no-relay-outputs-24-to-240v-ac-24-to-125v-dc-for-severe-environments/")[BMXDRA0815H]
    - With #link("https://www.se.com/us/en/product/BMXFTB2000/terminal-block-modicon-x80-20pin-removable-caged-1-x-0-34-1mm2/")[BMXFTB2000] terminal block
  - Analog Input Module - #link("https://www.se.com/us/en/product/BMXAMI0810H/analog-isolated-high-level-input-module-modicon-x80-8-i-0-to-20ma-4-to-20ma-10v-positive-or-negative-severe-environment/")[BMXAMI081H]
    - With #link("https://www.se.com/us/en/product/BMXFTB2800/terminal-block-modicon-x80-28pin-removable-caged-1-x-0-34-1mm2/")[BMXFTB2800] terminal block
  - Analog Output Module - #link("https://www.se.com/us/en/product/BMXAMO0410H/analog-isolated-high-level-output-module-modicon-x80-4-o-0-to-20ma-4-to-20ma-10v-positive-or-negative-severe-environment/?range=61938-modicon-x80-modules&node=56125782970-i-o-modules&selectedNodeId=56125812602")[BMXAMO0410H]
    - With #link("https://www.se.com/us/en/product/BMXFTB2000/terminal-block-modicon-x80-20pin-removable-caged-1-x-0-34-1mm2/")[BMXFTB2000] terminal block
  - Spart Parts:
    - 1 of each module

- Panel Intrusion Switch
  - Need to talk to Mike about this

- Alarm Test Button
  - Pushbutton
  #table(
    columns: (1fr, 1fr),
    align: center,
    table.header(
      [ Component ], [ Model ]
    ),
    [ Pushbutton Head ], [ #link("https://www.se.com/us/en/product/9001SKR1B/push-button-head-harmony-9001sk-plastic-flush-black-30mm-spring-return/")[ 9001SKR1B ]],
    [ NO Contact ], [ #link("https://www.se.com/us/en/product/9001KA2/30mm-push-button-types-k-sk-or-kx-contact-block-1-no/")[ 9001KA2 ]],
    [ NC Contact ], [ #link("https://www.se.com/us/en/product/9001KA3/30mm-push-button-types-k-sk-or-kx-contact-block-1-nc/")[ 9001KA3 ]],
  )

- 24V Power Supplies and Redundancy Module
  - Redundancy Module #link("https://www.phoenixcontact.com/en-us/products/redundancy-module-quint-diode12-24dc2x201x40-2320157")[2320157]
  - Power Supply #link("https://www.phoenixcontact.com/en-us/products/power-supply-quint-ps1ac24dc20-2866776")[2866776]

- Cellular Modem
  - Actual modem provided by others?
  - Polyphaser Coaxial RF Surge Protector - #link("https://www.polyphaser.com/type-n-surge-protector-1ghz-blocking-cap-gas-tube-is-50nx-c2")[IS-50NX-C2]
    - Shown on Contract Drawing I-6
  - Antenna
    - Ventev #link("https://resources.tessco.com/attachments/392017_824-960%20MHz%206%20dBi%20Fiberglass%20Omnidirectional%20Antenna_T09060O10006.pdf")[T09060O10006HM]
  - Cable
    - CommScope #link("https://www.andrew.com/products/fiber-power-rf-connectivity-accessories/rf-connectivity/coaxial-cables/itemldf4-50a/")[LDF4-50A]
  - SMA Jumper Cable
    - Ventenv #link("https://ventevinfra.com/product/5-ft-195-series-cable-assembly-with-n-male-tnc-male-connectors/")[LMR195]

- Network Switch
  - Moxa #link("Ehttps://www.moxa.com/en/products/industrial-network-infrastructure/ethernet-switches/layer-2-managed-switches/eds-408a-series#specifications")[DS-408A Series]
    - Not sure of exact configuration yet

- OIT
  - #link("https://www.se.com/us/en/product/HMIDT752/flat-screen-harmony-gtu-15inch-wide-display-1366-x-768pixels-fwxga/")[HMIDT752] display 
  - #link("https://www.se.com/us/en/product/HMIG2U/base-unit-harmony-gtu-standard-box-1gb-builtin-flash-memory/")[HMIG2U] base unit
  - #link("https://www.se.com/us/en/product/VJDBTPRO3P/vijeo-designer-6-3-hmi-configuration-software-group-license/")[VJDBTPRO3P] Software License

- Digital Recorder
  - E+H RSG35-1C84/0

- Level Display
  - RIA452-C211A11A
