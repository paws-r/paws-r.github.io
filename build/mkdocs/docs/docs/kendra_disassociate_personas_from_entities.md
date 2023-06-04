<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_disassociate_personas_from_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specific permissions of users or groups in your IAM Identity Center identity source with access to your Amazon Kendra experience

### Description

Removes the specific permissions of users or groups in your IAM Identity
Center identity source with access to your Amazon Kendra experience. You
can create an Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
[Building a search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_disassociate_personas_from_entities(Id, IndexId, EntityIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_disassociate_personas_from_entities_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_disassociate_personas_from_entities_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_disassociate_personas_from_entities_:_EntityIds">EntityIds</code></td>
<td><p>[required] The identifiers of users or groups in your IAM
Identity Center identity source. For example, user IDs could be user
emails.</p></td>
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

    svc$disassociate_personas_from_entities(
      Id = "string",
      IndexId = "string",
      EntityIds = list(
        "string"
      )
    )
