<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_endpoint_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an endpoint configuration that SageMaker hosting services uses to deploy models

### Description

Creates an endpoint configuration that SageMaker hosting services uses
to deploy models. In the configuration, you identify one or more models,
created using the `create_model` API, to deploy and the resources that
you want SageMaker to provision. Then you call the `create_endpoint`
API.

Use this API if you want to use SageMaker hosting services to deploy
models into production.

In the request, you define a `ProductionVariant`, for each model that
you want to deploy. Each `ProductionVariant` parameter also describes
the resources that you want SageMaker to provision. This includes the
number and type of ML compute instances to deploy.

If you are hosting multiple models, you also assign a `VariantWeight` to
specify how much traffic you want to allocate to each model. For
example, suppose that you want to host two models, A and B, and you
assign traffic weight 2 for model A and 1 for model B. SageMaker
distributes two-thirds of the traffic to Model A, and one-third to model
B.

When you call `create_endpoint`, a load call is made to DynamoDB to
verify that your endpoint configuration exists. When you read data from
a DynamoDB table supporting
[`⁠Eventually Consistent Reads⁠`](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html)
, the response might not reflect the results of a recently completed
write operation. The response might include some stale data. If the
dependent entities are not yet in DynamoDB, this causes a validation
error. If you repeat your read request after a short time, the response
should return the latest data. So retry logic is recommended to handle
these possible issues. We also recommend that customers call
`describe_endpoint_config` before calling `create_endpoint` to minimize
the potential impact of a DynamoDB eventually consistent read.

### Usage

    sagemaker_create_endpoint_config(EndpointConfigName, ProductionVariants,
      DataCaptureConfig, Tags, KmsKeyId, AsyncInferenceConfig,
      ExplainerConfig, ShadowProductionVariants)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_config_:_EndpointConfigName">EndpointConfigName</code></td>
<td><p>[required] The name of the endpoint configuration. You specify
this name in a <code>create_endpoint</code> request.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_endpoint_config_:_ProductionVariants">ProductionVariants</code></td>
<td><p>[required] An array of <code>ProductionVariant</code> objects,
one for each model that you want to host at this endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_config_:_DataCaptureConfig">DataCaptureConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_endpoint_config_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_config_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Resource Name (ARN) of a Amazon Web Services Key
Management Service key that SageMaker uses to encrypt data on the
storage volume attached to the ML compute instance that hosts the
endpoint.</p>
<p>The KmsKeyId can be any of the following formats:</p>
<ul>
<li><p>Key ID: <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Key ARN: <code
style="white-space: pre;">⁠arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code></p></li>
<li><p>Alias name: <code>alias/ExampleAlias</code></p></li>
<li><p>Alias name ARN:
<code>arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias</code></p></li>
</ul>
<p>The KMS key policy must grant permission to the IAM role that you
specify in your <code>create_endpoint</code>,
<code>update_endpoint</code> requests. For more information, refer to
the Amazon Web Services Key Management Service section <a
href="https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html">Using
Key Policies in Amazon Web Services KMS</a></p>
<p>Certain Nitro-based instances include local storage, dependent on the
instance type. Local storage volumes are encrypted using a hardware
module on the instance. You can't request a <code>KmsKeyId</code> when
using an instance type with local storage. If any of the models that you
specify in the <code>ProductionVariants</code> parameter use nitro-based
instances with local storage, do not specify a value for the
<code>KmsKeyId</code> parameter. If you specify a value for
<code>KmsKeyId</code> when using any nitro-based instances with local
storage, the call to <code>create_endpoint_config</code> fails.</p>
<p>For a list of instance types that support local instance storage, see
<a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html#instance-store-volumes">Instance
Store Volumes</a>.</p>
<p>For more information about local instance storage encryption, see <a
href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ssd-instance-store.html">SSD
Instance Store Volumes</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_endpoint_config_:_AsyncInferenceConfig">AsyncInferenceConfig</code></td>
<td><p>Specifies configuration for how an endpoint performs asynchronous
inference. This is a required field in order for your Endpoint to be
invoked using <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpointAsync.html">InvokeEndpointAsync</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_endpoint_config_:_ExplainerConfig">ExplainerConfig</code></td>
<td><p>A member of <code>create_endpoint_config</code> that enables
explainers.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_endpoint_config_:_ShadowProductionVariants">ShadowProductionVariants</code></td>
<td><p>An array of <code>ProductionVariant</code> objects, one for each
model that you want to host at this endpoint in shadow mode with
production traffic replicated from the model specified on
<code>ProductionVariants</code>. If you use this field, you can only
specify one variant for <code>ProductionVariants</code> and one variant
for <code>ShadowProductionVariants</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointConfigArn = "string"
    )

