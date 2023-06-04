<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>braket_cancel_quantum_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified task

### Description

Cancels the specified task.

### Usage

    braket_cancel_quantum_task(clientToken, quantumTaskArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="braket_cancel_quantum_task_:_clientToken">clientToken</code></td>
<td><p>[required] The client token associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="braket_cancel_quantum_task_:_quantumTaskArn">quantumTaskArn</code></td>
<td><p>[required] The ARN of the task to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      cancellationStatus = "CANCELLING"|"CANCELLED",
      quantumTaskArn = "string"
    )

### Request syntax

    svc$cancel_quantum_task(
      clientToken = "string",
      quantumTaskArn = "string"
    )
