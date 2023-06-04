<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_crawler_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED

### Description

Changes the schedule state of the specified crawler to `SCHEDULED`,
unless the crawler is already running or the schedule state is already
`SCHEDULED`.

### Usage

    glue_start_crawler_schedule(CrawlerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_crawler_schedule_:_CrawlerName">CrawlerName</code></td>
<td><p>[required] Name of the crawler to schedule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_crawler_schedule(
      CrawlerName = "string"
    )
