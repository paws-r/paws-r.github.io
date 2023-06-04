<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model_package</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a model package that you can use to create SageMaker models or list on Amazon Web Services Marketplace, or a versioned model that is part of a model group

### Description

Creates a model package that you can use to create SageMaker models or
list on Amazon Web Services Marketplace, or a versioned model that is
part of a model group. Buyers can subscribe to model packages listed on
Amazon Web Services Marketplace to create models in SageMaker.

To create a model package by specifying a Docker container that contains
your inference code and the Amazon S3 location of your model artifacts,
provide values for `InferenceSpecification`. To create a model from an
algorithm resource that you created or subscribed to in Amazon Web
Services Marketplace, provide a value for
`SourceAlgorithmSpecification`.

There are two types of model packages:

-   Versioned - a model that is part of a model group in the model
    registry.

-   Unversioned - a model package that is not part of a model group.

### Usage

    sagemaker_create_model_package(ModelPackageName, ModelPackageGroupName,
      ModelPackageDescription, InferenceSpecification,
      ValidationSpecification, SourceAlgorithmSpecification,
      CertifyForMarketplace, Tags, ModelApprovalStatus, MetadataProperties,
      ModelMetrics, ClientToken, CustomerMetadataProperties,
      DriftCheckBaselines, Domain, Task, SamplePayloadUrl,
      AdditionalInferenceSpecifications)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_ModelPackageName">ModelPackageName</code></td>
<td><p>The name of the model package. The name must have 1 to 63
characters. Valid characters are a-z, A-Z, 0-9, and - (hyphen).</p>
<p>This parameter is required for unversioned models. It is not
applicable to versioned models.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_ModelPackageGroupName">ModelPackageGroupName</code></td>
<td><p>The name or Amazon Resource Name (ARN) of the model package group
that this model version belongs to.</p>
<p>This parameter is required for versioned models, and does not apply
to unversioned models.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_ModelPackageDescription">ModelPackageDescription</code></td>
<td><p>A description of the model package.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_InferenceSpecification">InferenceSpecification</code></td>
<td><p>Specifies details about inference jobs that can be run with
models based on this model package, including the following:</p>
<ul>
<li><p>The Amazon ECR paths of containers that contain the inference
code and model artifacts.</p></li>
<li><p>The instance types that the model package supports for transform
jobs and real-time endpoints used for inference.</p></li>
<li><p>The input and output content formats that the model package
supports for inference.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_ValidationSpecification">ValidationSpecification</code></td>
<td><p>Specifies configurations for one or more transform jobs that
SageMaker runs to test the model package.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_SourceAlgorithmSpecification">SourceAlgorithmSpecification</code></td>
<td><p>Details about the algorithm that was used to create the model
package.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_CertifyForMarketplace">CertifyForMarketplace</code></td>
<td><p>Whether to certify the model package for listing on Amazon Web
Services Marketplace.</p>
<p>This parameter is optional for unversioned models, and does not apply
to versioned models.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_model_package_:_Tags">Tags</code></td>
<td><p>A list of key value pairs associated with the model. For more
information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_ModelApprovalStatus">ModelApprovalStatus</code></td>
<td><p>Whether the model is approved for deployment.</p>
<p>This parameter is optional for versioned models, and does not apply
to unversioned models.</p>
<p>For versioned models, the value of this parameter must be set to
<code>Approved</code> to deploy the model.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_MetadataProperties">MetadataProperties</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_ModelMetrics">ModelMetrics</code></td>
<td><p>A structure that contains model metrics reports.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_ClientToken">ClientToken</code></td>
<td><p>A unique token that guarantees that the call to this API is
idempotent.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_CustomerMetadataProperties">CustomerMetadataProperties</code></td>
<td><p>The metadata properties associated with the model package
versions.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_DriftCheckBaselines">DriftCheckBaselines</code></td>
<td><p>Represents the drift check baselines that can be used when the
model monitor is set using the model package. For more information, see
the topic on <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/pipelines-quality-clarify-baseline-lifecycle.html#pipelines-quality-clarify-baseline-drift-detection">Drift
Detection against Previous Baselines in SageMaker Pipelines</a> in the
<em>Amazon SageMaker Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_Domain">Domain</code></td>
<td><p>The machine learning domain of your model package and its
components. Common machine learning domains include computer vision and
natural language processing.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_model_package_:_Task">Task</code></td>
<td><p>The machine learning task your model package accomplishes. Common
machine learning tasks include object detection and image
classification. The following tasks are supported by Inference
Recommender: <code>"IMAGE_CLASSIFICATION"</code> |
<code>"OBJECT_DETECTION"</code> | <code>"TEXT_GENERATION"</code>
|<code>"IMAGE_SEGMENTATION"</code> | <code>"FILL_MASK"</code> |
<code>"CLASSIFICATION"</code> | <code>"REGRESSION"</code> |
<code>"OTHER"</code>.</p>
<p>Specify "OTHER" if none of the tasks listed fit your use
case.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_package_:_SamplePayloadUrl">SamplePayloadUrl</code></td>
<td><p>The Amazon Simple Storage Service (Amazon S3) path where the
sample payload is stored. This path must point to a single gzip
compressed tar archive (.tar.gz suffix). This archive can hold multiple
files that are all equally used in the load test. Each file in the
archive must satisfy the size constraints of the <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpoint.html#API_runtime_InvokeEndpoint_RequestSyntax">InvokeEndpoint</a>
call.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_package_:_AdditionalInferenceSpecifications">AdditionalInferenceSpecifications</code></td>
<td><p>An array of additional Inference Specification objects. Each
additional Inference Specification specifies artifacts based on this
model package that can be used on inference endpoints. Generally used
with SageMaker Neo to store the compiled artifacts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelPackageArn = "string"
    )

