<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_get_crawler_metrics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves metrics about specified crawlers

### Description

Retrieves metrics about specified crawlers.

### Usage

    glue_get_crawler_metrics(CrawlerNameList, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_get_crawler_metrics_:_CrawlerNameList">CrawlerNameList</code></td>
<td><p>A list of the names of crawlers about which to retrieve
metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_get_crawler_metrics_:_MaxResults">MaxResults</code></td>
<td><p>The maximum size of a list to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_get_crawler_metrics_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CrawlerMetricsList = list(
        list(
          CrawlerName = "string",
          TimeLeftSeconds = 123.0,
          StillEstimating = TRUE|FALSE,
          LastRuntimeSeconds = 123.0,
          MedianRuntimeSeconds = 123.0,
          TablesCreated = 123,
          TablesUpdated = 123,
          TablesDeleted = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_crawler_metrics(
      CrawlerNameList = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
