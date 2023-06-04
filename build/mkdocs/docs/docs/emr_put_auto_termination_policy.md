<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_put_auto_termination_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Auto-termination is supported in Amazon EMR releases 5

### Description

Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0
and later. For more information, see [Using an auto-termination
policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html).

Creates or updates an auto-termination policy for an Amazon EMR cluster.
An auto-termination policy defines the amount of idle time in seconds
after which a cluster automatically terminates. For alternative cluster
termination options, see [Control cluster
termination](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html).

### Usage

    emr_put_auto_termination_policy(ClusterId, AutoTerminationPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_put_auto_termination_policy_:_ClusterId">ClusterId</code></td>
<td><p>[required] Specifies the ID of the Amazon EMR cluster to which
the auto-termination policy will be attached.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_put_auto_termination_policy_:_AutoTerminationPolicy">AutoTerminationPolicy</code></td>
<td><p>Specifies the auto-termination policy to attach to the
cluster.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_auto_termination_policy(
      ClusterId = "string",
      AutoTerminationPolicy = list(
        IdleTimeout = 123
      )
    )
