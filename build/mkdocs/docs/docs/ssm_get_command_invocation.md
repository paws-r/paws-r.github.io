<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_command_invocation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns detailed information about command execution for an invocation or plugin

### Description

Returns detailed information about command execution for an invocation
or plugin.

`get_command_invocation` only gives the execution status of a plugin in
a document. To get the command execution status on a specific managed
node, use `list_command_invocations`. To get the command execution
status across managed nodes, use `list_commands`.

### Usage

    ssm_get_command_invocation(CommandId, InstanceId, PluginName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_get_command_invocation_:_CommandId">CommandId</code></td>
<td><p>[required] (Required) The parent command ID of the invocation
plugin.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_command_invocation_:_InstanceId">InstanceId</code></td>
<td><p>[required] (Required) The ID of the managed node targeted by the
command. A <em>managed node</em> can be an Amazon Elastic Compute Cloud
(Amazon EC2) instance, edge device, and on-premises server or VM in your
hybrid environment that is configured for Amazon Web Services Systems
Manager.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_command_invocation_:_PluginName">PluginName</code></td>
<td><p>The name of the step for which you want detailed results. If the
document contains only one step, you can omit the name and details for
that step. If the document contains more than one step, you must specify
the name of the step for which you want to view details. Be sure to
specify the name of the step, not the name of a plugin like
<code>aws:RunShellScript</code>.</p>
<p>To find the <code>PluginName</code>, check the document content and
find the name of the step you want details for. Alternatively, use
<code>list_command_invocations</code> with the <code>CommandId</code>
and <code>Details</code> parameters. The <code>PluginName</code> is the
<code>Name</code> attribute of the <code>CommandPlugin</code> object in
the <code>CommandPlugins</code> list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CommandId = "string",
      InstanceId = "string",
      Comment = "string",
      DocumentName = "string",
      DocumentVersion = "string",
      PluginName = "string",
      ResponseCode = 123,
      ExecutionStartDateTime = "string",
      ExecutionElapsedTime = "string",
      ExecutionEndDateTime = "string",
      Status = "Pending"|"InProgress"|"Delayed"|"Success"|"Cancelled"|"TimedOut"|"Failed"|"Cancelling",
      StatusDetails = "string",
      StandardOutputContent = "string",
      StandardOutputUrl = "string",
      StandardErrorContent = "string",
      StandardErrorUrl = "string",
      CloudWatchOutputConfig = list(
        CloudWatchLogGroupName = "string",
        CloudWatchOutputEnabled = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_command_invocation(
      CommandId = "string",
      InstanceId = "string",
      PluginName = "string"
    )
