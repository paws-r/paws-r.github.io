<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks

### Description

Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks
Stacks. For more information about how tagging works, see
[Tags](https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html)
in the AWS OpsWorks User Guide.

### Usage

    opsworks_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The stack or layer's Amazon Resource Number
(ARN).</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A map that contains tag keys and tag values that are
attached to a stack or layer.</p>
<ul>
<li><p>The key cannot be empty.</p></li>
<li><p>The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>The value can be a maximum 255 characters, and contain only
Unicode letters, numbers, or separators, or the following special
characters: <code
style="white-space: pre;">⁠+ - = . _ : /⁠</code></p></li>
<li><p>Leading and trailing white spaces are trimmed from both the key
and value.</p></li>
<li><p>A maximum of 40 tags is allowed for any resource.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
