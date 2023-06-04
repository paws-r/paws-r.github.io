<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_experience_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists users or groups in your IAM Identity Center identity source that are granted access to your Amazon Kendra experience

### Description

Lists users or groups in your IAM Identity Center identity source that
are granted access to your Amazon Kendra experience. You can create an
Amazon Kendra experience such as a search application. For more
information on creating a search application experience, see [Building a
search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_list_experience_entities(Id, IndexId, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_list_experience_entities_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_experience_entities_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_experience_entities_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
users or groups.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SummaryItems = list(
        list(
          EntityId = "string",
          EntityType = "USER"|"GROUP",
          DisplayData = list(
            UserName = "string",
            GroupName = "string",
            IdentifiedUserName = "string",
            FirstName = "string",
            LastName = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_experience_entities(
      Id = "string",
      IndexId = "string",
      NextToken = "string"
    )
