# Scenario 2: Intermittent errors

Users report random failures from an order service. `app.log` covers ~2 minutes. Determine:

1. Error rate overall and per endpoint/host.
2. Is the failure random or correlated (host, time window, request type, dependency)?
3. Root cause and the sequence of events (timeline).
4. Immediate mitigation and long-term fix.
5. Which log lines are noise and should be filtered or demoted?
