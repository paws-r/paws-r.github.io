<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_inference_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an inference experiment using the configurations specified in the request

### Description

Creates an inference experiment using the configurations specified in
the request.

Use this API to setup and schedule an experiment to compare model
variants on a Amazon SageMaker inference endpoint. For more information
about inference experiments, see [Shadow
tests](https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html).

Amazon SageMaker begins your experiment at the scheduled time and routes
traffic to your endpoint's model variants based on your specified
configuration.

While the experiment is in progress or after it has concluded, you can
view metrics that compare your model variants. For more information, see
[View, monitor, and edit shadow
tests](https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests-view-monitor-edit.html).

### Usage

    sagemaker_create_inference_experiment(Name, Type, Schedule, Description,
      RoleArn, EndpointName, ModelVariants, DataStorageConfig,
      ShadowModeConfig, KmsKey, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_Name">Name</code></td>
<td><p>[required] The name for the inference experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_experiment_:_Type">Type</code></td>
<td><p>[required] The type of the inference experiment that you want to
run. The following types of experiments are possible:</p>
<ul>
<li><p><code>ShadowMode</code>: You can use this type to validate a
shadow variant. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html">Shadow
tests</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_Schedule">Schedule</code></td>
<td><p>The duration for which you want the inference experiment to run.
If you don't specify this field, the experiment automatically starts
immediately upon creation and concludes after 7 days.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_experiment_:_Description">Description</code></td>
<td><p>A description for the inference experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the IAM role that Amazon SageMaker can
assume to access model artifacts and container images, and manage Amazon
SageMaker Inference endpoints for model deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_experiment_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the Amazon SageMaker endpoint on which you
want to run the inference experiment.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_ModelVariants">ModelVariants</code></td>
<td><p>[required] An array of <code>ModelVariantConfig</code> objects.
There is one for each variant in the inference experiment. Each
<code>ModelVariantConfig</code> object in the array describes the
infrastructure configuration for the corresponding variant.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_experiment_:_DataStorageConfig">DataStorageConfig</code></td>
<td><p>The Amazon S3 location and configuration for storing inference
request and response data.</p>
<p>This is an optional parameter that you can use for data capture. For
more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor-data-capture.html">Capture
data</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_ShadowModeConfig">ShadowModeConfig</code></td>
<td><p>[required] The configuration of <code>ShadowMode</code> inference
experiment type. Use this field to specify a production variant which
takes all the inference requests, and a shadow variant to which Amazon
SageMaker replicates a percentage of the inference requests. For the
shadow variant also specify the percentage of requests that Amazon
SageMaker replicates.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_experiment_:_KmsKey">KmsKey</code></td>
<td><p>The Amazon Web Services Key Management Service (Amazon Web
Services KMS) key that Amazon SageMaker uses to encrypt data on the
storage volume attached to the ML compute instance that hosts the
endpoint. The <code>KmsKey</code> can be any of the following
formats:</p>
<ul>
<li><p>KMS key ID</p>
<p><code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
<li><p>Amazon Resource Name (ARN) of a KMS key</p>
<p><code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
<li><p>KMS key Alias</p>
<p><code>"alias/ExampleAlias"</code></p></li>
<li><p>Amazon Resource Name (ARN) of a KMS key Alias</p>
<p><code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code></p></li>
</ul>
<p>If you use a KMS key ID or an alias of your KMS key, the Amazon
SageMaker execution role must include permissions to call
<code>kms:Encrypt</code>. If you don't provide a KMS key ID, Amazon
SageMaker uses the default KMS key for Amazon S3 for your role's
account. Amazon SageMaker uses server-side encryption with KMS managed
keys for <code>OutputDataConfig</code>. If you use a bucket policy with
an <code>s3:PutObject</code> permission that only allows objects with
server-side encryption, set the condition key of
<code>s3:x-amz-server-side-encryption</code> to <code>"aws:kms"</code>.
For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html">KMS
managed Encryption Keys</a> in the <em>Amazon Simple Storage Service
Developer Guide.</em></p>
<p>The KMS key policy must grant permission to the IAM role that you
specify in your <code>create_endpoint</code> and
<code>update_endpoint</code> requests. For more information, see <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Using
Key Policies in Amazon Web Services KMS</a> in the <em>Amazon Web
Services Key Management Service Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_experiment_:_Tags">Tags</code></td>
<td><p>Array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
your Amazon Web Services Resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceExperimentArn = "string"
    )

### Request syntax

    svc$create_inference_experiment(
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
      Description = "string",
      RoleArn = "string",
      EndpointName = "string",
      ModelVariants = list(
        list(
          ModelName = "string",
          VariantName = "string",
          InfrastructureConfig = list(
            InfrastructureType = "RealTimeInference",
            RealTimeInferenceConfig = list(
              InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.8xlarge"|"ml.m5d.12xlarge"|"ml.m5d.16xlarge"|"ml.m5d.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.p4d.24xlarge"|"ml.p4de.24xlarge",
              InstanceCount = 123
            )
          )
        )
      ),
      DataStorageConfig = list(
        Destination = "string",
        KmsKey = "string",
        ContentType = list(
          CsvContentTypes = list(
            "string"
          ),
          JsonContentTypes = list(
            "string"
          )
        )
      ),
      ShadowModeConfig = list(
        SourceModelVariantName = "string",
        ShadowModelVariants = list(
          list(
            ShadowModelVariantName = "string",
            SamplingPercentage = 123
          )
        )
      ),
      KmsKey = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
