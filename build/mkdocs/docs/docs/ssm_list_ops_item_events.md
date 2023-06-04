<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_ops_item_events</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all OpsItem events in the current Amazon Web Services Region and Amazon Web Services account

### Description

Returns a list of all OpsItem events in the current Amazon Web Services
Region and Amazon Web Services account. You can limit the results to
events associated with specific OpsItems by specifying a filter.

### Usage

    ssm_list_ops_item_events(Filters, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_list_ops_item_events_:_Filters">Filters</code></td>
<td><p>One or more OpsItem filters. Use a filter to return a more
specific list of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_ops_item_events_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_ops_item_events_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Summaries = list(
        list(
          OpsItemId = "string",
          EventId = "string",
          Source = "string",
          DetailType = "string",
          Detail = "string",
          CreatedBy = list(
            Arn = "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_ops_item_events(
      Filters = list(
        list(
          Key = "OpsItemId",
          Values = list(
            "string"
          ),
          Operator = "Equal"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
