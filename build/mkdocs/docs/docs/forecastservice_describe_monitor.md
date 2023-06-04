<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_monitor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a monitor resource

### Description

Describes a monitor resource. In addition to listing the properties
provided in the `create_monitor` request, this operation lists the
following properties:

-   `Baseline`

-   `CreationTime`

-   `LastEvaluationTime`

-   `LastEvaluationState`

-   `LastModificationTime`

-   `Message`

-   `Status`

### Usage

    forecastservice_describe_monitor(MonitorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_monitor_:_MonitorArn">MonitorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the monitor resource
to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitorName = "string",
      MonitorArn = "string",
      ResourceArn = "string",
      Status = "string",
      LastEvaluationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastEvaluationState = "string",
      Baseline = list(
        PredictorBaseline = list(
          BaselineMetrics = list(
            list(
              Name = "string",
              Value = 123.0
            )
          )
        )
      ),
      Message = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      EstimatedEvaluationTimeRemainingInMinutes = 123
    )

### Request syntax

    svc$describe_monitor(
      MonitorArn = "string"
    )
