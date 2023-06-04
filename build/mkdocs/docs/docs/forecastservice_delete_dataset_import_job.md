<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_dataset_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dataset import job created using the CreateDatasetImportJob operation

### Description

Deletes a dataset import job created using the
`create_dataset_import_job` operation. You can delete only dataset
import jobs that have a status of `ACTIVE` or `CREATE_FAILED`. To get
the status, use the `describe_dataset_import_job` operation.

### Usage

    forecastservice_delete_dataset_import_job(DatasetImportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_dataset_import_job_:_DatasetImportJobArn">DatasetImportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset import
job to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dataset_import_job(
      DatasetImportJobArn = "string"
    )
