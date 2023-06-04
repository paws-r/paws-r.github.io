<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>marketplacecatalog_list_change_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of change sets owned by the account being used to make the call

### Description

Returns the list of change sets owned by the account being used to make
the call. You can filter this list by providing any combination of
`entityId`, `ChangeSetName`, and status. If you provide more than one
filter, the API operation applies a logical AND between the filters.

You can describe a change during the 60-day request history retention
period for API calls.

### Usage

    marketplacecatalog_list_change_sets(Catalog, FilterList, Sort,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="marketplacecatalog_list_change_sets_:_Catalog">Catalog</code></td>
<td><p>[required] The catalog related to the request. Fixed value:
<code>AWSMarketplace</code></p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_list_change_sets_:_FilterList">FilterList</code></td>
<td><p>An array of filter objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_list_change_sets_:_Sort">Sort</code></td>
<td><p>An object that contains two attributes, <code>SortBy</code> and
<code>SortOrder</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="marketplacecatalog_list_change_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results returned by a single call. This
value must be provided in the next call to retrieve the next set of
results. By default, this value is 20.</p></td>
</tr>
<tr class="odd">
<td><code
id="marketplacecatalog_list_change_sets_:_NextToken">NextToken</code></td>
<td><p>The token value retrieved from a previous call to access the next
page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetSummaryList = list(
        list(
          ChangeSetId = "string",
          ChangeSetArn = "string",
          ChangeSetName = "string",
          StartTime = "string",
          EndTime = "string",
          Status = "PREPARING"|"APPLYING"|"SUCCEEDED"|"CANCELLED"|"FAILED",
          EntityIdList = list(
            "string"
          ),
          FailureCode = "CLIENT_ERROR"|"SERVER_FAULT"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_change_sets(
      Catalog = "string",
      FilterList = list(
        list(
          Name = "string",
          ValueList = list(
            "string"
          )
        )
      ),
      Sort = list(
        SortBy = "string",
        SortOrder = "ASCENDING"|"DESCENDING"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
