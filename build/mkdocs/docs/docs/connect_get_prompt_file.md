<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_prompt_file</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the prompt file

### Description

Gets the prompt file.

### Usage

    connect_get_prompt_file(InstanceId, PromptId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_prompt_file_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_get_prompt_file_:_PromptId">PromptId</code></td>
<td><p>[required] A unique identifier for the prompt.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PromptPresignedUrl = "string"
    )

### Request syntax

    svc$get_prompt_file(
      InstanceId = "string",
      PromptId = "string"
    )
