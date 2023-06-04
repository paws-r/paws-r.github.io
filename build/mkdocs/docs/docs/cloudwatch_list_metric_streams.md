<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_list_metric_streams</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of metric streams in this account

### Description

Returns a list of metric streams in this account.

### Usage

    cloudwatch_list_metric_streams(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_list_metric_streams_:_NextToken">NextToken</code></td>
<td><p>Include this value, if it was returned by the previous call, to
get the next set of metric streams.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_list_metric_streams_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in one
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Entries = list(
        list(
          Arn = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdateDate = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          FirehoseArn = "string",
          State = "string",
          OutputFormat = "json"|"opentelemetry0.7"
        )
      )
    )

### Request syntax

    svc$list_metric_streams(
      NextToken = "string",
      MaxResults = 123
    )
