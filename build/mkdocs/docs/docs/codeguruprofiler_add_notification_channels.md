<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_add_notification_channels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add up to 2 anomaly notifications channels for a profiling group

### Description

Add up to 2 anomaly notifications channels for a profiling group.

### Usage

    codeguruprofiler_add_notification_channels(channels, profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_add_notification_channels_:_channels">channels</code></td>
<td><p>[required] One or 2 channels to report to when anomalies are
detected.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_add_notification_channels_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group that we are setting up
notifications for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      notificationConfiguration = list(
        channels = list(
          list(
            eventPublishers = list(
              "AnomalyDetection"
            ),
            id = "string",
            uri = "string"
          )
        )
      )
    )

### Request syntax

    svc$add_notification_channels(
      channels = list(
        list(
          eventPublishers = list(
            "AnomalyDetection"
          ),
          id = "string",
          uri = "string"
        )
      ),
      profilingGroupName = "string"
    )
