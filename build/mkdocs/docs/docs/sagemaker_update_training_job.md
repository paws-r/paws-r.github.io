<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_training_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a model training job to request a new Debugger profiling configuration or to change warm pool retention length

### Description

Update a model training job to request a new Debugger profiling
configuration or to change warm pool retention length.

### Usage

    sagemaker_update_training_job(TrainingJobName, ProfilerConfig,
      ProfilerRuleConfigurations, ResourceConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_training_job_:_TrainingJobName">TrainingJobName</code></td>
<td><p>[required] The name of a training job to update the Debugger
profiling configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_training_job_:_ProfilerConfig">ProfilerConfig</code></td>
<td><p>Configuration information for Amazon SageMaker Debugger system
monitoring, framework profiling, and storage paths.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_training_job_:_ProfilerRuleConfigurations">ProfilerRuleConfigurations</code></td>
<td><p>Configuration information for Amazon SageMaker Debugger rules for
profiling system and framework metrics.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_training_job_:_ResourceConfig">ResourceConfig</code></td>
<td><p>The training job <code>ResourceConfig</code> to update warm pool
retention length.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrainingJobArn = "string"
    )

### Request syntax

    svc$update_training_job(
      TrainingJobName = "string",
      ProfilerConfig = list(
        S3OutputPath = "string",
        ProfilingIntervalInMilliseconds = 123,
        ProfilingParameters = list(
          "string"
        ),
        DisableProfiler = TRUE|FALSE
      ),
      ProfilerRuleConfigurations = list(
        list(
          RuleConfigurationName = "string",
          LocalPath = "string",
          S3OutputPath = "string",
          RuleEvaluatorImage = "string",
          InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
          VolumeSizeInGB = 123,
          RuleParameters = list(
            "string"
          )
        )
      ),
      ResourceConfig = list(
        KeepAlivePeriodInSeconds = 123
      )
    )
