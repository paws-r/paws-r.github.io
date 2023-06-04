<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_get_notification_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the current configuration for anomaly notifications for a profiling group

### Description

Get the current configuration for anomaly notifications for a profiling
group.

### Usage

    codeguruprofiler_get_notification_configuration(profilingGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_get_notification_configuration_:_profilingGroupName">profilingGroupName</code></td>
<td><p>[required] The name of the profiling group we want to get the
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

    svc$get_notification_configuration(
      profilingGroupName = "string"
    )
