<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_index</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an existing Amazon Kendra index

### Description

Gets information about an existing Amazon Kendra index.

### Usage

    kendra_describe_index(Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_describe_index_:_Id">Id</code></td>
<td><p>[required] The identifier of the index you want to get
information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Id = "string",
      Edition = "DEVELOPER_EDITION"|"ENTERPRISE_EDITION",
      RoleArn = "string",
      ServerSideEncryptionConfiguration = list(
        KmsKeyId = "string"
      ),
      Status = "CREATING"|"ACTIVE"|"DELETING"|"FAILED"|"UPDATING"|"SYSTEM_UPDATING",
      Description = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      UpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      DocumentMetadataConfigurations = list(
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
      IndexStatistics = list(
        FaqStatistics = list(
          IndexedQuestionAnswersCount = 123
        ),
        TextDocumentStatistics = list(
          IndexedTextDocumentsCount = 123,
          IndexedTextBytes = 123
        )
      ),
      ErrorMessage = "string",
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

### Request syntax

    svc$describe_index(
      Id = "string"
    )
