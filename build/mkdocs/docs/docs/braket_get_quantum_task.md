<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_get_quantum_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified quantum task

### Description

Retrieves the specified quantum task.

### Usage

    braket_get_quantum_task(quantumTaskArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="braket_get_quantum_task_:_quantumTaskArn">quantumTaskArn</code></td>
<td><p>[required] the ARN of the task to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      createdAt = as.POSIXct(
        "2015-01-01"
      ),
      deviceArn = "string",
      deviceParameters = "string",
      endedAt = as.POSIXct(
        "2015-01-01"
      ),
      failureReason = "string",
      jobArn = "string",
      outputS3Bucket = "string",
      outputS3Directory = "string",
      quantumTaskArn = "string",
      shots = 123,
      status = "CREATED"|"QUEUED"|"RUNNING"|"COMPLETED"|"FAILED"|"CANCELLING"|"CANCELLED",
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_quantum_task(
      quantumTaskArn = "string"
    )
