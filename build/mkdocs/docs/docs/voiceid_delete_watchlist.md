<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_delete_watchlist</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified watchlist from Voice ID

### Description

Deletes the specified watchlist from Voice ID. This API throws an
exception when there are fraudsters in the watchlist that you are trying
to delete. You must delete the fraudsters, and then delete the
watchlist. Every domain has a default watchlist which cannot be deleted.

### Usage

    voiceid_delete_watchlist(DomainId, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_delete_watchlist_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
watchlist.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_delete_watchlist_:_WatchlistId">WatchlistId</code></td>
<td><p>[required] The identifier of the watchlist to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_watchlist(
      DomainId = "string",
      WatchlistId = "string"
    )
