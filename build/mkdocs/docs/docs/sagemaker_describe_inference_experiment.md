<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_inference_experiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details about an inference experiment

### Description

Returns details about an inference experiment.

### Usage

    sagemaker_describe_inference_experiment(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_inference_experiment_:_Name">Name</code></td>
<td><p>[required] The name of the inference experiment to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
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
      RoleArn = "string",
      EndpointMetadata = list(
        EndpointName = "string",
        EndpointConfigName = "string",
        EndpointStatus = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed",
        FailureReason = "string"
      ),
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
          ),
          Status = "Creating"|"Updating"|"InService"|"Deleting"|"Deleted"
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
      KmsKey = "string"
    )

### Request syntax

    svc$describe_inference_experiment(
      Name = "string"
    )
