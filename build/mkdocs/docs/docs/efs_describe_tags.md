<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## DEPRECATED - The DescribeTags action is deprecated and not maintained

### Description

DEPRECATED - The `describe_tags` action is deprecated and not
maintained. To view tags associated with EFS resources, use the
`list_tags_for_resource` API action.

Returns the tags associated with a file system. The order of tags
returned in the response of one `describe_tags` call and the order of
tags returned across the responses of a multiple-call iteration (when
using pagination) is unspecified.

This operation requires permissions for the
`elasticfilesystem:DescribeTags` action.

### Usage

    efs_describe_tags(MaxItems, Marker, FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_describe_tags_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of file system tags to return in
the response. Currently, this number is automatically set to 100, and
other values are ignored. The response is paginated at 100 per page if
you have more than 100 tags.</p></td>
</tr>
<tr class="even">
<td><code id="efs_describe_tags_:_Marker">Marker</code></td>
<td><p>(Optional) An opaque pagination token returned from a previous
<code>describe_tags</code> operation (String). If present, it specifies
to continue the list from where the previous call left off.</p></td>
</tr>
<tr class="odd">
<td><code id="efs_describe_tags_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system whose tag set you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_tags(
      MaxItems = 123,
      Marker = "string",
      FileSystemId = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of a file system's tags.
    svc$describe_tags(
      FileSystemId = "fs-01234567"
    )

    ## End(Not run)
