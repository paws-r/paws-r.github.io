<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_create_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a project, including project resources

### Description

Creates a project, including project resources. This action creates a
project based on a submitted project request. A set of source code files
and a toolchain template file can be included with the project request.
If these are not provided, an empty project is created.

### Usage

    codestar_create_project(name, id, description, clientRequestToken,
      sourceCode, toolchain, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_create_project_:_name">name</code></td>
<td><p>[required] The display name for the project to be created in AWS
CodeStar.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_create_project_:_id">id</code></td>
<td><p>[required] The ID of the project to be created in AWS
CodeStar.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_create_project_:_description">description</code></td>
<td><p>The description of the project, if any.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_create_project_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A user- or system-generated token that identifies the entity that
requested project creation. This token can be used to repeat the
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_create_project_:_sourceCode">sourceCode</code></td>
<td><p>A list of the Code objects submitted with the project request. If
this parameter is specified, the request must also include the toolchain
parameter.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_create_project_:_toolchain">toolchain</code></td>
<td><p>The name of the toolchain template file submitted with the
project request. If this parameter is specified, the request must also
include the sourceCode parameter.</p></td>
</tr>
<tr class="odd">
<td><code id="codestar_create_project_:_tags">tags</code></td>
<td><p>The tags created for the project.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      arn = "string",
      clientRequestToken = "string",
      projectTemplateId = "string"
    )

### Request syntax

    svc$create_project(
      name = "string",
      id = "string",
      description = "string",
      clientRequestToken = "string",
      sourceCode = list(
        list(
          source = list(
            s3 = list(
              bucketName = "string",
              bucketKey = "string"
            )
          ),
          destination = list(
            codeCommit = list(
              name = "string"
            ),
            gitHub = list(
              name = "string",
              description = "string",
              type = "string",
              owner = "string",
              privateRepository = TRUE|FALSE,
              issuesEnabled = TRUE|FALSE,
              token = "string"
            )
          )
        )
      ),
      toolchain = list(
        source = list(
          s3 = list(
            bucketName = "string",
            bucketKey = "string"
          )
        ),
        roleArn = "string",
        stackParameters = list(
          "string"
        )
      ),
      tags = list(
        "string"
      )
    )
