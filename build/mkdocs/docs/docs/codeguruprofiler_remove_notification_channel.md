<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_remove_notification_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove one anomaly notifications channel for a profiling group

### Description

Remove one anomaly notifications channel for a profiling group.

### Usage

    codeguruprofiler_remove_notification_channel(channelId,
      profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_remove_notification_channel_:_channelId">channelId</code></td>
<td><p>[required] The id of the channel that we want to stop receiving
notifications.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_remove_notification_channel_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group we want to change
notification configuration for.</p></td>
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

    svc$remove_notification_channel(
      channelId = "string",
      profilingGroupName = "string"
    )
