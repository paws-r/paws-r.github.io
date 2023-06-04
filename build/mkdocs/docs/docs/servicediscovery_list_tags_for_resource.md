<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists tags for the specified resource

### Description

Lists tags for the specified resource.

### Usage

    servicediscovery_list_tags_for_resource(ResourceARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_list_tags_for_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to retrieve tags for.</p></td>
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

### Examples

    ## Not run: 
    # This example lists the tags of a resource.
    svc$list_tags_for_resource(
      ResourceARN = "arn:aws:servicediscovery:us-east-1:123456789012:namespace/ns-ylexjili4cdxy3xm"
    )

    ## End(Not run)
