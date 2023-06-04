<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_associate_entities_to_experience</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Grants users or groups in your IAM Identity Center identity source access to your Amazon Kendra experience

### Description

Grants users or groups in your IAM Identity Center identity source
access to your Amazon Kendra experience. You can create an Amazon Kendra
experience such as a search application. For more information on
creating a search application experience, see [Building a search
experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_associate_entities_to_experience(Id, IndexId, EntityList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_associate_entities_to_experience_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_associate_entities_to_experience_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_associate_entities_to_experience_:_EntityList">EntityList</code></td>
<td><p>[required] Lists users or groups in your IAM Identity Center
identity source.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedEntityList = list(
        list(
          EntityId = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$associate_entities_to_experience(
      Id = "string",
      IndexId = "string",
      EntityList = list(
        list(
          EntityId = "string",
          EntityType = "USER"|"GROUP"
        )
      )
    )
