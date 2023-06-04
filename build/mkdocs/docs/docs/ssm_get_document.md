<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_get_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the contents of the specified Amazon Web Services Systems Manager document (SSM document)

### Description

Gets the contents of the specified Amazon Web Services Systems Manager
document (SSM document).

### Usage

    ssm_get_document(Name, VersionName, DocumentVersion, DocumentFormat)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_get_document_:_Name">Name</code></td>
<td><p>[required] The name of the SSM document.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_get_document_:_VersionName">VersionName</code></td>
<td><p>An optional field specifying the version of the artifact
associated with the document. For example, "Release 12, Update 6". This
value is unique across all versions of a document and can't be
changed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_get_document_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The document version for which you want information.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_get_document_:_DocumentFormat">DocumentFormat</code></td>
<td><p>Returns the document in the specified format. The document format
can be either JSON or YAML. JSON is the default format.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      DisplayName = "string",
      VersionName = "string",
      DocumentVersion = "string",
      Status = "Creating"|"Active"|"Updating"|"Deleting"|"Failed",
      StatusInformation = "string",
      Content = "string",
      DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar"|"Automation.ChangeTemplate"|"ProblemAnalysis"|"ProblemAnalysisTemplate"|"CloudFormation"|"ConformancePackTemplate"|"QuickSetup",
      DocumentFormat = "YAML"|"JSON"|"TEXT",
      Requires = list(
        list(
          Name = "string",
          Version = "string",
          RequireType = "string",
          VersionName = "string"
        )
      ),
      AttachmentsContent = list(
        list(
          Name = "string",
          Size = 123,
          Hash = "string",
          HashType = "Sha256",
          Url = "string"
        )
      ),
      ReviewStatus = "APPROVED"|"NOT_REVIEWED"|"PENDING"|"REJECTED"
    )

### Request syntax

    svc$get_document(
      Name = "string",
      VersionName = "string",
      DocumentVersion = "string",
      DocumentFormat = "YAML"|"JSON"|"TEXT"
    )
