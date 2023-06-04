<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_experience</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Kendra experience such as a search application

### Description

Creates an Amazon Kendra experience such as a search application. For
more information on creating a search application experience, including
using the Python and Java SDKs, see [Building a search experience with
no
code](https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html).

### Usage

    kendra_create_experience(Name, IndexId, RoleArn, Configuration,
      Description, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_create_experience_:_Name">Name</code></td>
<td><p>[required] A name for your Amazon Kendra experience.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_experience_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_experience_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role with permission to
access <code>query</code> API, <code>get_query_suggestions</code> API,
and other required APIs. The role also must include permission to access
IAM Identity Center (successor to Single Sign-On) that stores your user
and group information. For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_experience_:_Configuration">Configuration</code></td>
<td><p>Configuration information for your Amazon Kendra experience. This
includes <code>ContentSourceConfiguration</code>, which specifies the
data source IDs and/or FAQ IDs, and
<code>UserIdentityConfiguration</code>, which specifies the user or
group information to grant access to your Amazon Kendra
experience.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_experience_:_Description">Description</code></td>
<td><p>A description for your Amazon Kendra experience.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_experience_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create your
Amazon Kendra experience. Multiple calls to the
<code>create_experience</code> API with the same client token creates
only one Amazon Kendra experience.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_experience(
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
      Description = "string",
      ClientToken = "string"
    )
