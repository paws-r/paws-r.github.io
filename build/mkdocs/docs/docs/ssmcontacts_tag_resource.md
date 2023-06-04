<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tags a contact or escalation plan

### Description

Tags a contact or escalation plan. You can tag only contacts and
escalation plans in the first region of your replication set.

### Usage

    ssmcontacts_tag_resource(ResourceARN, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_tag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags that you are adding to the contact or
escalation plan.</p></td>
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
