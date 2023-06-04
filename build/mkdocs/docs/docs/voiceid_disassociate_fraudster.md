<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_disassociate_fraudster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the fraudsters from the watchlist specified

### Description

Disassociates the fraudsters from the watchlist specified. Voice ID
always expects a fraudster to be a part of at least one watchlist. If
you try to disassociate a fraudster from its only watchlist, a
`ValidationException` is thrown.

### Usage

    voiceid_disassociate_fraudster(DomainId, FraudsterId, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_disassociate_fraudster_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_disassociate_fraudster_:_FraudsterId">FraudsterId</code></td>
<td><p>[required] The identifier of the fraudster to be disassociated
from the watchlist.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_disassociate_fraudster_:_WatchlistId">WatchlistId</code></td>
<td><p>[required] The identifier of the watchlist that you want to
disassociate from the fraudster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Fraudster = list(
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DomainId = "string",
        GeneratedFraudsterId = "string",
        WatchlistIds = list(
          "string"
        )
      )
    )

### Request syntax

    svc$disassociate_fraudster(
      DomainId = "string",
      FraudsterId = "string",
      WatchlistId = "string"
    )
