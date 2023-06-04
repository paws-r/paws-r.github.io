<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the definition of a specific DataBrew schedule

### Description

Returns the definition of a specific DataBrew schedule.

### Usage

    gluedatabrew_describe_schedule(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_schedule_:_Name">Name</code></td>
<td><p>[required] The name of the schedule to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CreateDate = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBy = "string",
      JobNames = list(
        "string"
      ),
      LastModifiedBy = "string",
      LastModifiedDate = as.POSIXct(
        "2015-01-01"
      ),
      ResourceArn = "string",
      CronExpression = "string",
      Tags = list(
        "string"
      ),
      Name = "string"
    )

### Request syntax

    svc$describe_schedule(
      Name = "string"
    )
