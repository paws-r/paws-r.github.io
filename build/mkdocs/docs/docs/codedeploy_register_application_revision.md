<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_register_application_revision</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers with CodeDeploy a revision for the specified application

### Description

Registers with CodeDeploy a revision for the specified application.

### Usage

    codedeploy_register_application_revision(applicationName, description,
      revision)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_register_application_revision_:_applicationName">applicationName</code></td>
<td><p>[required] The name of an CodeDeploy application associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_register_application_revision_:_description">description</code></td>
<td><p>A comment about the revision.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_register_application_revision_:_revision">revision</code></td>
<td><p>[required] Information about the application revision to
register, including type and location.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_application_revision(
      applicationName = "string",
      description = "string",
      revision = list(
        revisionType = "S3"|"GitHub"|"String"|"AppSpecContent",
        s3Location = list(
          bucket = "string",
          key = "string",
          bundleType = "tar"|"tgz"|"zip"|"YAML"|"JSON",
          version = "string",
          eTag = "string"
        ),
        gitHubLocation = list(
          repository = "string",
          commitId = "string"
        ),
        string = list(
          content = "string",
          sha256 = "string"
        ),
        appSpecContent = list(
          content = "string",
          sha256 = "string"
        )
      )
    )
