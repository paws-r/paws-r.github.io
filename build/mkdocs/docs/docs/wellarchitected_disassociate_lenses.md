<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_disassociate_lenses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociate a lens from a workload

### Description

Disassociate a lens from a workload.

Up to 10 lenses can be disassociated from a workload in a single API
operation.

The Amazon Web Services Well-Architected Framework lens
(`wellarchitected`) cannot be removed from a workload.

### Usage

    wellarchitected_disassociate_lenses(WorkloadId, LensAliases)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_disassociate_lenses_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_disassociate_lenses_:_LensAliases">LensAliases</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_lenses(
      WorkloadId = "string",
      LensAliases = list(
        "string"
      )
    )
