#set document(
  title: [ 32384 Secondary Control Panel Notes ],
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
- Wire labels - White background with black letters
  - Permanent letters on tags, write on tags not permitted

== Control Systems Hardware
== Spec Section 17441

- Outdoor panels - NEMA 4X
  - Hoffman or approved equal #sym.arrow let's do Saginaw 
  - Min 24" H x 20" W x 10" D
  - Rubber Gasketed Continuous Hinge Door?
- Heater for condensation control
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
  - Alternating Relay
    - SPDT
    - 10A @ 240VAC contact
    - 120VAC coil voltage
    - Two LED indicator lamps
    - 10,000,000 expected mechanical operation lifespan
    - 100,000 expected electrical operation lifespan
    - Selector switch to lock out load
    - Going with: Eaton #link("https://www.eaton.com/us/en-us/skuPage.D851LT.html")[D851LT]
  - Intrinsically Safe Relay
    - Eaton: #link("https://www.eaton.com/us/en-us/catalog/intrinsic-safety/mtl-500-din-rail-mounted-isolator.html")[MTL5516C]
  - Heater
    - Appropriately sized Saginaw touch safe heater: SCE-TSXXX
  - Thermostat
    - Finder #link("https://us.rs-online.com/product/finder/7t-81-0-000-2403/71710762/?gclsrc=aw.ds&gad_source=1&gad_campaignid=20769705352&gbraid=0AAAAAD-9z7Hf7UGRF5oHe7KMH_NNgshM8")[7T.81.0.000.2403]

== Spare Parts
== Section 17441-3.02

- 5 spare control relays for each type used
- 5 fuses of each type and rating 
