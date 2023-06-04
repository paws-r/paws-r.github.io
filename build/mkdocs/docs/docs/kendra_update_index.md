<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing Amazon Kendra index

### Description

Updates an existing Amazon Kendra index.

### Usage

    kendra_update_index(Id, Name, RoleArn, Description,
      DocumentMetadataConfigurationUpdates, CapacityUnits,
      UserTokenConfigurations, UserContextPolicy,
      UserGroupResolutionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_update_index_:_Id">Id</code></td>
<td><p>[required] The identifier of the index you want to
update.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_update_index_:_Name">Name</code></td>
<td><p>The name of the index you want to update.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_update_index_:_RoleArn">RoleArn</code></td>
<td><p>An Identity and Access Management (IAM) role that gives Amazon
Kendra permission to access Amazon CloudWatch logs and metrics.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_update_index_:_Description">Description</code></td>
<td><p>A new description for the index.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_index_:_DocumentMetadataConfigurationUpdates">DocumentMetadataConfigurationUpdates</code></td>
<td><p>The document metadata configuration you want to update for the
index. Document metadata are fields or attributes associated with your
documents. For example, the company department name associated with each
document.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_index_:_CapacityUnits">CapacityUnits</code></td>
<td><p>Sets the number of additional document storage and query capacity
units that should be used by the index. You can change the capacity of
the index up to 5 times per day, or make 5 API calls.</p>
<p>If you are using extra storage units, you can't reduce the storage
capacity below what is required to meet the storage needs for your
index.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_index_:_UserTokenConfigurations">UserTokenConfigurations</code></td>
<td><p>The user token configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_index_:_UserContextPolicy">UserContextPolicy</code></td>
<td><p>The user context policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_index_:_UserGroupResolutionConfiguration">UserGroupResolutionConfiguration</code></td>
<td><p>Enables fetching access levels of groups and users from an IAM
Identity Center (successor to Single Sign-On) identity source. To
configure this, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_UserGroupResolutionConfiguration.html">UserGroupResolutionConfiguration</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_index(
      Id = "string",
      Name = "string",
      RoleArn = "string",
      Description = "string",
      DocumentMetadataConfigurationUpdates = list(
        list(
          Name = "string",
          Type = "STRING_VALUE"|"STRING_LIST_VALUE"|"LONG_VALUE"|"DATE_VALUE",
          Relevance = list(
            Freshness = TRUE|FALSE,
            Importance = 123,
            Duration = "string",
            RankOrder = "ASCENDING"|"DESCENDING",
            ValueImportanceMap = list(
              123
            )
          ),
          Search = list(
            Facetable = TRUE|FALSE,
            Searchable = TRUE|FALSE,
            Displayable = TRUE|FALSE,
            Sortable = TRUE|FALSE
          )
        )
      ),
      CapacityUnits = list(
        StorageCapacityUnits = 123,
        QueryCapacityUnits = 123
      ),
      UserTokenConfigurations = list(
        list(
          JwtTokenTypeConfiguration = list(
            KeyLocation = "URL"|"SECRET_MANAGER",
            URL = "string",
            SecretManagerArn = "string",
            UserNameAttributeField = "string",
            GroupAttributeField = "string",
            Issuer = "string",
            ClaimRegex = "string"
          ),
          JsonTokenTypeConfiguration = list(
            UserNameAttributeField = "string",
            GroupAttributeField = "string"
          )
        )
      ),
      UserContextPolicy = "ATTRIBUTE_FILTER"|"USER_TOKEN",
      UserGroupResolutionConfiguration = list(
        UserGroupResolutionMode = "AWS_SSO"|"NONE"
      )
    )
