<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified Amazon Redshift parameter group

### Description

Deletes a specified Amazon Redshift parameter group.

You cannot delete a parameter group if it is associated with a cluster.

### Usage

    redshift_delete_cluster_parameter_group(ParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_cluster_parameter_group_:_ParameterGroupName">ParameterGroupName</code></td>
<td><p>[required] The name of the parameter group to be deleted.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the name of an existing cluster parameter group.</p></li>
<li><p>Cannot delete a default cluster parameter group.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cluster_parameter_group(
      ParameterGroupName = "string"
    )
