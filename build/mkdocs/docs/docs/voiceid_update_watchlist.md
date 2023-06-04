<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_update_watchlist</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified watchlist

### Description

Updates the specified watchlist. Every domain has a default watchlist
which cannot be updated.

### Usage

    voiceid_update_watchlist(Description, DomainId, Name, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_update_watchlist_:_Description">Description</code></td>
<td><p>A brief description about this watchlist.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_update_watchlist_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
watchlist.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_update_watchlist_:_Name">Name</code></td>
<td><p>The name of the watchlist.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_update_watchlist_:_WatchlistId">WatchlistId</code></td>
<td><p>[required] The identifier of the watchlist to be
updated.</p></td>
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

    svc$update_watchlist(
      Description = "string",
      DomainId = "string",
      Name = "string",
      WatchlistId = "string"
    )
