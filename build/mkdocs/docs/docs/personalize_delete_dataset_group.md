<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_dataset_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset group

### Description

Deletes a dataset group. Before you delete a dataset group, you must
delete the following:

-   All associated event trackers.

-   All associated solutions.

-   All datasets in the dataset group.

### Usage

    personalize_delete_dataset_group(datasetGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_dataset_group_:_datasetGroupArn">datasetGroupArn</code></td>
<td><p>[required] The ARN of the dataset group to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset_group(
      datasetGroupArn = "string"
    )
