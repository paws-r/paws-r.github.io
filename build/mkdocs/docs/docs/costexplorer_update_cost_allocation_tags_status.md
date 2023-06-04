<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_update_cost_allocation_tags_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates status for cost allocation tags in bulk, with maximum batch size of 20

### Description

Updates status for cost allocation tags in bulk, with maximum batch size
of 20. If the tag status that's updated is the same as the existing tag
status, the request doesn't fail. Instead, it doesn't have any effect on
the tag status (for example, activating the active tag).

### Usage

    costexplorer_update_cost_allocation_tags_status(
      CostAllocationTagsStatus)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_update_cost_allocation_tags_status_:_CostAllocationTagsStatus">CostAllocationTagsStatus</code></td>
<td><p>[required] The list of <code>CostAllocationTagStatusEntry</code>
objects that are used to update cost allocation tags status for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          TagKey = "string",
          Code = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$update_cost_allocation_tags_status(
      CostAllocationTagsStatus = list(
        list(
          TagKey = "string",
          Status = "Active"|"Inactive"
        )
      )
    )
