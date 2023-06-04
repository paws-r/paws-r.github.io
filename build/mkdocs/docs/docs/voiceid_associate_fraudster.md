<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_associate_fraudster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the fraudsters with the watchlist specified in the same domain

### Description

Associates the fraudsters with the watchlist specified in the same
domain.

### Usage

    voiceid_associate_fraudster(DomainId, FraudsterId, WatchlistId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_associate_fraudster_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_associate_fraudster_:_FraudsterId">FraudsterId</code></td>
<td><p>[required] The identifier of the fraudster to be associated with
the watchlist.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_associate_fraudster_:_WatchlistId">WatchlistId</code></td>
<td><p>[required] The identifier of the watchlist you want to associate
with the fraudster.</p></td>
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

    svc$associate_fraudster(
      DomainId = "string",
      FraudsterId = "string",
      WatchlistId = "string"
    )
