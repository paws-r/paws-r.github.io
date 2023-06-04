<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_delete_dataset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset and associated artifacts

### Description

Deletes a dataset and associated artifacts. The operation will check to
see if any inference scheduler or data ingestion job is currently using
the dataset, and if there isn't, the dataset, its metadata, and any
associated data stored in S3 will be deleted. This does not affect any
models that used this dataset for training and evaluation, but does
prevent it from being used in the future.

### Usage

    lookoutequipment_delete_dataset(DatasetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_delete_dataset_:_DatasetName">DatasetName</code></td>
<td><p>[required] The name of the dataset to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset(
      DatasetName = "string"
    )
