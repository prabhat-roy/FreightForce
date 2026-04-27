# excursion-alert

Detects temperature excursions and emits `cold-chain.excursion.detected` events.
Excursion = >|2C| from setpoint for >5 minutes. Alert delivery SLO: 30 seconds.

Domain: `cold-chain` Â· Language: Kotlin/Spring Â· Port: 50162
