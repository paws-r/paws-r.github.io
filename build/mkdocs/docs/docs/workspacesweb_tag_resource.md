<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspacesweb_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or overwrites one or more tags for the specified resource

### Description

Adds or overwrites one or more tags for the specified resource.

### Usage

    workspacesweb_tag_resource(clientToken, resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspacesweb_tag_resource_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
returns the result from the original successful request.</p>
<p>If you do not specify a client token, one is automatically generated
by the AWS SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="workspacesweb_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
<tr class="odd">
<td><code id="workspacesweb_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags of the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      clientToken = "string",
      resourceArn = "string",
      tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
