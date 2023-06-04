<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified Amazon Web Services Systems Manager document (SSM document)

### Description

Describes the specified Amazon Web Services Systems Manager document
(SSM document).

### Usage

    ssm_describe_document(Name, DocumentVersion, VersionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_describe_document_:_Name">Name</code></td>
<td><p>[required] The name of the SSM document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_document_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The document version for which you want information. Can be a
specific version or the default version.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_document_:_VersionName">VersionName</code></td>
<td><p>An optional field specifying the version of the artifact
associated with the document. For example, "Release 12, Update 6". This
value is unique across all versions of a document, and can't be
changed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Document = list(
        Sha1 = "string",
        Hash = "string",
        HashType = "Sha256"|"Sha1",
        Name = "string",
        DisplayName = "string",
        VersionName = "string",
        Owner = "string",
        CreatedDate = as.POSIXct(
          "2015-01-01"
        ),
        Status = "Creating"|"Active"|"Updating"|"Deleting"|"Failed",
        StatusInformation = "string",
        DocumentVersion = "string",
        Description = "string",
        Parameters = list(
          list(
            Name = "string",
            Type = "String"|"StringList",
            Description = "string",
            DefaultValue = "string"
          )
        ),
        PlatformTypes = list(
          "Windows"|"Linux"|"MacOS"
        ),
        DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar"|"Automation.ChangeTemplate"|"ProblemAnalysis"|"ProblemAnalysisTemplate"|"CloudFormation"|"ConformancePackTemplate"|"QuickSetup",
        SchemaVersion = "string",
        LatestVersion = "string",
        DefaultVersion = "string",
        DocumentFormat = "YAML"|"JSON"|"TEXT",
        TargetType = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        AttachmentsInformation = list(
          list(
            Name = "string"
          )
        ),
        Requires = list(
          list(
            Name = "string",
            Version = "string",
            RequireType = "string",
            VersionName = "string"
          )
        ),
        Author = "string",
        ReviewInformation = list(
          list(
            ReviewedTime = as.POSIXct(
              "2015-01-01"
            ),
            Status = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED",
            Reviewer = "string"
          )
        ),
        ApprovedVersion = "string",
        PendingReviewVersion = "string",
        ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED",
        Category = list(
          "string"
        ),
        CategoryEnum = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_document(
      Name = "string",
      DocumentVersion = "string",
      VersionName = "string"
    )
