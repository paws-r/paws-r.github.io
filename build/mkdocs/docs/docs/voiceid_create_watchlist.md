<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_create_watchlist</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a watchlist that fraudsters can be a part of

### Description

Creates a watchlist that fraudsters can be a part of.

### Usage

    voiceid_create_watchlist(ClientToken, Description, DomainId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_create_watchlist_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_create_watchlist_:_Description">Description</code></td>
<td><p>A brief description of this watchlist.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_create_watchlist_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
watchlist.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_create_watchlist_:_Name">Name</code></td>
<td><p>[required] The name of the watchlist.</p></td>
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

    svc$create_watchlist(
      ClientToken = "string",
      Description = "string",
      DomainId = "string",
      Name = "string"
    )
