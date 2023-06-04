<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_prompt</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a prompt

### Description

Updates a prompt.

### Usage

    connect_update_prompt(InstanceId, PromptId, Name, Description, S3Uri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_update_prompt_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_update_prompt_:_PromptId">PromptId</code></td>
<td><p>[required] A unique identifier for the prompt.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_prompt_:_Name">Name</code></td>
<td><p>The name of the prompt.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_prompt_:_Description">Description</code></td>
<td><p>A description of the prompt.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_prompt_:_S3Uri">S3Uri</code></td>
<td><p>The URI for the S3 bucket where the prompt is stored.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PromptARN = "string",
      PromptId = "string"
    )

### Request syntax

    svc$update_prompt(
      InstanceId = "string",
      PromptId = "string",
      Name = "string",
      Description = "string",
      S3Uri = "string"
    )
