<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of tags associated with a resource

### Description

Returns a list of tags associated with a resource.

### Usage

    securityhub_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the resource to retrieve tags for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )

### Examples

    ## Not run: 
    # The following example returns a list of tags associated with the
    # specified resource.
    svc$list_tags_for_resource(
      ResourceArn = "arn:aws:securityhub:us-west-1:123456789012:hub/default"
    )

    ## End(Not run)
