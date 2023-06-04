<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_delete_fraudster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified fraudster from Voice ID

### Description

Deletes the specified fraudster from Voice ID. This action disassociates
the fraudster from any watchlists it is a part of.

### Usage

    voiceid_delete_fraudster(DomainId, FraudsterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_delete_fraudster_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_delete_fraudster_:_FraudsterId">FraudsterId</code></td>
<td><p>[required] The identifier of the fraudster you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_fraudster(
      DomainId = "string",
      FraudsterId = "string"
    )
