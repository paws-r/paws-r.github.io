<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_inference_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an inference experiment that you created

### Description

Updates an inference experiment that you created. The status of the
inference experiment has to be either `Created`, `Running`. For more
information on the status of an inference experiment, see
`describe_inference_experiment`.

### Usage

    sagemaker_update_inference_experiment(Name, Schedule, Description,
      ModelVariants, DataStorageConfig, ShadowModeConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_inference_experiment_:_Name">Name</code></td>
<td><p>[required] The name of the inference experiment to be
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_inference_experiment_:_Schedule">Schedule</code></td>
<td><p>The duration for which the inference experiment will run. If the
status of the inference experiment is <code>Created</code>, then you can
update both the start and end dates. If the status of the inference
experiment is <code>Running</code>, then you can update only the end
date.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_inference_experiment_:_Description">Description</code></td>
<td><p>The description of the inference experiment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_inference_experiment_:_ModelVariants">ModelVariants</code></td>
<td><p>An array of <code>ModelVariantConfig</code> objects. There is one
for each variant, whose infrastructure configuration you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_inference_experiment_:_DataStorageConfig">DataStorageConfig</code></td>
<td><p>The Amazon S3 location and configuration for storing inference
request and response data.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_inference_experiment_:_ShadowModeConfig">ShadowModeConfig</code></td>
<td><p>The configuration of <code>ShadowMode</code> inference experiment
type. Use this field to specify a production variant which takes all the
inference requests, and a shadow variant to which Amazon SageMaker
replicates a percentage of the inference requests. For the shadow
variant also specify the percentage of requests that Amazon SageMaker
replicates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InferenceExperimentArn = "string"
    )

### Request syntax

    svc$update_inference_experiment(
      Name = "string",
      Schedule = list(
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      Description = "string",
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
      )
    )
