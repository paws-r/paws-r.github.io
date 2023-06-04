<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_hours_of_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Describes the hours of operation.

### Usage

    connect_describe_hours_of_operation(InstanceId, HoursOfOperationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_hours_of_operation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_hours_of_operation_:_HoursOfOperationId">HoursOfOperationId</code></td>
<td><p>[required] The identifier for the hours of operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HoursOfOperation = list(
        HoursOfOperationId = "string",
        HoursOfOperationArn = "string",
        Name = "string",
        Description = "string",
        TimeZone = "string",
        Config = list(
          list(
            Day = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY",
            StartTime = list(
              Hours = 123,
              Minutes = 123
            ),
            EndTime = list(
              Hours = 123,
              Minutes = 123
            )
          )
        ),
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_hours_of_operation(
      InstanceId = "string",
      HoursOfOperationId = "string"
    )
