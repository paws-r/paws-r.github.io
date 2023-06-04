<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_list_watchlists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all watchlists in a specified domain

### Description

Lists all watchlists in a specified domain.

### Usage

    voiceid_list_watchlists(DomainId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_list_watchlists_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_list_watchlists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>NextToken</code> to obtain more pages of results. The default
is 100; the maximum allowed page size is also 100.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_list_watchlists_:_NextToken">NextToken</code></td>
<td><p>If <code>NextToken</code> is returned, there are more results
available. The value of <code>NextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      WatchlistSummaries = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DefaultWatchlist = TRUE|FALSE,
          Description = "string",
          DomainId = "string",
          Name = "string",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          WatchlistId = "string"
        )
      )
    )

### Request syntax

    svc$list_watchlists(
      DomainId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
