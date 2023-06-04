<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_modify_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID

### Description

Modifies the number of steps that can be executed concurrently for the
cluster specified using ClusterID.

### Usage

    emr_modify_cluster(ClusterId, StepConcurrencyLevel)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_modify_cluster_:_ClusterId">ClusterId</code></td>
<td><p>[required] The unique identifier of the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_modify_cluster_:_StepConcurrencyLevel">StepConcurrencyLevel</code></td>
<td><p>The number of steps that can be executed concurrently. You can
specify a minimum of 1 step and a maximum of 256 steps. We recommend
that you do not change this parameter while steps are running or the
<code>ActionOnFailure</code> setting may not behave as expected. For
more information see Step$ActionOnFailure.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StepConcurrencyLevel = 123
    )

### Request syntax

    svc$modify_cluster(
      ClusterId = "string",
      StepConcurrencyLevel = 123
    )
