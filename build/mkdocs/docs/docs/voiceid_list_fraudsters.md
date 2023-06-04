<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_list_fraudsters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all fraudsters in a specified watchlist or domain

### Description

Lists all fraudsters in a specified watchlist or domain.

### Usage

    voiceid_list_fraudsters(DomainId, MaxResults, NextToken, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_list_fraudsters_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_list_fraudsters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>NextToken</code> to obtain more pages of results. The default
is 100; the maximum allowed page size is also 100.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_list_fraudsters_:_NextToken">NextToken</code></td>
<td><p>If <code>NextToken</code> is returned, there are more results
available. The value of <code>NextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_list_fraudsters_:_WatchlistId">WatchlistId</code></td>
<td><p>The identifier of the watchlist. If provided, all fraudsters in
the watchlist are listed. If not provided, all fraudsters in the domain
are listed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FraudsterSummaries = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DomainId = "string",
          GeneratedFraudsterId = "string",
          WatchlistIds = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_fraudsters(
      DomainId = "string",
      MaxResults = 123,
      NextToken = "string",
      WatchlistId = "string"
    )
