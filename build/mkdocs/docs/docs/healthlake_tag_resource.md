<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a user specifed key and value tag to a Data Store

### Description

Adds a user specifed key and value tag to a Data Store.

### Usage

    healthlake_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name(ARN)that gives Amazon
HealthLake access to the Data Store which tags are being added
to.</p></td>
</tr>
<tr class="even">
<td><code id="healthlake_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The user specified key and value pair tags being added
to a Data Store.</p></td>
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
