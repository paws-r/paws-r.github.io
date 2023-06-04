<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_describe_fraudster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified fraudster

### Description

Describes the specified fraudster.

### Usage

    voiceid_describe_fraudster(DomainId, FraudsterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_describe_fraudster_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_describe_fraudster_:_FraudsterId">FraudsterId</code></td>
<td><p>[required] The identifier of the fraudster you are
describing.</p></td>
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

    svc$describe_fraudster(
      DomainId = "string",
      FraudsterId = "string"
    )
