<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_associate_personas_to_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Defines the specific permissions of users or groups in your IAM Identity Center identity source with access to your Amazon Kendra experience

### Description

Defines the specific permissions of users or groups in your IAM Identity
Center identity source with access to your Amazon Kendra experience. You
can create an Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
[Building a search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_associate_personas_to_entities(Id, IndexId, Personas)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_associate_personas_to_entities_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_associate_personas_to_entities_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_associate_personas_to_entities_:_Personas">Personas</code></td>
<td><p>[required] The personas that define the specific permissions of
users or groups in your IAM Identity Center identity source. The
available personas or access roles are <code>Owner</code> and
<code>Viewer</code>. For more information on these personas, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html#access-search-experience">Providing
access to your search page</a>.</p></td>
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

    svc$associate_personas_to_entities(
      Id = "string",
      IndexId = "string",
      Personas = list(
        list(
          EntityId = "string",
          Persona = "OWNER"|"VIEWER"
        )
      )
    )
