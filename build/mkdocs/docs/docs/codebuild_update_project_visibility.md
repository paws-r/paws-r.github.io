<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_update_project_visibility</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes the public visibility for a project

### Description

Changes the public visibility for a project. The project's build
results, logs, and artifacts are available to the general public. For
more information, see [Public build
projects](https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html)
in the *CodeBuild User Guide*.

The following should be kept in mind when making your projects public:

-   All of a project's build results, logs, and artifacts, including
    builds that were run when the project was private, are available to
    the general public.

-   All build logs and artifacts are available to the public.
    Environment variables, source code, and other sensitive information
    may have been output to the build logs and artifacts. You must be
    careful about what information is output to the build logs. Some
    best practice are:

    -   Do not store sensitive values, especially Amazon Web Services
        access key IDs and secret access keys, in environment variables.
        We recommend that you use an Amazon EC2 Systems Manager
        Parameter Store or Secrets Manager to store sensitive values.

    -   Follow [Best practices for using
        webhooks](https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices)
        in the *CodeBuild User Guide* to limit which entities can
        trigger a build, and do not store the buildspec in the project
        itself, to ensure that your webhooks are as secure as possible.

-   A malicious user can use public builds to distribute malicious
    artifacts. We recommend that you review all pull requests to verify
    that the pull request is a legitimate change. We also recommend that
    you validate any artifacts with their checksums to make sure that
    the correct artifacts are being downloaded.

### Usage

    codebuild_update_project_visibility(projectArn, projectVisibility,
      resourceAccessRole)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codebuild_update_project_visibility_:_projectArn">projectArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the build
project.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_update_project_visibility_:_projectVisibility">projectVisibility</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_update_project_visibility_:_resourceAccessRole">resourceAccessRole</code></td>
<td><p>The ARN of the IAM role that enables CodeBuild to access the
CloudWatch Logs and Amazon S3 artifacts for the project's
builds.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      projectArn = "string",
      publicProjectAlias = "string",
      projectVisibility = "PUBLIC_READ"|"PRIVATE"
    )

### Request syntax

    svc$update_project_visibility(
      projectArn = "string",
      projectVisibility = "PUBLIC_READ"|"PRIVATE",
      resourceAccessRole = "string"
    )
