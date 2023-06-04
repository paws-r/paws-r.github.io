<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldb_get_digest</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the digest of a ledger at the latest committed block in the journal

### Description

Returns the digest of a ledger at the latest committed block in the
journal. The response includes a 256-bit hash value and a block address.

### Usage

    qldb_get_digest(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="qldb_get_digest_:_Name">Name</code></td>
<td><p>[required] The name of the ledger.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Digest = raw,
      DigestTipAddress = list(
        IonText = "string"
      )
    )

### Request syntax

    svc$get_digest(
      Name = "string"
    )
