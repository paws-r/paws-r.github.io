<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_space</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to delete a space

### Description

Used to delete a space.

### Usage

    sagemaker_delete_space(DomainId, SpaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_delete_space_:_DomainId">DomainId</code></td>
<td><p>[required] The ID of the associated Domain.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_delete_space_:_SpaceName">SpaceName</code></td>
<td><p>[required] The name of the space.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_space(
      DomainId = "string",
      SpaceName = "string"
    )
