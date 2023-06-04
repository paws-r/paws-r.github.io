<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_batch_inference_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a batch inference job

### Description

Creates a batch inference job. The operation can handle up to 50 million
records and the input file must be in JSON format. For more information,
see [Creating a batch inference
job](https://docs.aws.amazon.com/personalize/latest/dg/creating-batch-inference-job.html).

### Usage

    personalize_create_batch_inference_job(jobName, solutionVersionArn,
      filterArn, numResults, jobInput, jobOutput, roleArn,
      batchInferenceJobConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_create_batch_inference_job_:_jobName">jobName</code></td>
<td><p>[required] The name of the batch inference job to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_batch_inference_job_:_solutionVersionArn">solutionVersionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution version
that will be used to generate the batch inference
recommendations.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_batch_inference_job_:_filterArn">filterArn</code></td>
<td><p>The ARN of the filter to apply to the batch inference job. For
more information on using filters, see <a
href="https://docs.aws.amazon.com/personalize/latest/dg/filter-batch.html">Filtering
batch recommendations</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_batch_inference_job_:_numResults">numResults</code></td>
<td><p>The number of recommendations to retrieve.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_batch_inference_job_:_jobInput">jobInput</code></td>
<td><p>[required] The Amazon S3 path that leads to the input file to
base your recommendations on. The input material must be in JSON
format.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_batch_inference_job_:_jobOutput">jobOutput</code></td>
<td><p>[required] The path to the Amazon S3 bucket where the job's
output will be stored.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_batch_inference_job_:_roleArn">roleArn</code></td>
<td><p>[required] The ARN of the Amazon Identity and Access Management
role that has permissions to read and write to your input and output
Amazon S3 buckets respectively.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_batch_inference_job_:_batchInferenceJobConfig">batchInferenceJobConfig</code></td>
<td><p>The configuration details of a batch inference job.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_batch_inference_job_:_tags">tags</code></td>
<td><p>A list of tags to apply to the batch inference job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      batchInferenceJobArn = "string"
    )

### Request syntax

    svc$create_batch_inference_job(
      jobName = "string",
      solutionVersionArn = "string",
      filterArn = "string",
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
      roleArn = "string",
      batchInferenceJobConfig = list(
        itemExplorationConfig = list(
          "string"
        )
      ),
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
