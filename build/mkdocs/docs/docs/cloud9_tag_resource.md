<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to an Cloud9 development environment

### Description

Adds tags to an Cloud9 development environment.

Tags that you add to an Cloud9 environment by using this method will NOT
be automatically propagated to underlying resources.

### Usage

    cloud9_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloud9_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Cloud9
development environment to add tags to.</p></td>
</tr>
<tr class="even">
<td><code id="cloud9_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The list of tags to add to the given Cloud9
development environment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceARN = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
