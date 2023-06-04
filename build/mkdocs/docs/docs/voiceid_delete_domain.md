<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_delete_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified domain from Voice ID

### Description

Deletes the specified domain from Voice ID.

### Usage

    voiceid_delete_domain(DomainId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_delete_domain_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_domain(
      DomainId = "string"
    )
