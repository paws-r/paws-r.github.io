<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_hours_of_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Creates hours of operation.

### Usage

    connect_create_hours_of_operation(InstanceId, Name, Description,
      TimeZone, Config, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_hours_of_operation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_hours_of_operation_:_Name">Name</code></td>
<td><p>[required] The name of the hours of operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_hours_of_operation_:_Description">Description</code></td>
<td><p>The description of the hours of operation.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_hours_of_operation_:_TimeZone">TimeZone</code></td>
<td><p>[required] The time zone of the hours of operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_hours_of_operation_:_Config">Config</code></td>
<td><p>[required] Configuration information for the hours of operation:
day, start time, and end time.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_hours_of_operation_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HoursOfOperationId = "string",
      HoursOfOperationArn = "string"
    )

### Request syntax

    svc$create_hours_of_operation(
      InstanceId = "string",
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
