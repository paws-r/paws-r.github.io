<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_list_crawls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all the crawls of a specified crawler

### Description

Returns all the crawls of a specified crawler. Returns only the crawls
that have occurred since the launch date of the crawler history feature,
and only retains up to 12 months of crawls. Older crawls will not be
returned.

You may use this API to:

-   Retrive all the crawls of a specified crawler.

-   Retrieve all the crawls of a specified crawler within a limited
    count.

-   Retrieve all the crawls of a specified crawler in a specific time
    range.

-   Retrieve all the crawls of a specified crawler with a particular
    state, crawl ID, or DPU hour value.

### Usage

    glue_list_crawls(CrawlerName, MaxResults, Filters, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_list_crawls_:_CrawlerName">CrawlerName</code></td>
<td><p>[required] The name of the crawler whose runs you want to
retrieve.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_crawls_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return. The default is 20, and
maximum is 100.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_list_crawls_:_Filters">Filters</code></td>
<td><p>Filters the crawls by the criteria you specify in a list of
<code>CrawlsFilter</code> objects.</p></td>
</tr>
<tr class="even">
<td><code id="glue_list_crawls_:_NextToken">NextToken</code></td>
<td><p>A continuation token, if this is a continuation call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Crawls = list(
        list(
          CrawlId = "string",
          State = "RUNNING"|"COMPLETED"|"FAILED"|"STOPPED",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          Summary = "string",
          ErrorMessage = "string",
          LogGroup = "string",
          LogStream = "string",
          MessagePrefix = "string",
          DPUHour = 123.0
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_crawls(
      CrawlerName = "string",
      MaxResults = 123,
      Filters = list(
        list(
          FieldName = "CRAWL_ID"|"STATE"|"START_TIME"|"END_TIME"|"DPU_HOUR",
          FilterOperator = "GT"|"GE"|"LT"|"LE"|"EQ"|"NE",
          FieldValue = "string"
        )
      ),
      NextToken = "string"
    )
