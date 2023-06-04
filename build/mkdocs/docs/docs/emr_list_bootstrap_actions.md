<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_bootstrap_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the bootstrap actions associated with a cluster

### Description

Provides information about the bootstrap actions associated with a
cluster.

### Usage

    emr_list_bootstrap_actions(ClusterId, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_list_bootstrap_actions_:_ClusterId">ClusterId</code></td>
<td><p>[required] The cluster identifier for the bootstrap actions to
list.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_bootstrap_actions_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the next set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BootstrapActions = list(
        list(
          Name = "string",
          ScriptPath = "string",
          Args = list(
            "string"
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_bootstrap_actions(
      ClusterId = "string",
      Marker = "string"
    )
