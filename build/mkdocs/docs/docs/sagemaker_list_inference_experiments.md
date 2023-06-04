<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_list_inference_experiments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of all inference experiments

### Description

Returns the list of all inference experiments.

### Usage

    sagemaker_list_inference_experiments(NameContains, Type, StatusEquals,
      CreationTimeAfter, CreationTimeBefore, LastModifiedTimeAfter,
      LastModifiedTimeBefore, SortBy, SortOrder, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_NameContains">NameContains</code></td>
<td><p>Selects inference experiments whose names contain this
name.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_experiments_:_Type">Type</code></td>
<td><p>Selects inference experiments of this type. For the possible
types of inference experiments, see
<code>create_inference_experiment</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_StatusEquals">StatusEquals</code></td>
<td><p>Selects inference experiments which are in this status. For the
possible statuses, see
<code>describe_inference_experiment</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_experiments_:_CreationTimeAfter">CreationTimeAfter</code></td>
<td><p>Selects inference experiments which were created after this
timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_CreationTimeBefore">CreationTimeBefore</code></td>
<td><p>Selects inference experiments which were created before this
timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_experiments_:_LastModifiedTimeAfter">LastModifiedTimeAfter</code></td>
<td><p>Selects inference experiments which were last modified after this
timestamp.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_LastModifiedTimeBefore">LastModifiedTimeBefore</code></td>
<td><p>Selects inference experiments which were last modified before
this timestamp.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_experiments_:_SortBy">SortBy</code></td>
<td><p>The column by which to sort the listed inference
experiments.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_SortOrder">SortOrder</code></td>
<td><p>The direction of sorting (ascending or descending).</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_list_inference_experiments_:_NextToken">NextToken</code></td>
<td><p>The response from the last list when returning a list large
enough to need tokening.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_list_inference_experiments_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to select.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceExperiments = list(
        list(
          Name = "string",
          Type = "ShadowMode",
          Schedule = list(
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          Status = "Creating"|"Created"|"Updating"|"Running"|"Starting"|"Stopping"|"Completed"|"Cancelled",
          StatusReason = "string",
          Description = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          CompletionTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          RoleArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_inference_experiments(
      NameContains = "string",
      Type = "ShadowMode",
      StatusEquals = "Creating"|"Created"|"Updating"|"Running"|"Starting"|"Stopping"|"Completed"|"Cancelled",
      CreationTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreationTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeAfter = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTimeBefore = as.POSIXct(
        "2015-01-01"
      ),
      SortBy = "Name"|"CreationTime"|"Status",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
