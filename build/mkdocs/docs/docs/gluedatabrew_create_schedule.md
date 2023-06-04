<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new schedule for one or more DataBrew jobs

### Description

Creates a new schedule for one or more DataBrew jobs. Jobs can be run at
a specific date and time, or at regular intervals.

### Usage

    gluedatabrew_create_schedule(JobNames, CronExpression, Tags, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_create_schedule_:_JobNames">JobNames</code></td>
<td><p>The name or names of one or more jobs to be run.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_schedule_:_CronExpression">CronExpression</code></td>
<td><p>[required] The date or dates and time or times when the jobs are
to be run. For more information, see <a
href="https://docs.aws.amazon.com/databrew/latest/dg/">Cron
expressions</a> in the <em>Glue DataBrew Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_create_schedule_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to this schedule.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_schedule_:_Name">Name</code></td>
<td><p>[required] A unique name for the schedule. Valid characters are
alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_schedule(
      JobNames = list(
        "string"
      ),
      CronExpression = "string",
      Tags = list(
        "string"
      ),
      Name = "string"
    )
