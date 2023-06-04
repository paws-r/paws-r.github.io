<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_hours_of_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates the hours of operation.

### Usage

    connect_update_hours_of_operation(InstanceId, HoursOfOperationId, Name,
      Description, TimeZone, Config)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_hours_of_operation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_hours_of_operation_:_HoursOfOperationId">HoursOfOperationId</code></td>
<td><p>[required] The identifier of the hours of operation.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_hours_of_operation_:_Name">Name</code></td>
<td><p>The name of the hours of operation.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_hours_of_operation_:_Description">Description</code></td>
<td><p>The description of the hours of operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_hours_of_operation_:_TimeZone">TimeZone</code></td>
<td><p>The time zone of the hours of operation.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_hours_of_operation_:_Config">Config</code></td>
<td><p>Configuration information of the hours of operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_hours_of_operation(
      InstanceId = "string",
      HoursOfOperationId = "string",
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
      )
    )
