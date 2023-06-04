<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a predictor monitor resource for an existing auto predictor

### Description

Creates a predictor monitor resource for an existing auto predictor.
Predictor monitoring allows you to see how your predictor's performance
changes over time. For more information, see [Predictor
Monitoring](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).

### Usage

    forecastservice_create_monitor(MonitorName, ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_monitor_:_MonitorName">MonitorName</code></td>
<td><p>[required] The name of the monitor resource.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_monitor_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the predictor to
monitor.</p></td>
</tr>
<tr class="odd">
<td><code id="forecastservice_create_monitor_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html">tags</a>
to apply to the monitor resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitorArn = "string"
    )

### Request syntax

    svc$create_monitor(
      MonitorName = "string",
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
