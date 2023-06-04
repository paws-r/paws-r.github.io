<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_update_hit_type_of_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The UpdateHITTypeOfHIT operation allows you to change the HITType properties of a HIT

### Description

The `update_hit_type_of_hit` operation allows you to change the HITType
properties of a HIT. This operation disassociates the HIT from its old
HITType properties and associates it with the new HITType properties.
The HIT takes on the properties of the new HITType in place of the old
ones.

### Usage

    mturk_update_hit_type_of_hit(HITId, HITTypeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_update_hit_type_of_hit_:_HITId">HITId</code></td>
<td><p>[required] The HIT to update.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_update_hit_type_of_hit_:_HITTypeId">HITTypeId</code></td>
<td><p>[required] The ID of the new HIT type.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_hit_type_of_hit(
      HITId = "string",
      HITTypeId = "string"
    )
