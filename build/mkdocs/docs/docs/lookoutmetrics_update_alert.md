<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_update_alert</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Make changes to an existing alert

### Description

Make changes to an existing alert.

### Usage

    lookoutmetrics_update_alert(AlertArn, AlertDescription,
      AlertSensitivityThreshold, Action, AlertFilters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_update_alert_:_AlertArn">AlertArn</code></td>
<td><p>[required] The ARN of the alert to update.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_update_alert_:_AlertDescription">AlertDescription</code></td>
<td><p>A description of the alert.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_alert_:_AlertSensitivityThreshold">AlertSensitivityThreshold</code></td>
<td><p>An integer from 0 to 100 specifying the alert sensitivity
threshold.</p></td>
</tr>
<tr class="even">
<td><code id="lookoutmetrics_update_alert_:_Action">Action</code></td>
<td><p>Action that will be triggered when there is an alert.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_update_alert_:_AlertFilters">AlertFilters</code></td>
<td><p>The configuration of the alert filters, containing MetricList and
DimensionFilterList.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlertArn = "string"
    )

### Request syntax

    svc$update_alert(
      AlertArn = "string",
      AlertDescription = "string",
      AlertSensitivityThreshold = 123,
      Action = list(
        SNSConfiguration = list(
          RoleArn = "string",
          SnsTopicArn = "string",
          SnsFormat = "LONG_TEXT"|"SHORT_TEXT"|"JSON"
        ),
        LambdaConfiguration = list(
          RoleArn = "string",
          LambdaArn = "string"
        )
      ),
      AlertFilters = list(
        MetricList = list(
          "string"
        ),
        DimensionFilterList = list(
          list(
            DimensionName = "string",
            DimensionValueList = list(
              "string"
            )
          )
        )
      )
    )
