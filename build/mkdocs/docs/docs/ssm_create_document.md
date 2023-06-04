<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_create_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Amazon Web Services Systems Manager (SSM document)

### Description

Creates a Amazon Web Services Systems Manager (SSM document). An SSM
document defines the actions that Systems Manager performs on your
managed nodes. For more information about SSM documents, including
information about supported schemas, features, and syntax, see [Amazon
Web Services Systems Manager
Documents](https://docs.aws.amazon.com/systems-manager/latest/userguide/documents.html)
in the *Amazon Web Services Systems Manager User Guide*.

### Usage

    ssm_create_document(Content, Requires, Attachments, Name, DisplayName,
      VersionName, DocumentType, DocumentFormat, TargetType, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_create_document_:_Content">Content</code></td>
<td><p>[required] The content for the new SSM document in JSON or YAML
format. The content of the document must not exceed 64KB. This quota
also includes the content specified for input parameters at runtime. We
recommend storing the contents for your new document in an external JSON
or YAML file and referencing the file in a command.</p>
<p>For examples, see the following topics in the <em>Amazon Web Services
Systems Manager User Guide</em>.</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html">Create
an SSM document (Amazon Web Services API)</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html">Create
an SSM document (Amazon Web Services CLI)</a></p></li>
<li><p><a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/documents-using.html">Create
an SSM document (API)</a></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ssm_create_document_:_Requires">Requires</code></td>
<td><p>A list of SSM documents required by a document. This parameter is
used exclusively by AppConfig. When a user creates an AppConfig
configuration in an SSM document, the user must also specify a required
document for validation purposes. In this case, an
<code>ApplicationConfiguration</code> document requires an
<code>ApplicationConfigurationSchema</code> document for validation
purposes. For more information, see <a
href="https://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html">What
is AppConfig?</a> in the <em>AppConfig User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_document_:_Attachments">Attachments</code></td>
<td><p>A list of key-value pairs that describe attachments to a version
of a document.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_document_:_Name">Name</code></td>
<td><p>[required] A name for the SSM document.</p>
<p>You can't use the following strings as document name prefixes. These
are reserved by Amazon Web Services for use as document name
prefixes:</p>
<ul>
<li><p><code>aws</code></p></li>
<li><p><code>amazon</code></p></li>
<li><p><code>amzn</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_document_:_DisplayName">DisplayName</code></td>
<td><p>An optional field where you can specify a friendly name for the
SSM document. This value can differ for each version of the document.
You can update this value at a later time using the
<code>update_document</code> operation.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_document_:_VersionName">VersionName</code></td>
<td><p>An optional field specifying the version of the artifact you are
creating with the document. For example, <code>Release12.1</code>. This
value is unique across all versions of a document, and can't be
changed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_create_document_:_DocumentType">DocumentType</code></td>
<td><p>The type of document to create.</p>
<p>The <code>DeploymentStrategy</code> document type is an
internal-use-only document type reserved for AppConfig.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_create_document_:_DocumentFormat">DocumentFormat</code></td>
<td><p>Specify the document format for the request. The document format
can be JSON, YAML, or TEXT. JSON is the default format.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_create_document_:_TargetType">TargetType</code></td>
<td><p>Specify a target type to define the kinds of resources the
document can run on. For example, to run a document on EC2 instances,
specify the following value: <code
style="white-space: pre;">⁠/AWS::EC2::Instance⁠</code>. If you specify a
value of '/' the document can run on all types of resources. If you
don't specify a value, the document can't run on any resources. For a
list of valid resource types, see <a
href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon
Web Services resource and property types reference</a> in the
<em>CloudFormation User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_create_document_:_Tags">Tags</code></td>
<td><p>Optional metadata that you assign to a resource. Tags enable you
to categorize a resource in different ways, such as by purpose, owner,
or environment. For example, you might want to tag an SSM document to
identify the types of targets or the environment where it will run. In
this case, you could specify the following key-value pairs:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠Key=OS,Value=Windows⁠</code></p></li>
<li><p><code
style="white-space: pre;">⁠Key=Environment,Value=Production⁠</code></p></li>
</ul>
<p>To add tags to an existing SSM document, use the
<code>add_tags_to_resource</code> operation.</p></td>
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

    svc$create_document(
      Content = "string",
      Requires = list(
        list(
          Name = "string",
          Version = "string",
          RequireType = "string",
          VersionName = "string"
        )
      ),
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
      DocumentType = "Command"|"Policy"|"Automation"|"Session"|"Package"|"ApplicationConfiguration"|"ApplicationConfigurationSchema"|"DeploymentStrategy"|"ChangeCalendar"|"Automation.ChangeTemplate"|"ProblemAnalysis"|"ProblemAnalysisTemplate"|"CloudFormation"|"ConformancePackTemplate"|"QuickSetup",
      DocumentFormat = "YAML"|"JSON"|"TEXT",
      TargetType = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
