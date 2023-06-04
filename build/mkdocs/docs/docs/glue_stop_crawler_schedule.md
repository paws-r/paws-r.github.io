<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_stop_crawler_schedule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the schedule state of the specified crawler to NOT\_SCHEDULED, but does not stop the crawler if it is already running

### Description

Sets the schedule state of the specified crawler to `NOT_SCHEDULED`, but
does not stop the crawler if it is already running.

### Usage

    glue_stop_crawler_schedule(CrawlerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_stop_crawler_schedule_:_CrawlerName">CrawlerName</code></td>
<td><p>[required] Name of the crawler whose schedule state to
set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_crawler_schedule(
      CrawlerName = "string"
    )
