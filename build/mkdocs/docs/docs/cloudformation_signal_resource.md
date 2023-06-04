<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_signal_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a signal to the specified resource with a success or failure status

### Description

Sends a signal to the specified resource with a success or failure
status. You can use the `signal_resource` operation in conjunction with
a creation policy or update policy. CloudFormation doesn't proceed with
a stack creation or update until resources receive the required number
of signals or the timeout period is exceeded. The `signal_resource`
operation is useful in cases where you want to send signals from
anywhere other than an Amazon EC2 instance.

### Usage

    cloudformation_signal_resource(StackName, LogicalResourceId, UniqueId,
      Status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_signal_resource_:_StackName">StackName</code></td>
<td><p>[required] The stack name or unique stack ID that includes the
resource that you want to signal.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_signal_resource_:_LogicalResourceId">LogicalResourceId</code></td>
<td><p>[required] The logical ID of the resource that you want to
signal. The logical ID is the name of the resource that given in the
template.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_signal_resource_:_UniqueId">UniqueId</code></td>
<td><p>[required] A unique ID of the signal. When you signal Amazon EC2
instances or Auto Scaling groups, specify the instance ID that you are
signaling as the unique ID. If you send multiple signals to a single
resource (such as signaling a wait condition), each signal requires a
different unique ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_signal_resource_:_Status">Status</code></td>
<td><p>[required] The status of the signal, which is either success or
failure. A failure signal causes CloudFormation to immediately fail the
stack creation or update.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$signal_resource(
      StackName = "string",
      LogicalResourceId = "string",
      UniqueId = "string",
      Status = "SUCCESS"|"FAILURE"
    )