### Request syntax

    svc$create_endpoint_config(
      EndpointConfigName = "string",
      ProductionVariants = list(
        list(
          VariantName = "string",
          ModelName = "string",
          InitialInstanceCount = 123,
          InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
          InitialVariantWeight = 123.0,
          AcceleratorType = "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge",
          CoreDumpConfig = list(
            DestinationS3Uri = "string",
            KmsKeyId = "string"
          ),
          ServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          ),
          VolumeSizeInGB = 123,
          ModelDataDownloadTimeoutInSeconds = 123,
          ContainerStartupHealthCheckTimeoutInSeconds = 123,
          EnableSSMAccess = TRUE|FALSE
        )
      ),
      DataCaptureConfig = list(
        EnableCapture = TRUE|FALSE,
        InitialSamplingPercentage = 123,
        DestinationS3Uri = "string",
        KmsKeyId = "string",
        CaptureOptions = list(
          list(
            CaptureMode = "Input"|"Output"
          )
        ),
        CaptureContentTypeHeader = list(
          CsvContentTypes = list(
            "string"
          ),
          JsonContentTypes = list(
            "string"
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KmsKeyId = "string",
      AsyncInferenceConfig = list(
        ClientConfig = list(
          MaxConcurrentInvocationsPerInstance = 123
        ),
        OutputConfig = list(
          KmsKeyId = "string",
          S3OutputPath = "string",
          NotificationConfig = list(
            SuccessTopic = "string",
            ErrorTopic = "string",
            IncludeInferenceResponseIn = list(
              "SUCCESS_NOTIFICATION_TOPIC"|"ERROR_NOTIFICATION_TOPIC"
            )
          ),
          S3FailurePath = "string"
        )
      ),
      ExplainerConfig = list(
        ClarifyExplainerConfig = list(
          EnableExplanations = "string",
          InferenceConfig = list(
            FeaturesAttribute = "string",
            ContentTemplate = "string",
            MaxRecordCount = 123,
            MaxPayloadInMB = 123,
            ProbabilityIndex = 123,
            LabelIndex = 123,
            ProbabilityAttribute = "string",
            LabelAttribute = "string",
            LabelHeaders = list(
              "string"
            ),
            FeatureHeaders = list(
              "string"
            ),
            FeatureTypes = list(
              "numerical"|"categorical"|"text"
            )
          ),
          ShapConfig = list(
            ShapBaselineConfig = list(
              MimeType = "string",
              ShapBaseline = "string",
              ShapBaselineUri = "string"
            ),
            NumberOfSamples = 123,
            UseLogit = TRUE|FALSE,
            Seed = 123,
            TextConfig = list(
              Language = "af"|"sq"|"ar"|"hy"|"eu"|"bn"|"bg"|"ca"|"zh"|"hr"|"cs"|"da"|"nl"|"en"|"et"|"fi"|"fr"|"de"|"el"|"gu"|"he"|"hi"|"hu"|"is"|"id"|"ga"|"it"|"kn"|"ky"|"lv"|"lt"|"lb"|"mk"|"ml"|"mr"|"ne"|"nb"|"fa"|"pl"|"pt"|"ro"|"ru"|"sa"|"sr"|"tn"|"si"|"sk"|"sl"|"es"|"sv"|"tl"|"ta"|"tt"|"te"|"tr"|"uk"|"ur"|"yo"|"lij"|"xx",
              Granularity = "token"|"sentence"|"paragraph"
            )
          )
        )
      ),
      ShadowProductionVariants = list(
        list(
          VariantName = "string",
          ModelName = "string",
          InitialInstanceCount = 123,
          InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
          InitialVariantWeight = 123.0,
          AcceleratorType = "ml.eia1.medium"|"ml.eia1.large"|"ml.eia1.xlarge"|"ml.eia2.medium"|"ml.eia2.large"|"ml.eia2.xlarge",
          CoreDumpConfig = list(
            DestinationS3Uri = "string",
            KmsKeyId = "string"
          ),
          ServerlessConfig = list(
            MemorySizeInMB = 123,
            MaxConcurrency = 123,
            ProvisionedConcurrency = 123
          ),
          VolumeSizeInGB = 123,
          ModelDataDownloadTimeoutInSeconds = 123,
          ContainerStartupHealthCheckTimeoutInSeconds = 123,
          EnableSSMAccess = TRUE|FALSE
        )
      )
    )
