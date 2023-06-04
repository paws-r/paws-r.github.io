<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_entity_personas</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists specific permissions of users and groups with access to your Amazon Kendra experience

### Description

Lists specific permissions of users and groups with access to your
Amazon Kendra experience.

### Usage

    kendra_list_entity_personas(Id, IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_entity_personas_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_list_entity_personas_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_entity_personas_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
users or groups.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_entity_personas_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of returned users or groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SummaryItems = list(
        list(
          EntityId = "string",
          Persona = "OWNER"|"VIEWER",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_entity_personas(
      Id = "string",
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
