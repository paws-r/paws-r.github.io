<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_delete_db_cluster_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified DB cluster parameter group

### Description

Deletes a specified DB cluster parameter group. The DB cluster parameter
group to be deleted can't be associated with any DB clusters.

### Usage

    neptune_delete_db_cluster_parameter_group(DBClusterParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_delete_db_cluster_parameter_group_:_DBClusterParameterGroupName">DBClusterParameterGroupName</code></td>
<td><p>[required] The name of the DB cluster parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the name of an existing DB cluster parameter
group.</p></li>
<li><p>You can't delete a default DB cluster parameter group.</p></li>
<li><p>Cannot be associated with any DB clusters.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_cluster_parameter_group(
      DBClusterParameterGroupName = "string"
    )
