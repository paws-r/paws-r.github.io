<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_model_card_export_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List the export jobs for the Amazon SageMaker Model Card

### Description

List the export jobs for the Amazon SageMaker Model Card.

### Usage

    sagemaker_list_model_card_export_jobs(ModelCardName, ModelCardVersion,
      CreationTimeAfter, CreationTimeBefore, ModelCardExportJobNameContains,
      StatusEquals, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_export_jobs_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] List export jobs for the model card with the specified
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_export_jobs_:_ModelCardVersion">ModelCardVersion</code></td>
<td><p>List export jobs for the model card with the specified
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_export_jobs_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Only list model card export jobs that were created after the time
specified.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_export_jobs_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Only list model card export jobs that were created before the
time specified.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_export_jobs_:_ModelCardExportJobNameContains">ModelCardExportJobNameContains</code></td>
<td><p>Only list model card export jobs with names that contain the
specified string.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_export_jobs_:_StatusEquals">StatusEquals</code></td>
<td><p>Only list model card export jobs with the specified
status.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_export_jobs_:_SortBy">SortBy</code></td>
<td><p>Sort model card export jobs by either name or creation time.
Sorts by creation time by default.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_export_jobs_:_SortOrder">SortOrder</code></td>
<td><p>Sort model card export jobs by ascending or descending
order.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_model_card_export_jobs_:_NextToken">NextToken</code></td>
<td><p>If the response to a previous
<code>list_model_card_export_jobs</code> request was truncated, the
response includes a <code>NextToken</code>. To retrieve the next set of
model card export jobs, use the token in the next request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_model_card_export_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of model card export jobs to list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardExportJobSummaries = list(
        list(
          ModelCardExportJobName = "string",
          ModelCardExportJobArn = "string",
          Status = "InProgress"|"Completed"|"Failed",
          ModelCardName = "string",
          ModelCardVersion = 123,
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_model_card_export_jobs(
      ModelCardName = "string",
      ModelCardVersion = 123,
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      ModelCardExportJobNameContains = "string",
      StatusEquals = "InProgress"|"Completed"|"Failed",
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
