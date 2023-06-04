<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_batch_inference_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties of a batch inference job including name, Amazon Resource Name (ARN), status, input and output configurations, and the ARN of the solution version used to generate the recommendations

### Description

Gets the properties of a batch inference job including name, Amazon
Resource Name (ARN), status, input and output configurations, and the
ARN of the solution version used to generate the recommendations.

### Usage

    personalize_describe_batch_inference_job(batchInferenceJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_batch_inference_job_:_batchInferenceJobArn">batchInferenceJobArn</code></td>
<td><p>[required] The ARN of the batch inference job to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      batchInferenceJob = list(
        jobName = "string",
        batchInferenceJobArn = "string",
        filterArn = "string",
        failureReason = "string",
        solutionVersionArn = "string",
        numResults = 123,
        jobInput = list(
          s3DataSource = list(
            path = "string",
            kmsKeyArn = "string"
          )
        ),
        jobOutput = list(
          s3DataDestination = list(
            path = "string",
            kmsKeyArn = "string"
          )
        ),
        batchInferenceJobConfig = list(
          itemExplorationConfig = list(
            "string"
          )
        ),
        roleArn = "string",
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$describe_batch_inference_job(
      batchInferenceJobArn = "string"
    )
