<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_inference_recommendations_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a recommendation job

### Description

Starts a recommendation job. You can create either an instance
recommendation or load test job.

### Usage

    sagemaker_create_inference_recommendations_job(JobName, JobType,
      RoleArn, InputConfig, JobDescription, StoppingConditions, OutputConfig,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_inference_recommendations_job_:_JobName">JobName</code></td>
<td><p>[required] A name for the recommendation job. The name must be
unique within the Amazon Web Services Region and within your Amazon Web
Services account. The job name is passed down to the resources created
by the recommendation job. The names of resources (such as the model,
endpoint configuration, endpoint, and compilation) that are prefixed
with the job name are truncated at 40 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_recommendations_job_:_JobType">JobType</code></td>
<td><p>[required] Defines the type of recommendation job. Specify
<code>Default</code> to initiate an instance recommendation and
<code>Advanced</code> to initiate a load test. If left unspecified,
Amazon SageMaker Inference Recommender will run an instance
recommendation (<code>DEFAULT</code>) job.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_recommendations_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
enables Amazon SageMaker to perform tasks on your behalf.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_recommendations_job_:_InputConfig">InputConfig</code></td>
<td><p>[required] Provides information about the versioned model package
Amazon Resource Name (ARN), the traffic pattern, and endpoint
configurations.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_recommendations_job_:_JobDescription">JobDescription</code></td>
<td><p>Description of the recommendation job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_recommendations_job_:_StoppingConditions">StoppingConditions</code></td>
<td><p>A set of conditions for stopping a recommendation job. If any of
the conditions are met, the job is automatically stopped.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_inference_recommendations_job_:_OutputConfig">OutputConfig</code></td>
<td><p>Provides information about the output artifacts and the KMS key
to use for Amazon S3 server-side encryption.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_inference_recommendations_job_:_Tags">Tags</code></td>
<td><p>The metadata that you apply to Amazon Web Services resources to
help you categorize and organize them. Each tag consists of a key and a
value, both of which you define. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a> in the Amazon Web Services General
Reference.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobArn = "string"
    )

### Request syntax

    svc$create_inference_recommendations_job(
      JobName = "string",
      JobType = "Default"|"Advanced",
      RoleArn = "string",
      InputConfig = list(
        ModelPackageVersionArn = "string",
        JobDurationInSeconds = 123,
        TrafficPattern = list(
          TrafficType = "PHASES",
          Phases = list(
            list(
              InitialNumberOfUsers = 123,
              SpawnRate = 123,
              DurationInSeconds = 123
            )
          )
        ),
        ResourceLimit = list(
          MaxNumberOfTests = 123,
          MaxParallelOfTests = 123
        ),
        EndpointConfigurations = list(
          list(
            InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
            InferenceSpecificationName = "string",
            EnvironmentParameterRanges = list(
              CategoricalParameterRanges = list(
                list(
                  Name = "string",
                  Value = list(
                    "string"
                  )
                )
              )
            )
          )
        ),
        VolumeKmsKeyId = "string",
        ContainerConfig = list(
          Domain = "string",
          Task = "string",
          Framework = "string",
          FrameworkVersion = "string",
          PayloadConfig = list(
            SamplePayloadUrl = "string",
            SupportedContentTypes = list(
              "string"
            )
          ),
          NearestModelName = "string",
          SupportedInstanceTypes = list(
            "string"
          ),
          DataInputConfig = "string"
        ),
        Endpoints = list(
          list(
            EndpointName = "string"
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
        ModelName = "string"
      ),
      JobDescription = "string",
      StoppingConditions = list(
        MaxInvocations = 123,
        ModelLatencyThresholds = list(
          list(
            Percentile = "string",
            ValueInMilliseconds = 123
          )
        )
      ),
      OutputConfig = list(
        KmsKeyId = "string",
        CompiledOutputConfig = list(
          S3OutputUri = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
