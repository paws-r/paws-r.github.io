<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_prompt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the prompt

### Description

Describes the prompt.

### Usage

    connect_describe_prompt(InstanceId, PromptId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_prompt_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_describe_prompt_:_PromptId">PromptId</code></td>
<td><p>[required] A unique identifier for the prompt.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Prompt = list(
        PromptARN = "string",
        PromptId = "string",
        Name = "string",
        Description = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_prompt(
      InstanceId = "string",
      PromptId = "string"
    )
