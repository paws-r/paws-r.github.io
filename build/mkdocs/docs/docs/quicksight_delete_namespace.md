<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a namespace and the users and groups that are associated with the namespace

### Description

Deletes a namespace and the users and groups that are associated with
the namespace. This is an asynchronous process. Assets including
dashboards, analyses, datasets and data sources are not deleted. To
delete these assets, you use the API operations for the relevant asset.

### Usage

    quicksight_delete_namespace(AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_namespace_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that you
want to delete the Amazon QuickSight namespace from.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_namespace_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_namespace(
      AwsAccountId = "string",
      Namespace = "string"
    )
