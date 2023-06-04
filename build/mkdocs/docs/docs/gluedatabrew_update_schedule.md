<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_update_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the definition of an existing DataBrew schedule

### Description

Modifies the definition of an existing DataBrew schedule.

### Usage

    gluedatabrew_update_schedule(JobNames, CronExpression, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_update_schedule_:_JobNames">JobNames</code></td>
<td><p>The name or names of one or more jobs to be run for this
schedule.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_schedule_:_CronExpression">CronExpression</code></td>
<td><p>[required] The date or dates and time or times when the jobs are
to be run. For more information, see <a
href="https://docs.aws.amazon.com/databrew/latest/dg/">Cron
expressions</a> in the <em>Glue DataBrew Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_update_schedule_:_Name">Name</code></td>
<td><p>[required] The name of the schedule to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_schedule(
      JobNames = list(
        "string"
      ),
      CronExpression = "string",
      Name = "string"
    )
