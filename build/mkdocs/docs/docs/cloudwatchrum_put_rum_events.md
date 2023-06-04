<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchrum_put_rum_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends telemetry events about your application performance and user behavior to CloudWatch RUM

### Description

Sends telemetry events about your application performance and user
behavior to CloudWatch RUM. The code snippet that RUM generates for you
to add to your application includes `put_rum_events` operations to send
this data to RUM.

Each `put_rum_events` operation can send a batch of events from one user
session.

### Usage

    cloudwatchrum_put_rum_events(AppMonitorDetails, BatchId, Id, RumEvents,
      UserDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchrum_put_rum_events_:_AppMonitorDetails">AppMonitorDetails</code></td>
<td><p>[required] A structure that contains information about the app
monitor that collected this telemetry information.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_put_rum_events_:_BatchId">BatchId</code></td>
<td><p>[required] A unique identifier for this batch of RUM event
data.</p></td>
</tr>
<tr class="odd">
<td><code id="cloudwatchrum_put_rum_events_:_Id">Id</code></td>
<td><p>[required] The ID of the app monitor that is sending this
data.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchrum_put_rum_events_:_RumEvents">RumEvents</code></td>
<td><p>[required] An array of structures that contain the telemetry
event data.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchrum_put_rum_events_:_UserDetails">UserDetails</code></td>
<td><p>[required] A structure that contains information about the user
session that this batch of events was collected from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_rum_events(
      AppMonitorDetails = list(
        id = "string",
        name = "string",
        version = "string"
      ),
      BatchId = "string",
      Id = "string",
      RumEvents = list(
        list(
          details = "string",
          id = "string",
          metadata = "string",
          timestamp = as.POSIXct(
            "2015-01-01"
          ),
          type = "string"
        )
      ),
      UserDetails = list(
        sessionId = "string",
        userId = "string"
      )
    )
