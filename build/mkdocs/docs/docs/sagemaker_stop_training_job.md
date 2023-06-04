<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_training_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a training job

### Description

Stops a training job. To stop a job, SageMaker sends the algorithm the
`SIGTERM` signal, which delays job termination for 120 seconds.
Algorithms might use this 120-second window to save the model artifacts,
so the results of the training is not lost.

When it receives a `stop_training_job` request, SageMaker changes the
status of the job to `Stopping`. After SageMaker stops the job, it sets
the status to `Stopped`.

### Usage

    sagemaker_stop_training_job(TrainingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_training_job_:_TrainingJobName">TrainingJobName</code></td>
<td><p>[required] The name of the training job to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_training_job(
      TrainingJobName = "string"
    )
