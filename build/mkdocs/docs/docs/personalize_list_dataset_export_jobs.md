<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_list_dataset_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of dataset export jobs that use the given dataset

### Description

Returns a list of dataset export jobs that use the given dataset. When a
dataset is not specified, all the dataset export jobs associated with
the account are listed. The response provides the properties for each
dataset export job, including the Amazon Resource Name (ARN). For more
information on dataset export jobs, see `create_dataset_export_job`. For
more information on datasets, see `create_dataset`.

### Usage

    personalize_list_dataset_export_jobs(datasetArn, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_list_dataset_export_jobs_:_datasetArn">datasetArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the dataset to list the dataset
export jobs for.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_list_dataset_export_jobs_:_nextToken">nextToken</code></td>
<td><p>A token returned from the previous call to
<code>list_dataset_export_jobs</code> for getting the next set of
dataset export jobs (if they exist).</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_list_dataset_export_jobs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of dataset export jobs to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetExportJobs = list(
        list(
          datasetExportJobArn = "string",
          jobName = "string",
          status = "string",
          creationDateTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          failureReason = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_dataset_export_jobs(
      datasetArn = "string",
      nextToken = "string",
      maxResults = 123
    )
