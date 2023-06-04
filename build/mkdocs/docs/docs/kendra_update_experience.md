<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_experience</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates your Amazon Kendra experience such as a search application

### Description

Updates your Amazon Kendra experience such as a search application. For
more information on creating a search application experience, see
[Building a search experience with no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_update_experience(Id, Name, IndexId, RoleArn, Configuration,
      Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_update_experience_:_Id">Id</code></td>
<td><p>[required] The identifier of your Amazon Kendra experience you
want to update.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_update_experience_:_Name">Name</code></td>
<td><p>A new name for your Amazon Kendra experience.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_update_experience_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_update_experience_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a role with permission to
access <code>query</code> API, <code>QuerySuggestions</code> API,
<code>submit_feedback</code> API, and IAM Identity Center that stores
your user and group information. For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_experience_:_Configuration">Configuration</code></td>
<td><p>Configuration information you want to update for your Amazon
Kendra experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_experience_:_Description">Description</code></td>
<td><p>A new description for your Amazon Kendra experience.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_experience(
      Id = "string",
      Name = "string",
      IndexId = "string",
      RoleArn = "string",
      Configuration = list(
        ContentSourceConfiguration = list(
          DataSourceIds = list(
            "string"
          ),
          FaqIds = list(
            "string"
          ),
          DirectPutContent = TRUE|FALSE
        ),
        UserIdentityConfiguration = list(
          IdentityAttributeName = "string"
        )
      ),
      Description = "string"
    )
