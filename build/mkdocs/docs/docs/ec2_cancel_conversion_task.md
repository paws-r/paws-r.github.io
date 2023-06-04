<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_cancel_conversion_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an active conversion task

### Description

Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.

For more information, see [Importing a Virtual Machine Using the Amazon
EC2 CLI](http://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf).

### Usage

    ec2_cancel_conversion_task(ConversionTaskId, DryRun, ReasonMessage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_cancel_conversion_task_:_ConversionTaskId">ConversionTaskId</code></td>
<td><p>[required] The ID of the conversion task.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_cancel_conversion_task_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_cancel_conversion_task_:_ReasonMessage">ReasonMessage</code></td>
<td><p>The reason for canceling the conversion task.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_conversion_task(
      ConversionTaskId = "string",
      DryRun = TRUE|FALSE,
      ReasonMessage = "string"
    )
