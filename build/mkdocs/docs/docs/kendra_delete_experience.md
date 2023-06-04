<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_delete_experience</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes your Amazon Kendra experience such as a search application

### Description

Deletes your Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
[Building a search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_delete_experience(Id, IndexId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_delete_experience_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra experience you
want to delete.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_delete_experience_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_experience(
      Id = "string",
      IndexId = "string"
    )
