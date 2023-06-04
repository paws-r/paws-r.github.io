<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_list_tags</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the tags for the trail, event data store, or channel in the current region

### Description

Lists the tags for the trail, event data store, or channel in the
current region.

### Usage

    cloudtrail_list_tags(ResourceIdList, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_list_tags_:_ResourceIdList">ResourceIdList</code></td>
<td><p>[required] Specifies a list of trail, event data store, or
channel ARNs whose tags will be listed. The list has a limit of 20
ARNs.</p></td>
</tr>
<tr class="even">
<td><code id="cloudtrail_list_tags_:_NextToken">NextToken</code></td>
<td><p>Reserved for future use.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceTagList = list(
        list(
          ResourceId = "string",
          TagsList = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags(
      ResourceIdList = list(
        "string"
      ),
      NextToken = "string"
    )
