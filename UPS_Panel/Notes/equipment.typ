#set page(
  paper: "us-letter",
)

#show link: underline


#align(center)[
  = Equipment
]

== Spec Section 17441 2.14
- Needs to be a tower style UPS
- Online, double conversion with static transfer switch
- Separate make before break maintennance bypass switch
- Operating load should be < 70% of full load, provide minimum 120 minutes of power
  - Minimum 900W output
  - UPS load approximately 613.3
  $ 900"W" * 0.7 = 630"W" #sym.arrow "900W UPS should be fine" $
  - Assuming relationship between load and run time is approximately linear given no runtime curve
    - Half load with 2 battery backs = 156 minutes runtime, full load with 2 battery packs = 73 minutes runtime
   $ m = (73-156)/(1000-500) = -83/100 $
   $ y = m x + b #sym.arrow 156=(-83/100)500 + b $
   $ b = 156 + (83/500)500 $
   $ b = 239 $
   therefore at 630VA the UPS will run for:
   $ y = -83/100(630) + 239 $
   $ y = 134.42 "min" $
- UPS relay interface with dry contacts for monitoring:
  - UPS On-battery
  - UPS  Fault
- $>=$ 88% efficiency 
- Surge suppression
- 32-104#sym.degree F operating temperature
- Going to go with #link("https://www.se.com/us/en/product/SRT1000XLA/apc-smartups-online-1000va-tower-120v-6x-515r-nema-outlets-smartslot-extended-runtime-w-o-rail-kit/?selectedNodeId=27162421315")[APC SRT1000XLA]
  - Battery Pack: #link("https://www.se.com/us/en/product/SRT48BP/apc-smartups-srt-48v-1kva-1-5kva-battery-pack/")[APC SRT48BP] (x2)
  - Battery Pack Extension Cable: #link("https://www.se.com/us/en/product/SRT013/apc-smartups-srt-extension-cable-for-external-battery-packs-48vdc-15ft/")[APC SRT013]
  - Bypass Panel: #link("https://www.se.com/us/en/product/SBP1500RM/apc-service-bypass-pdu-120v-15amp-w-8-nema-515r/")[APC SBP1500RM]
  - Dry Contact IO Module: #link("https://www.se.com/us/en/product/AP9614/dry-contact-management-options-dry-contact-i-o-card-monitor-external-ups-environmental-sensors-output-relays-and-input-contacts/")[APC AP9614]

== Enclosure
- Nema 4X 304 Stainless Steel Enclosure
- Min 24"H x 20"W x 10"D
- Lets do #link("https://www.saginawcontrol.com/partnumber_info/?n=SCE-30H2412SSLP")[Saginaw SCE-30H2412SSLP]
  - Backpanel: #link("https://www.saginawcontrol.com/partnumber_info/?n=SCE-30P24")[Saginaw SCE-30P24]
- Need heater: #link("https://www.saginawcontrol.com/partnumber_info/?n=SCE-TSH50")[SCE-TSH50]
  - Thermostat: #link("https://www.findernet.com/en/worldwide/series/7t-series-panel-thermo-hygrostat-and-thermostats/type/type-7t81-panel-thermostat/")[Finder 7T.81.0.000.2403]
