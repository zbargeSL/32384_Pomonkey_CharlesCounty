#set document(
  title: [ 32384 RVSS Panel Notes ],
)

#set page(
  paper: "us-letter"
)

#align( center, [
  = Equipment Information
])

#show link: underline

== General Notes

- Nameplate - White background with black letters
  - Minimum 1/4" high etched letters
  - Attach with silicone and stainless steel machine screws, washer, and nuts on inside
  #table(
    columns: (1fr, 1fr, 1fr),
    align: center,
    table.header(
      [ *Tag* ], [ *Inscription* ], [ *Color* ]
    ),
    [ ON ], [ ON ], [ Green ],
    [ OFF ], [ OFF ], [ Red ],
    [ OPEN ], [ OPEN ], [ Green ],
    [ CLOSED ], [ CLOSED ], [ Red ],
    [ LOW ], [ LOW ], [ Amber ],
    [ FAIL ], [ FAIL ], [ Amber ],
    [ HIGH ], [ HIGH ], [ Amber ],
    [ AUTO ], [ AUTO ], [ White ],
    [ MANUAL ], [ MANUAL ], [ Yellow ],
    [ LOCAL ], [ LOCAL ], [ White ],
    [ REMOTE ], [ REMOTE ], [ Yellow ],
    [ FORWARD ], [ FORWARD ], [ Red ],
    [ REVERSE ], [ REVERSE ], [ Blue ],
  )

  #table(
    columns: (1fr, 1fr, 1fr),
    align: center,
    table.header(
      [ *Tag Function* ], [ *Inscription* ], [ *Color* ]
    ),
    [ HOA ], [ HAND \ OFF \ AUTO ], [ Black \ Black \ Black ],
  )

- Wire labels - White background with black letters
  - Permanent letters on tags, write on tags not permitted

== RVSS
=== Spec Section 16421
 - Square D (Equivalent to Cutler-Hammer Type S801)
  - Something like #link("https://www.se.com/us/en/product/ATS480D17Y/soft-starter-altistart-480-22a-208-to-690v-ac-control-supply-110-to-230v-ac/")[ATS480D17Y]
    - Ended up going with this same part number, no regular starter
  - Keypad: #link("https://www.se.com/us/en/product/VW3A1113/plain-text-display-terminal-altivar-128-x-64pixels-ip21/")[VW3A1113]
    - *This is included in the RVSS part number*
  - Keypad Mounting Kit: #link("https://www.se.com/us/en/product/VW3A1112/door-mounting-kit-altivar-for-remote-graphic-terminal-ip65/?range=63441-altivar-340-machine-variable-frequency-drive-vfd&node=12052134541-configuration-and-runtime-tools&selectedNodeId=12052134580")[VW3A1112]
  - Keypad Cable: #link("https://www.se.com/us/en/product/VW3A1104R30/remote-cable-altivar-for-graphic-display-terminal-3-meters/")[VW3A1104R30]
 - Soft start-stop
 - SCR based power section
  - 6 back-to-back SCRs with peak inverse voltage rating of 1500 volts PIV
  - NO TRIACS OR SCR/DIODE COMBOS
 - Logic board and paralleling bypass contactor
 - Electronic overload relay
 - Keypad adjustable overload protection


== Power Meter (Motor Management Relay)
=== Spec Section 16421-2.01W


- Spec shows:  #link("https://apac.socomec.com/en/p/diris-a-40")[
  Socomec 48250501
] but spec also calls for DIN rail mounting.
- Takeoff shows #link("https://www.socomec.us/en-us/reference/48290000")[Socomec 48290000]
  - Looks like this is the meter which can connect to the device in spec. *But we don't need the digital display. Not shown on contract I-4.*
  - Required Accessories:
    - Diris 0-iod module (for pulsed output power consumption): #link("https://www.socomec.us/en-us/reference/48290030")[48290030]
    - TR Split-Core Sensors: #link("https://www.socomec.us/en-us/reference/48290556")[48290556]
    - Sensor cables: (estimate that we'll use the 6.5 ft cable): #link("https://www.socomec.us/en-us/reference/48290584")[48290584]
    - 4-phase fuse holder: #link("https://us.mersen.com/en/products/303-series-class-cc-open-style-fuse-blocks-midget/30324r")[Mersen 3024R]
      - Should accomodate typical CC fuses used by transformer, for example
== Control Systems Hardware
== Spec Section 17441

- Outdoor panels - NEMA 4X
  - Hoffman or approved equal #sym.arrow let's do Saginaw 
  - Min 24" H x 20" W x 10" D
  - Rubber Gasketed Continuous Hinge Door?
- Heater for condensation control
  - Chose #link("https://www.saginawcontrol.com/partnumber_info/?n=SCE-TSH50")[Saginaw SCE-TSH50] with #link("https://www.findernet.com/en/worldwide/series/7t-series-panel-thermo-hygrostat-and-thermostats/type/type-7t81-panel-thermostat/")[Finder 7T.81.0.000.2403]
  - 40-80#sym.degree fahrenheit
  - N.C. thermostat control
  - dedicated circuit breaker protection
  - 120VAC operating voltage
- Lighting
  - 1 door controlled if enclosure >$12"ft"^3$
- Surge Suppressor
  - Think I'm only going to need it for 480V
    - #link("https://citel.us/en/ac-power/din-rail-ac/ds43s-480")[Citel DS43S-480]
- *Motor protection relay by others*
- Circuit Breakers
  - Typical Weidmuller circuit breakers should be fine
- Relays
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
  - Pilot Lights
  #table(
    columns: (1fr,1fr),
    align: center,
    table.header(
      [ Color ], [ Model ]
    ),
    [ Green ], [#link("https://www.se.com/us/en/product/9001SKT38LGG31/pushtotest-pilot-light-harmony-9001sk-plastic-polycarbonate-fresnel-lens-green-30mm-led-green-120v/")[9001SKT38LGG31]],
    [ Red ], [#link("https://www.se.com/us/en/product/9001SKT38LRR31/pushtotest-pilot-light-harmony-9001sk-plastic-polycarbonate-fresnel-lens-red-30mm-led-red-120v/")[9001SKT38LRR31]],
    [ Amber ], [#link("https://www.se.com/us/en/product/9001SKT38LYA31/pushtotest-pilot-light-harmony-9001sk-plastic-polycarbonate-fresnel-lens-amber-30mm-led-yellow-120v/")[9001SKT38LYA31]],
  ) 
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
  - Selector Switch
    - #link("https://www.se.com/us/en/product/9001SKS43BH2/selector-switch-harmony-9001sk-plastic-standard-handle-black-30mm-3-positions-stay-put-2-c-o/")[ 9001SKS43BH2 ]
  - Elapsed Time Meter
    - TRUMETER #link("https://www.trumeter.com/product/722-series/")[ 722-001 ] with gasket #link("https://www.trumeter.com/product/722-series/")[ 5003-010 ]
  - Disconnect
    - Square D to spec with flange mounted disconnect switch
  - Fuses
    - Typical Mersen fuses

== Spare Parts
== Section 17441-3.02

- 5 spare control relays for each type used
- 5 fuses of each type and rating 
