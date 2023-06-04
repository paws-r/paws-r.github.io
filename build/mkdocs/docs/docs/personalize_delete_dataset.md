<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset

### Description

Deletes a dataset. You can't delete a dataset if an associated
`DatasetImportJob` or `SolutionVersion` is in the CREATE PENDING or IN
PROGRESS state. For more information on datasets, see `create_dataset`.

### Usage

    personalize_delete_dataset(datasetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_delete_dataset_:_datasetArn">datasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset(
      datasetArn = "string"
    )
