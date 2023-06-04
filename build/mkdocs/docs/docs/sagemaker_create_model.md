<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a model in SageMaker

### Description

Creates a model in SageMaker. In the request, you name the model and
describe a primary container. For the primary container, you specify the
Docker image that contains inference code, artifacts (from prior
training), and a custom environment map that the inference code uses
when you deploy the model for predictions.

Use this API to create a model if you want to use SageMaker hosting
services or run a batch transform job.

To host your model, you create an endpoint configuration with the
`create_endpoint_config` API, and then create an endpoint with the
`create_endpoint` API. SageMaker then deploys all of the containers that
you defined for the model in the hosting environment.

For an example that calls this method when deploying a model to
SageMaker hosting services, see [Create a Model (Amazon Web Services SDK
for Python (Boto
3)).](https://docs.aws.amazon.com/sagemaker/latest/dg/realtime-endpoints-deployment.html#realtime-endpoints-deployment-create-model)

To run a batch transform using your model, you start a job with the
`create_transform_job` API. SageMaker uses your model and your dataset
to get inferences which are then saved to a specified S3 location.

In the request, you also provide an IAM role that SageMaker can assume
to access model artifacts and docker image for deployment on ML compute
hosting instances or for batch transform jobs. In addition, you also use
the IAM role to manage permissions the inference code needs. For
example, if the inference code access any other Amazon Web Services
resources, you grant necessary permissions via this role.

### Usage

    sagemaker_create_model(ModelName, PrimaryContainer, Containers,
      InferenceExecutionConfig, ExecutionRoleArn, Tags, VpcConfig,
      EnableNetworkIsolation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_create_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the new model.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_:_PrimaryContainer">PrimaryContainer</code></td>
<td><p>The location of the primary docker image containing inference
code, associated artifacts, and custom environment map that the
inference code uses when the model is deployed for predictions.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_:_Containers">Containers</code></td>
<td><p>Specifies the containers in the inference pipeline.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_:_InferenceExecutionConfig">InferenceExecutionConfig</code></td>
<td><p>Specifies details of how containers in a multi-container endpoint
are called.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_:_ExecutionRoleArn">ExecutionRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
SageMaker can assume to access model artifacts and docker image for
deployment on ML compute instances or for batch transform jobs.
Deploying on ML compute instances is part of model hosting. For more
information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">SageMaker
Roles</a>.</p>
<p>To be able to pass this role to SageMaker, the caller of this API
must have the <code>iam:PassRole</code> permission.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_model_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_model_:_VpcConfig">VpcConfig</code></td>
<td><p>A <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html">VpcConfig</a>
object that specifies the VPC that you want your model to connect to.
Control access to and from your model container by configuring the VPC.
<code>VpcConfig</code> is used in hosting services and in batch
transform. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html">Protect
Endpoints by Using an Amazon Virtual Private Cloud</a> and <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/batch-vpc.html">Protect
Data in Batch Transform Jobs by Using an Amazon Virtual Private
Cloud</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_:_EnableNetworkIsolation">EnableNetworkIsolation</code></td>
<td><p>Isolates the model container. No inbound or outbound network
calls can be made to or from the model container.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelArn = "string"
    )

### Request syntax

    svc$create_model(
      ModelName = "string",
      PrimaryContainer = list(
        ContainerHostname = "string",
        Image = "string",
        ImageConfig = list(
          RepositoryAccessMode = "Platform"|"Vpc",
          RepositoryAuthConfig = list(
            RepositoryCredentialsProviderArn = "string"
          )
        ),
        Mode = "SingleModel"|"MultiModel",
        ModelDataUrl = "string",
        Environment = list(
          "string"
        ),
        ModelPackageName = "string",
        InferenceSpecificationName = "string",
        MultiModelConfig = list(
          ModelCacheSetting = "Enabled"|"Disabled"
        )
      ),
      Containers = list(
        list(
          ContainerHostname = "string",
          Image = "string",
          ImageConfig = list(
            RepositoryAccessMode = "Platform"|"Vpc",
            RepositoryAuthConfig = list(
              RepositoryCredentialsProviderArn = "string"
            )
          ),
          Mode = "SingleModel"|"MultiModel",
          ModelDataUrl = "string",
          Environment = list(
            "string"
          ),
          ModelPackageName = "string",
          InferenceSpecificationName = "string",
          MultiModelConfig = list(
            ModelCacheSetting = "Enabled"|"Disabled"
          )
        )
      ),
      InferenceExecutionConfig = list(
        Mode = "Serial"|"Direct"
      ),
      ExecutionRoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      VpcConfig = list(
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      ),
      EnableNetworkIsolation = TRUE|FALSE
    )
