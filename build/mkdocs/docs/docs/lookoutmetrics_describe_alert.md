<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_describe_alert</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an alert

### Description

Describes an alert.

Amazon Lookout for Metrics API actions are eventually consistent. If you
do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.

### Usage

    lookoutmetrics_describe_alert(AlertArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_describe_alert_:_AlertArn">AlertArn</code></td>
<td><p>[required] The ARN of the alert to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Alert = list(
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
        AlertDescription = "string",
        AlertArn = "string",
        AnomalyDetectorArn = "string",
        AlertName = "string",
        AlertSensitivityThreshold = 123,
        AlertType = "SNS"|"LAMBDA",
        AlertStatus = "ACTIVE"|"INACTIVE",
        LastModificationTime = as.POSIXct(
          "2015-01-01"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
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
    )

### Request syntax

    svc$describe_alert(
      AlertArn = "string"
    )
