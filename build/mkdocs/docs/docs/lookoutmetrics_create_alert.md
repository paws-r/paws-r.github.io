<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_create_alert</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an alert for an anomaly detector

### Description

Creates an alert for an anomaly detector.

### Usage

    lookoutmetrics_create_alert(AlertName, AlertSensitivityThreshold,
      AlertDescription, AnomalyDetectorArn, Action, Tags, AlertFilters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_create_alert_:_AlertName">AlertName</code></td>
<td><p>[required] The name of the alert.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_alert_:_AlertSensitivityThreshold">AlertSensitivityThreshold</code></td>
<td><p>An integer from 0 to 100 specifying the alert sensitivity
threshold.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_alert_:_AlertDescription">AlertDescription</code></td>
<td><p>A description of the alert.</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_create_alert_:_AnomalyDetectorArn">AnomalyDetectorArn</code></td>
<td><p>[required] The ARN of the detector to which the alert is
attached.</p></td>
</tr>
<tr class="odd">
<td><code id="lookoutmetrics_create_alert_:_Action">Action</code></td>
<td><p>[required] Action that will be triggered when there is an
alert.</p></td>
</tr>
<tr class="even">
<td><code id="lookoutmetrics_create_alert_:_Tags">Tags</code></td>
<td><p>A list of <a
href="https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html">tags</a>
to apply to the alert.</p></td>
</tr>
<tr class="odd">
<td><code
id="lookoutmetrics_create_alert_:_AlertFilters">AlertFilters</code></td>
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

    svc$create_alert(
      AlertName = "string",
      AlertSensitivityThreshold = 123,
      AlertDescription = "string",
      AnomalyDetectorArn = "string",
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
      Tags = list(
        "string"
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
