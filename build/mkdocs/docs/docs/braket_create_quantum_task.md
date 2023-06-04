<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_create_quantum_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a quantum task

### Description

Creates a quantum task.

### Usage

    braket_create_quantum_task(action, clientToken, deviceArn,
      deviceParameters, jobToken, outputS3Bucket, outputS3KeyPrefix, shots,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="braket_create_quantum_task_:_action">action</code></td>
<td><p>[required] The action associated with the task.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_create_quantum_task_:_clientToken">clientToken</code></td>
<td><p>[required] The client token associated with the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_quantum_task_:_deviceArn">deviceArn</code></td>
<td><p>[required] The ARN of the device to run the task on.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_create_quantum_task_:_deviceParameters">deviceParameters</code></td>
<td><p>The parameters for the device to run the task on.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_quantum_task_:_jobToken">jobToken</code></td>
<td><p>The token for an Amazon Braket job that associates it with the
quantum task.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_create_quantum_task_:_outputS3Bucket">outputS3Bucket</code></td>
<td><p>[required] The S3 bucket to store task result files in.</p></td>
</tr>
<tr class="odd">
<td><code
id="braket_create_quantum_task_:_outputS3KeyPrefix">outputS3KeyPrefix</code></td>
<td><p>[required] The key prefix for the location in the S3 bucket to
store task results in.</p></td>
</tr>
<tr class="even">
<td><code id="braket_create_quantum_task_:_shots">shots</code></td>
<td><p>[required] The number of shots to use for the task.</p></td>
</tr>
<tr class="odd">
<td><code id="braket_create_quantum_task_:_tags">tags</code></td>
<td><p>Tags to be added to the quantum task you're creating.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      quantumTaskArn = "string"
    )

### Request syntax

    svc$create_quantum_task(
      action = "string",
      clientToken = "string",
      deviceArn = "string",
      deviceParameters = "string",
      jobToken = "string",
      outputS3Bucket = "string",
      outputS3KeyPrefix = "string",
      shots = 123,
      tags = list(
        "string"
      )
    )