### Request syntax

    svc$create_model_package(
      ModelPackageName = "string",
      ModelPackageGroupName = "string",
      ModelPackageDescription = "string",
      InferenceSpecification = list(
        Containers = list(
          list(
            ContainerHostname = "string",
            Image = "string",
            ImageDigest = "string",
            ModelDataUrl = "string",
            ProductId = "string",
            Environment = list(
              "string"
            ),
            ModelInput = list(
              DataInputConfig = "string"
            ),
            Framework = "string",
            FrameworkVersion = "string",
            NearestModelName = "string"
          )
        ),
        SupportedTransformInstanceTypes = list(
          "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
        ),
        SupportedRealtimeInferenceInstanceTypes = list(
          "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge"
        ),
        SupportedContentTypes = list(
          "string"
        ),
        SupportedResponseMIMETypes = list(
          "string"
        )
      ),
      ValidationSpecification = list(
        ValidationRole = "string",
        ValidationProfiles = list(
          list(
            ProfileName = "string",
            TransformJobDefinition = list(
              MaxConcurrentTransforms = 123,
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
              TransformResources = list(
                InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
                InstanceCount = 123,
                VolumeKmsKeyId = "string"
              )
            )
          )
        )
      ),
      SourceAlgorithmSpecification = list(
        SourceAlgorithms = list(
          list(
            ModelDataUrl = "string",
            AlgorithmName = "string"
          )
        )
      ),
      CertifyForMarketplace = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ModelApprovalStatus = "Approved"|"Rejected"|"PendingManualApproval",
      MetadataProperties = list(
        CommitId = "string",
        Repository = "string",
        GeneratedBy = "string",
        ProjectId = "string"
      ),
      ModelMetrics = list(
        ModelQuality = list(
          Statistics = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          Constraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        ModelDataQuality = list(
          Statistics = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          Constraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        Bias = list(
          Report = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          PreTrainingReport = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          PostTrainingReport = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        Explainability = list(
          Report = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        )
      ),
      ClientToken = "string",
      CustomerMetadataProperties = list(
        "string"
      ),
      DriftCheckBaselines = list(
        Bias = list(
          ConfigFile = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          PreTrainingConstraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          PostTrainingConstraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        Explainability = list(
          Constraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          ConfigFile = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        ModelQuality = list(
          Statistics = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          Constraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        ),
        ModelDataQuality = list(
          Statistics = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          ),
          Constraints = list(
            ContentType = "string",
            ContentDigest = "string",
            S3Uri = "string"
          )
        )
      ),
      Domain = "string",
      Task = "string",
      SamplePayloadUrl = "string",
      AdditionalInferenceSpecifications = list(
        list(
          Name = "string",
          Description = "string",
          Containers = list(
            list(
              ContainerHostname = "string",
              Image = "string",
              ImageDigest = "string",
              ModelDataUrl = "string",
              ProductId = "string",
              Environment = list(
                "string"
              ),
              ModelInput = list(
                DataInputConfig = "string"
              ),
              Framework = "string",
              FrameworkVersion = "string",
              NearestModelName = "string"
            )
          ),
          SupportedTransformInstanceTypes = list(
            "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
          ),
          SupportedRealtimeInferenceInstanceTypes = list(
            "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge"
          ),
          SupportedContentTypes = list(
            "string"
          ),
          SupportedResponseMIMETypes = list(
            "string"
          )
        )
      )
    )
