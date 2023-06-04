<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_associate_lenses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate a lens to a workload

### Description

Associate a lens to a workload.

Up to 10 lenses can be associated with a workload in a single API
operation. A maximum of 20 lenses can be associated with a workload.

**Disclaimer**

By accessing and/or applying custom lenses created by another Amazon Web
Services user or account, you acknowledge that custom lenses created by
other users and shared with you are Third Party Content as defined in
the Amazon Web Services Customer Agreement.

### Usage

    wellarchitected_associate_lenses(WorkloadId, LensAliases)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="wellarchitected_associate_lenses_:_WorkloadId">WorkloadId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_associate_lenses_:_LensAliases">LensAliases</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_lenses(
      WorkloadId = "string",
      LensAliases = list(
        "string"
      )
    )
