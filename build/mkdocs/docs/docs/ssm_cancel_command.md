<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_cancel_command</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attempts to cancel the command specified by the Command ID

### Description

Attempts to cancel the command specified by the Command ID. There is no
guarantee that the command will be terminated and the underlying process
stopped.

### Usage

    ssm_cancel_command(CommandId, InstanceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_cancel_command_:_CommandId">CommandId</code></td>
<td><p>[required] The ID of the command you want to cancel.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_cancel_command_:_InstanceIds">InstanceIds</code></td>
<td><p>(Optional) A list of managed node IDs on which you want to cancel
the command. If not provided, the command is canceled on every node on
which it was requested.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_command(
      CommandId = "string",
      InstanceIds = list(
        "string"
      )
    )
