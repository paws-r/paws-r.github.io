<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_list_schedules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the DataBrew schedules that are defined

### Description

Lists the DataBrew schedules that are defined.

### Usage

    gluedatabrew_list_schedules(JobName, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_list_schedules_:_JobName">JobName</code></td>
<td><p>The name of the job that these schedules apply to.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_list_schedules_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in this request.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_list_schedules_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Schedules = list(
        list(
          AccountId = "string",
          CreatedBy = "string",
          CreateDate = as.POSIXct(
            "2015-01-01"
          ),
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_schedules(
      JobName = "string",
      MaxResults = 123,
      NextToken = "string"
    )
