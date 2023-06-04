<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_hyper_parameter_tuning_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched

### Description

Stops a running hyperparameter tuning job and all running training jobs
that the tuning job launched.

All model artifacts output from the training jobs are stored in Amazon
Simple Storage Service (Amazon S3). All data that the training jobs
write to Amazon CloudWatch Logs are still available in CloudWatch. After
the tuning job moves to the `Stopped` state, it releases all reserved
resources for the tuning job.

### Usage

    sagemaker_stop_hyper_parameter_tuning_job(HyperParameterTuningJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_hyper_parameter_tuning_job_:_HyperParameterTuningJobName">HyperParameterTuningJobName</code></td>
<td><p>[required] The name of the tuning job to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_hyper_parameter_tuning_job(
      HyperParameterTuningJobName = "string"
    )
