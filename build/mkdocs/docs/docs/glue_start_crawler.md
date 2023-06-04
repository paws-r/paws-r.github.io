<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_crawler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a crawl using the specified crawler, regardless of what is scheduled

### Description

Starts a crawl using the specified crawler, regardless of what is
scheduled. If the crawler is already running, returns a
[CrawlerRunningException](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-exceptions.html#aws-glue-api-exceptions-CrawlerRunningException).

### Usage

    glue_start_crawler(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_start_crawler_:_Name">Name</code></td>
<td><p>[required] Name of the crawler to start.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_crawler(
      Name = "string"
    )
