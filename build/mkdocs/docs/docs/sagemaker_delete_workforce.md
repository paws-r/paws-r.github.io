<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_delete_workforce</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to delete a workforce

### Description

Use this operation to delete a workforce.

If you want to create a new workforce in an Amazon Web Services Region
where a workforce already exists, use this operation to delete the
existing workforce and then use `create_workforce` to create a new
workforce.

If a private workforce contains one or more work teams, you must use the
`delete_workteam` operation to delete all work teams before you delete
the workforce. If you try to delete a workforce that contains one or
more work teams, you will recieve a `ResourceInUse` error.

### Usage

    sagemaker_delete_workforce(WorkforceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_delete_workforce_:_WorkforceName">WorkforceName</code></td>
<td><p>[required] The name of the workforce.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_workforce(
      WorkforceName = "string"
    )
