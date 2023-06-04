<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>servicediscovery_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more tags to the specified resource

### Description

Adds one or more tags to the specified resource.

### Usage

    servicediscovery_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="servicediscovery_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to retrieve tags for.</p></td>
</tr>
<tr class="even">
<td><code id="servicediscovery_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to add to the specified resource. Specifying
the tag key is required. You can set the value of a tag to an empty
string, but you can't set the value of a tag to null.</p></td>
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

### Examples

    ## Not run: 
    # This example adds "Department" and "Project" tags to a resource.
    svc$tag_resource(
      ResourceARN = "arn:aws:servicediscovery:us-east-1:123456789012:namespace/...",
      Tags = list(
        list(
          Key = "Department",
          Value = "Engineering"
        ),
        list(
          Key = "Project",
          Value = "Zeta"
        )
      )
    )

    ## End(Not run)
