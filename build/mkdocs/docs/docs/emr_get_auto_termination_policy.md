<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_get_auto_termination_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the auto-termination policy for an Amazon EMR cluster

### Description

Returns the auto-termination policy for an Amazon EMR cluster.

### Usage

    emr_get_auto_termination_policy(ClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_get_auto_termination_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of the Amazon EMR cluster for which
the auto-termination policy will be fetched.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoTerminationPolicy = list(
        IdleTimeout = 123
      )
    )

### Request syntax

    svc$get_auto_termination_policy(
      ClusterId = "string"
    )
