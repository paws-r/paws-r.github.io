<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_crawler_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the schedule of a crawler using a cron expression

### Description

Updates the schedule of a crawler using a `cron` expression.

### Usage

    glue_update_crawler_schedule(CrawlerName, Schedule)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_crawler_schedule_:_CrawlerName">CrawlerName</code></td>
<td><p>[required] The name of the crawler whose schedule to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_crawler_schedule_:_Schedule">Schedule</code></td>
<td><p>The updated <code>cron</code> expression used to specify the
schedule (see <a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
Schedules for Jobs and Crawlers</a>. For example, to run something every
day at 12:15 UTC, you would specify: <code
style="white-space: pre;">⁠cron(15 12 * * ? *)⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_crawler_schedule(
      CrawlerName = "string",
      Schedule = "string"
    )
