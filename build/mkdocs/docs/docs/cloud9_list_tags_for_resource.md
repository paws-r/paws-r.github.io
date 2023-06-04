<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloud9_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the tags associated with an Cloud9 development environment

### Description

Gets a list of the tags associated with an Cloud9 development
environment.

### Usage

    cloud9_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloud9_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Cloud9
development environment to get the tags for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceARN = "string"
    )
