<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates one or more values for an SSM document

### Description

Updates one or more values for an SSM document.

### Usage

    ssm_update_document(Content, Attachments, Name, DisplayName,
      VersionName, DocumentVersion, DocumentFormat, TargetType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_update_document_:_Content">Content</code></td>
<td><p>[required] A valid JSON or YAML string.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_document_:_Attachments">Attachments</code></td>
<td><p>A list of key-value pairs that describe attachments to a version
of a document.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_document_:_Name">Name</code></td>
<td><p>[required] The name of the SSM document that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_document_:_DisplayName">DisplayName</code></td>
<td><p>The friendly name of the SSM document that you want to update.
This value can differ for each version of the document. If you don't
specify a value for this parameter in your request, the existing value
is applied to the new document version.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_update_document_:_VersionName">VersionName</code></td>
<td><p>An optional field specifying the version of the artifact you are
updating with the document. For example, "Release 12, Update 6". This
value is unique across all versions of a document, and can't be
changed.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_document_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of the document that you want to update. Currently,
Systems Manager supports updating only the latest version of the
document. You can specify the version number of the latest version or
use the <code style="white-space: pre;">⁠$LATEST⁠</code> variable.</p>
<p>If you change a document version for a State Manager association,
Systems Manager immediately runs the association unless you previously
specifed the <code>apply-only-at-cron-interval</code>
parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_update_document_:_DocumentFormat">DocumentFormat</code></td>
<td><p>Specify the document format for the new document version. Systems
Manager supports JSON and YAML documents. JSON is the default
format.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_update_document_:_TargetType">TargetType</code></td>
<td><p>Specify a new target type for the document.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentDescription = list(
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

    svc$update_document(
      Content = "string",
      Attachments = list(
        list(
          Key = "SourceUrl"|"S3FileUrl"|"AttachmentReference",
          Values = list(
            "string"
          ),
          Name = "string"
        )
      ),
      Name = "string",
      DisplayName = "string",
      VersionName = "string",
      DocumentVersion = "string",
      DocumentFormat = "YAML"|"JSON"|"TEXT",
      TargetType = "string"
    )
