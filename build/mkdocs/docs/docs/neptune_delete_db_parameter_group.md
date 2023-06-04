<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_delete_db_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified DBParameterGroup

### Description

Deletes a specified DBParameterGroup. The DBParameterGroup to be deleted
can't be associated with any DB instances.

### Usage

    neptune_delete_db_parameter_group(DBParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_delete_db_parameter_group_:_DBParameterGroupName">DBParameterGroupName</code></td>
<td><p>[required] The name of the DB parameter group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the name of an existing DB parameter group</p></li>
<li><p>You can't delete a default DB parameter group</p></li>
<li><p>Cannot be associated with any DB instances</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_parameter_group(
      DBParameterGroupName = "string"
    )
