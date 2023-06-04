<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tags an Amazon FSx resource

### Description

Tags an Amazon FSx resource.

### Usage

    fsx_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon FSx
resource that you want to tag.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags for the resource. If a tag with a given
key already exists, the value is replaced by the one specified in this
parameter.</p></td>
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
    # This operation tags an Amazon FSx resource.
    svc$tag_resource(
      ResourceARN = "arn:aws:fsx:us-east-1:012345678912:file-system/fs-0498eed5fe91001ec",
      Tags = list(
        list(
          Key = "Name",
          Value = "MyFileSystem"
        )
      )
    )

    ## End(Not run)
