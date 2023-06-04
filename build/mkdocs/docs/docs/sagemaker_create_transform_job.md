<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_transform_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a transform job

### Description

Starts a transform job. A transform job uses a trained model to get
inferences on a dataset and saves these results to an Amazon S3 location
that you specify.

To perform batch transformations, you create a transform job and use the
data that you have readily available.

In the request body, you provide the following:

-   `TransformJobName` - Identifies the transform job. The name must be
    unique within an Amazon Web Services Region in an Amazon Web
    Services account.

-   `ModelName` - Identifies the model to use. `ModelName` must be the
    name of an existing Amazon SageMaker model in the same Amazon Web
    Services Region and Amazon Web Services account. For information on
    creating a model, see `create_model`.

-   `TransformInput` - Describes the dataset to be transformed and the
    Amazon S3 location where it is stored.

-   `TransformOutput` - Identifies the Amazon S3 location where you want
    Amazon SageMaker to save the results from the transform job.

-   `TransformResources` - Identifies the ML compute instances for the
    transform job.

For more information about how batch transformation works, see [Batch
Transform](https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).

### Usage

    sagemaker_create_transform_job(TransformJobName, ModelName,
      MaxConcurrentTransforms, ModelClientConfig, MaxPayloadInMB,
      BatchStrategy, Environment, TransformInput, TransformOutput,
      DataCaptureConfig, TransformResources, DataProcessing, Tags,
      ExperimentConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_TransformJobName">TransformJobName</code></td>
<td><p>[required] The name of the transform job. The name must be unique
within an Amazon Web Services Region in an Amazon Web Services
account.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the model that you want to use for the
transform job. <code>ModelName</code> must be the name of an existing
Amazon SageMaker model within an Amazon Web Services Region in an Amazon
Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_MaxConcurrentTransforms">MaxConcurrentTransforms</code></td>
<td><p>The maximum number of parallel requests that can be sent to each
instance in a transform job. If <code>MaxConcurrentTransforms</code> is
set to <code>0</code> or left unset, Amazon SageMaker checks the
optional execution-parameters to determine the settings for your chosen
algorithm. If the execution-parameters endpoint is not enabled, the
default value is <code>1</code>. For more information on
execution-parameters, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-batch-code.html#your-algorithms-batch-code-how-containe-serves-requests">How
Containers Serve Requests</a>. For built-in algorithms, you don't need
to set a value for <code>MaxConcurrentTransforms</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_ModelClientConfig">ModelClientConfig</code></td>
<td><p>Configures the timeout and maximum number of retries for
processing a transform job invocation.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_MaxPayloadInMB">MaxPayloadInMB</code></td>
<td><p>The maximum allowed size of the payload, in MB. A
<em>payload</em> is the data portion of a record (without metadata). The
value in <code>MaxPayloadInMB</code> must be greater than, or equal to,
the size of a single record. To estimate the size of a record in MB,
divide the size of your dataset by the number of records. To ensure that
the records fit within the maximum payload size, we recommend using a
slightly larger value. The default value is <code>6</code> MB.</p>
<p>The value of <code>MaxPayloadInMB</code> cannot be greater than 100
MB. If you specify the <code>MaxConcurrentTransforms</code> parameter,
the value of <code>(MaxConcurrentTransforms * MaxPayloadInMB)</code>
also cannot exceed 100 MB.</p>
<p>For cases where the payload might be arbitrarily large and is
transmitted using HTTP chunked encoding, set the value to
<code>0</code>. This feature works only in supported algorithms.
Currently, Amazon SageMaker built-in algorithms do not support HTTP
chunked encoding.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_BatchStrategy">BatchStrategy</code></td>
<td><p>Specifies the number of records to include in a mini-batch for an
HTTP inference request. A <em>record</em> is a single unit of input data
that inference can be made on. For example, a single line in a CSV file
is a record.</p>
<p>To enable the batch strategy, you must set the <code>SplitType</code>
property to <code>Line</code>, <code>RecordIO</code>, or
<code>TFRecord</code>.</p>
<p>To use only one record when making an HTTP invocation request to a
container, set <code>BatchStrategy</code> to <code>SingleRecord</code>
and <code>SplitType</code> to <code>Line</code>.</p>
<p>To fit as many records in a mini-batch as can fit within the
<code>MaxPayloadInMB</code> limit, set <code>BatchStrategy</code> to
<code>MultiRecord</code> and <code>SplitType</code> to
<code>Line</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_Environment">Environment</code></td>
<td><p>The environment variables to set in the Docker container. We
support up to 16 key and values entries in the map.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_TransformInput">TransformInput</code></td>
<td><p>[required] Describes the input source and the way the transform
job consumes it.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_TransformOutput">TransformOutput</code></td>
<td><p>[required] Describes the results of the transform job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_DataCaptureConfig">DataCaptureConfig</code></td>
<td><p>Configuration to control how SageMaker captures inference
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_transform_job_:_TransformResources">TransformResources</code></td>
<td><p>[required] Describes the resources, including ML instance types
and ML instance count, to use for the transform job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_DataProcessing">DataProcessing</code></td>
<td><p>The data structure used to specify the data to be used for
inference in a batch transform job and to associate the data that is
relevant to the prediction results in the output. The input filter
provided allows you to exclude input data that is not needed for
inference in a batch transform job. The output filter provided allows
you to include input data relevant to interpreting the predictions in
the output from the job. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html">Associate
Prediction Results with their Corresponding Input Records</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_transform_job_:_Tags">Tags</code></td>
<td><p>(Optional) An array of key-value pairs. For more information, see
<a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_transform_job_:_ExperimentConfig">ExperimentConfig</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformJobArn = "string"
    )

### Request syntax

    svc$create_transform_job(
      TransformJobName = "string",
      ModelName = "string",
      MaxConcurrentTransforms = 123,
      ModelClientConfig = list(
        InvocationsTimeoutInSeconds = 123,
        InvocationsMaxRetries = 123
      ),
      MaxPayloadInMB = 123,
      BatchStrategy = "MultiRecord"|"SingleRecord",
      Environment = list(
        "string"
      ),
      TransformInput = list(
        DataSource = list(
          S3DataSource = list(
            S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
            S3Uri = "string"
          )
        ),
        ContentType = "string",
        CompressionType = "None"|"Gzip",
        SplitType = "None"|"Line"|"RecordIO"|"TFRecord"
      ),
      TransformOutput = list(
        S3OutputPath = "string",
        Accept = "string",
        AssembleWith = "None"|"Line",
        KmsKeyId = "string"
      ),
      DataCaptureConfig = list(
        DestinationS3Uri = "string",
        KmsKeyId = "string",
        GenerateInferenceId = TRUE|FALSE
      ),
      TransformResources = list(
        InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
        InstanceCount = 123,
        VolumeKmsKeyId = "string"
      ),
      DataProcessing = list(
        InputFilter = "string",
        OutputFilter = "string",
        JoinSource = "Input"|"None"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
      )
    )
