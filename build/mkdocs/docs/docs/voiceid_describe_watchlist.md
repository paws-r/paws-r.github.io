<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_describe_watchlist</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified watchlist

### Description

Describes the specified watchlist.

### Usage

    voiceid_describe_watchlist(DomainId, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_describe_watchlist_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
watchlist.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_describe_watchlist_:_WatchlistId">WatchlistId</code></td>
<td><p>[required] The identifier of the watchlist that you are
describing.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Watchlist = list(
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

### Request syntax

    svc$describe_watchlist(
      DomainId = "string",
      WatchlistId = "string"
    )
